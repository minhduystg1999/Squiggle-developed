﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Runtime.Serialization;

namespace Squiggle.Core.Presence
{
    [Serializable, DataContract]
    public class UserInfo: IUserInfo
    {
        [DataMember]
        public string ID { get; set; }
        [DataMember]
        public string DisplayName { get; set; }
        [DataMember]
        public IPEndPoint ChatEndPoint { get; set; }
        [DataMember]
        public IPEndPoint PresenceEndPoint { get; set; }
        [DataMember]
        public TimeSpan KeepAliveSyncTime { get; set; }
        [DataMember]
        public UserStatus Status { get; set; }
        [DataMember]
        public IDictionary<string, string> Properties { get; set;  }

        public void Update(IUserInfo user)
        {
            this.DisplayName = user.DisplayName;
            this.Properties = user.Properties;
            this.Status = user.Status;
        }

        public override bool Equals(object obj)
        {
            if (obj == null)
                return false;

            if (obj is UserInfo)
            {
                string id = ((UserInfo)obj).ID;
                return ID.Equals(id);
            }

            return false;
        }

        public override int GetHashCode()
        {
            if (this.ID != null)
                return ID.GetHashCode();
            return 0;
        }

        public UserInfo Clone()
        {
            var info = new UserInfo()
            {
                ChatEndPoint = ChatEndPoint,
                DisplayName = DisplayName,
                ID = ID,
                KeepAliveSyncTime = KeepAliveSyncTime,
                PresenceEndPoint = PresenceEndPoint,
                Properties = Properties.ToDictionary(t => t.Key, t => t.Value),
                Status = Status,
            };
            return info;
        }
    }
}
