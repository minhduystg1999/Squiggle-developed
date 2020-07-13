﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Timers;
using Squiggle.Core.Presence.Transport;
using Squiggle.Core.Presence.Transport.Messages;
using Squiggle.Utilities;

namespace Squiggle.Core.Presence
{
    class KeepAliveEventArgs: EventArgs
    {
        public SquiggleEndPoint User { get; set; }
    }

    class KeepAliveService : IDisposable
    {
        Timer timer;
        PresenceChannel channel;
        TimeSpan keepAliveSyncTime;
        Message keepAliveMessage;
        Dictionary<IUserInfo, DateTime> aliveUsers;
        DateTime lastKeepAliveMessage;

        public event EventHandler<KeepAliveEventArgs> UserLost = delegate { };
        public event EventHandler<KeepAliveEventArgs> UserLosing = delegate { };
        public event EventHandler<KeepAliveEventArgs> UserDiscovered = delegate { };

        public KeepAliveService(PresenceChannel channel, IUserInfo user, TimeSpan keepAliveSyncTime)
        {
            this.channel = channel;
            this.keepAliveSyncTime = keepAliveSyncTime;
            keepAliveMessage = Message.FromSender<KeepAliveMessage>(user);
            aliveUsers = new Dictionary<IUserInfo, DateTime>();
        }

        public void Start()
        {
            this.timer = new Timer();
            timer.Interval = keepAliveSyncTime.TotalMilliseconds;
            this.timer.Elapsed += timer_Elapsed;
            this.timer.Start();
            channel.MessageReceived += channel_MessageReceived;
        }

        void channel_MessageReceived(object sender, MessageReceivedEventArgs e)
        {
            if (e.Message is KeepAliveMessage)
                OnKeepAliveMessage((KeepAliveMessage)e.Message);
        }        

        public void MonitorUser(IUserInfo user)
        {
            HeIsAlive(user);
        }

        public void LeaveUser(IUserInfo user)
        {
            HeIsGone(user);
        }

        public void HeIsGone(IUserInfo user)
        {
            lock (aliveUsers)
                aliveUsers.Remove(user);
        }

        public void HeIsAlive(IUserInfo user)
        {
            lock (aliveUsers)
                aliveUsers[user] = DateTime.Now;   
        }

        public void Stop()
        {
            channel.MessageReceived -= channel_MessageReceived;

            lock (aliveUsers)
                aliveUsers.Clear();

            timer.Stop();
            timer = null;
        }

        void ImAlive()
        {
            channel.MulticastMessage(keepAliveMessage);
        }

        void timer_Elapsed(object sender, ElapsedEventArgs e)
        {
            if ((DateTime.UtcNow - lastKeepAliveMessage).TotalMilliseconds < timer.Interval / 2)
                return;

            lastKeepAliveMessage = DateTime.UtcNow;
            ImAlive();

            List<IUserInfo> gone = GetInactiveUsers(keepAlive => TimeToConsiderGone(ref keepAlive));
            foreach (IUserInfo user in gone)
            {
                HeIsGone(user);
                UserLost(this, new KeepAliveEventArgs() { User = new SquiggleEndPoint(user.ID, user.PresenceEndPoint) });
            }

            List<IUserInfo> going = GetInactiveUsers(keepAlive => TimeToSuspectToBeGone(ref keepAlive))
                                    .Except(gone)
                                    .ToList();

            foreach (IUserInfo user in going)
                UserLosing(this, new KeepAliveEventArgs() { User = new SquiggleEndPoint(user.ID, user.PresenceEndPoint) });
        }                        

        void OnKeepAliveMessage(KeepAliveMessage message)
        {
            var user = new UserInfo() { ID = message.Sender.ClientID,
                                        PresenceEndPoint = message.Sender.Address 
                                       };
            bool existingUser;
            lock (aliveUsers)
                existingUser = aliveUsers.ContainsKey(user);

            if (existingUser)
                HeIsAlive(user);
            else
                UserDiscovered(this, new KeepAliveEventArgs() 
                { 
                    User = new SquiggleEndPoint(user.ID, user.PresenceEndPoint) 
                });
        }

        List<IUserInfo> GetInactiveUsers(Func<TimeSpan, TimeSpan> waitTimeSelector)
        {
            var now = DateTime.Now;

            lock (aliveUsers)
            {
                var result = aliveUsers.Where(kv => now.Subtract(kv.Value) > waitTimeSelector(kv.Key.KeepAliveSyncTime)).Select(kv=>kv.Key).ToList();
                return result; 
            }
        }

        static TimeSpan TimeToSuspectToBeGone(ref TimeSpan keepAliveTime)
        {
            return keepAliveTime + 5.Seconds();
        }

        static TimeSpan TimeToConsiderGone(ref TimeSpan keepAliveTime)
        {
            var suspicious = TimeToSuspectToBeGone(ref keepAliveTime);
            return suspicious + suspicious;
        }

        #region IDisposable Members

        public void Dispose()
        {
            Stop();
        }

        #endregion
    }
}
