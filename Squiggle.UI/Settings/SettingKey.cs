﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Squiggle.UI.Settings
{
    class SettingKey
    {
        public static readonly string PresencePort = "PresencePort";
        public static readonly string ChatPort = "ChatPort";
        public static readonly string IdleTimeout = "IdleTimeout";
        public static readonly string KeepAliveTime = "KeepAliveTime";
        public static readonly string PresenceAddress = "PresenceAddress";
        public static readonly string AutoSignIn = "AutoSignIn";
        public static readonly string EnableChatLogging = "EnableChatLogging";
        public static readonly string EnableStatusLogging = "EnableStatusLogging";
        public static readonly string MaxMessagesToPreserve = "MaxMessagesToPreserve";
        public static readonly string CheckForUpdates = "CheckForUpdates";
        public static readonly string PresenceCallbackPort = "PresenceCallbackPort";
        public static readonly string GitHash = "GitHash";
        public static readonly string ReadOnly = "ReadOnly";
    }
}
