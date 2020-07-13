﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.Composition;
using System.IO;
using Squiggle.Client.Activities;
using Squiggle.Core.Chat.Activity;
using Squiggle.Plugins;
using System.Threading.Tasks;

namespace Squiggle.FileTransfer
{
    [Export(typeof(IActivity))]
    public class FileTransferActivity: IActivity
    {
        public virtual Guid Id
        {
            get { return SquiggleActivities.FileTransfer; }
        }

        public virtual string Title
        {
            get { return "File Transfer"; }
        }

        public IActivityHandler FromInvite(IActivityExecutor executor, IDictionary<string, string> metadata)
        {
            var inviteData = new FileInviteData(metadata);
            IFileTransferHandler handler = new FileTransferHandler(executor, inviteData.Name, inviteData.Size);

            return handler;
        }

        public IActivityHandler CreateInvite(IActivityExecutor executor, IDictionary<string, object> args)
        {
            if (!args.ContainsKey("content") || !(args["content"] is Stream))
                throw new ArgumentException("metadata must include content stream.", "metadata");

            var stream = (Stream)args["content"];

            var inviteData = new FileInviteData(args.ToDictionary(x => x.Key, x => x.Value.ToString()));
            IFileTransferHandler handler = new FileTransferHandler(executor, inviteData.Name, inviteData.Size, stream);

            return handler;
        }

        public virtual Task<IDictionary<string, object>> LaunchInviteUI(ISquiggleContext context, IChatWindow window)
        {
            throw new NotImplementedException();
        }
    }
}
