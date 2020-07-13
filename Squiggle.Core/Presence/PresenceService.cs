﻿using System;
using System.Collections.Generic;
using System.Linq;
using Squiggle.Core.Presence.Transport;
using Squiggle.Utilities.Threading;

namespace Squiggle.Core.Presence
{
    public class PresenceService : IPresenceService
    {
        UserDiscovery discovery;
        PresenceChannel channel;
        KeepAliveService keepAlive;

        UserInfo thisUser;

        public event EventHandler<UserOnlineEventArgs> UserOnline = delegate { };
        public event EventHandler<UserEventArgs> UserOffline = delegate { };
        public event EventHandler<UserEventArgs> UserUpdated = delegate { };

        public PresenceService(PresenceServiceOptions options)
        {
            thisUser = new UserInfo()
            {
                ID = options.ChatEndPoint.ClientID,
                ChatEndPoint = options.ChatEndPoint.Address,
                KeepAliveSyncTime = options.KeepAliveTime,
                PresenceEndPoint = options.PresenceServiceEndPoint
            };

            channel = new PresenceChannel(options.MulticastEndPoint, options.MulticastReceiveEndPoint, options.PresenceServiceEndPoint);

            this.discovery = new UserDiscovery(channel);
            discovery.UserOnline += discovery_UserOnline;
            discovery.UserOffline += discovery_UserOffline;
            discovery.UserUpdated += discovery_UserUpdated;
            discovery.UserDiscovered += discovery_UserDiscovered;

            this.keepAlive = new KeepAliveService(channel, thisUser, options.KeepAliveTime);
            this.keepAlive.UserLost += keepAlive_UserLost;
            this.keepAlive.UserLosing += keepAlive_UserLosing;
            this.keepAlive.UserDiscovered += keepAlive_UserDiscovered;
        }        

        public void Login(string name, IBuddyProperties properties)
        {
            thisUser.DisplayName = name;
            thisUser.Status = UserStatus.Online;
            thisUser.Properties = properties.ToDictionary();

            channel.Start();
            discovery.Login(thisUser.Clone());
            keepAlive.Start();
        }

        public void SendUpdate(string name, IBuddyProperties properties, UserStatus status)
        {
            UserStatus lastStatus = thisUser.Status;

            UserInfo userInfo;
            lock (thisUser)
            {
                thisUser.DisplayName = name;
                thisUser.Status = status;
                thisUser.Properties = properties.ToDictionary();

                userInfo = thisUser.Clone();
            }

            if (lastStatus == UserStatus.Offline)
            {
                if (status != UserStatus.Offline)
                    discovery.Login(userInfo);
            }
            else if (status == UserStatus.Offline)
                discovery.FakeLogout(userInfo);
            else
                discovery.Update(userInfo);
        }

        public void Logout()
        {
            discovery.Logout();
            keepAlive.Stop();
            channel.Stop();
        }    

        void keepAlive_UserDiscovered(object sender, KeepAliveEventArgs e)
        {
            discovery.UpdateUser(e.User, discovered: true);
        }

        void keepAlive_UserLosing(object sender, KeepAliveEventArgs e)
        {
            discovery.UpdateUser(e.User, discovered: false);
        }

        void keepAlive_UserLost(object sender, KeepAliveEventArgs e)
        {
            IUserInfo user = discovery.Users[e.User.ClientID];
            if (user != null)
                discovery.UserIsOffline(user.ID);
        }        

        void discovery_UserUpdated(object sender, UserEventArgs e)
        {
            keepAlive.HeIsAlive(e.User);
            UserUpdated(this, e);
        }
        
        void discovery_UserOnline(object sender, UserEventArgs e)
        {
            keepAlive.MonitorUser(e.User);
            OnUserOnline(e, false);
        }

        void discovery_UserDiscovered(object sender, UserEventArgs e)
        {
            keepAlive.MonitorUser(e.User);
            OnUserOnline(e, true);
        }   

        void discovery_UserOffline(object sender, UserEventArgs e)
        {
            keepAlive.LeaveUser(e.User);
            OnUserOffline(e.User);
        }

        void OnUserOnline(UserEventArgs e, bool discovered)
        {                
            UserOnline(this, new UserOnlineEventArgs() { User = e.User, Discovered = discovered });
        }

        void OnUserOffline(IUserInfo user)
        {
            UserOffline(this, new UserEventArgs() { User = user });
        }

        public void Dispose()
        {
            Logout();
        }
    }    
}
