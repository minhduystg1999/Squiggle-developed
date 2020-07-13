﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Text;

namespace Squiggle.Bridge.Configuration
{
    class PresenceBinding : ConfigurationElement
    {
        [ConfigurationProperty("MulticastIP", IsRequired = true)]
        public string IP
        {
            get { return this["MulticastIP"] as string; }
        }

        [ConfigurationProperty("MulticastPort", IsRequired = true)]
        public int MulticastPort
        {
            get { return Convert.ToInt32(this["MulticastPort"]); }
        }

        [ConfigurationProperty("ServicePort", IsRequired = true)]
        public int ServicePort
        {
            get { return Convert.ToInt32(this["ServicePort"]); }
        }

        [ConfigurationProperty("CallbackPort", IsRequired = true)]
        public int CallbackPort
        {
            get { return Convert.ToInt32(this["CallbackPort"]); }
        }

        public IPEndPoint MulticastEndPoint
        {
            get
            {
                var ip = IPAddress.Parse(IP);
                return new IPEndPoint(ip, MulticastPort);
            }
        }
    }
}
