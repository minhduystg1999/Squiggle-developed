﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Squiggle.Core.Chat.Transport.Host;
using Squiggle.Utilities;

namespace Squiggle.Core.Chat.Activity
{
    class ActivitySession
    {
        ISquiggleEndPoint localUser;
        ISquiggleEndPoint remoteUser;
        Guid chatSessionId;

        internal Guid Id { get; private set; }
        internal ChatHost ChatHost { get; private set; }
        internal bool SelfInitiated { get; private set; }

        private ActivitySession(Guid chatSessionId, ChatHost chatHost, ISquiggleEndPoint localUser, ISquiggleEndPoint remoteUser, Guid Id, bool selfInitiated)
        {
            this.chatSessionId = chatSessionId;
            this.ChatHost = chatHost;
            this.localUser = localUser;
            this.remoteUser = remoteUser;
            this.Id = Id;
            this.SelfInitiated = selfInitiated;
        }

        public static ActivitySession Create(Guid sessionId, ChatHost chatHost, ISquiggleEndPoint localUser, ISquiggleEndPoint remoteUser)
        {
            var session = new ActivitySession(sessionId, chatHost, localUser, remoteUser, Guid.NewGuid(), true);
            return session;
        }

        public static ActivitySession FromInvite(Guid sessionId, ChatHost chatHost, ISquiggleEndPoint localUser, ISquiggleEndPoint remoteUser, Guid activitySessionId)
        {
            var session = new ActivitySession(sessionId, chatHost, localUser, remoteUser, activitySessionId, false);
            return session;
        }

        public bool Accept()
        {
            bool success = ExceptionMonster.EatTheException(() =>
            {
                ChatHost.AcceptActivityInvite(Id, localUser, remoteUser);
            }, "accepting activity invite from " + remoteUser);
            return success;
        }

        public void Cancel()
        {
            ExceptionMonster.EatTheException(() => ChatHost.CancelActivitySession(Id, localUser, remoteUser), "cancelling activity session with user" + remoteUser);
        }

        public void SendData(byte[] chunk, Action<Exception> onError)
        {
            Exception ex;
            if (!ExceptionMonster.EatTheException(() =>
                {
                    ChatHost.ReceiveActivityData(Id, localUser, remoteUser, chunk);
                }, "sending data to " + remoteUser.ToString(), out ex))
                onError(ex);
        }

        public bool SendInvite(Guid activityId, IEnumerable<KeyValuePair<string, string>> metadata)
        {
            bool success = ExceptionMonster.EatTheException(() => ChatHost.ReceiveActivityInvite(chatSessionId, localUser, remoteUser, activityId, Id, metadata), "Sending app invite to " + remoteUser.ToString());
            return success;
        }
    }
}
