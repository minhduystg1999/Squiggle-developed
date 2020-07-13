﻿using System;
using System.Collections.Generic;
using System.Net;
using ProtoBuf;

namespace Squiggle.Core.Presence.Transport.Messages
{
    [ProtoContract]
    [ProtoInclude(50, typeof(HiMessage))]
    [ProtoInclude(51, typeof(HelloMessage))]
    [ProtoInclude(52, typeof(UserInfoMessage))]
    public abstract class PresenceMessage : Message
    {        
        [ProtoMember(1)]
        public string DisplayName { get; set; }
        [ProtoMember(2)]        
        public UserStatus Status { get; set; }
        [ProtoMember(3)]
        public IDictionary<string, string> Properties { get; set; }
        [ProtoMember(4)]
        public TimeSpan KeepAliveSyncTime { get; set; }
        [ProtoMember(5)]
        IPAddress ChatIP { get; set; }
        [ProtoMember(6)]
        int ChatPort { get; set; }

        public PresenceMessage()
        {
            Properties = new Dictionary<string, string>();
        }

        public IPEndPoint ChatEndPoint
        {
            get { return new IPEndPoint(ChatIP, ChatPort); }
            set
            {
                ChatIP = value.Address;
                ChatPort = value.Port;
            }
        }

        public static TMessage FromUserInfo<TMessage>(IUserInfo user) where TMessage: PresenceMessage, new ()
        {
            var message = new TMessage()            
            {   
                ChatEndPoint = user.ChatEndPoint,
                Sender = new SquiggleEndPoint(user.ID, user.PresenceEndPoint),
                Status = user.Status,                
                Properties = user.Properties,
                KeepAliveSyncTime = user.KeepAliveSyncTime,
                DisplayName = user.DisplayName
            };
            return message;
        }

        public UserInfo GetUser()
        {
            var user = new UserInfo()
            {
                ID = this.Sender.ClientID,
                ChatEndPoint = this.ChatEndPoint,
                PresenceEndPoint = this.Sender.Address,
                Status = this.Status,
                Properties = this.Properties, 
                KeepAliveSyncTime = this.KeepAliveSyncTime,
                DisplayName = this.DisplayName
            };
            return user;
        }
    }
}
