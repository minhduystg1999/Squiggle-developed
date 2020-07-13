﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.ServiceModel;
using System.ServiceModel.Dispatcher;
using Squiggle.Core;
using Squiggle.Core.Chat;
using Squiggle.Core.Chat.Transport.Host;
using Squiggle.Core.Presence;
using Squiggle.Utilities.Net.Pipe;
using Squiggle.Utilities.Serialization;
using Squiggle.Bridge.Messages;
using Squiggle.Utilities;

namespace Squiggle.Bridge
{
    public class PresenceMessageForwardedEventArgs: EventArgs
    {
        public IPEndPoint BridgeEndPoint { get; set; }
        public Squiggle.Core.Presence.Transport.Message Message {get; set; }

        public bool IsBroadcast
        {
            get { return Message.Recipient == null; }
        }

        public PresenceMessageForwardedEventArgs(Squiggle.Core.Presence.Transport.Message message, IPEndPoint bridgeEdnpoint)
	    {
            this.Message = message;
            this.BridgeEndPoint = bridgeEdnpoint;
        }
    }

    public class ChatMessageReceivedEventArgs : EventArgs
    {
        public Squiggle.Core.Chat.Transport.Message Message { get; set; }
    }

    public class BridgeHost: IDisposable
    {
        IPEndPoint externalEndPoint;
        IPEndPoint internalEndPoint;
        UnicastMessagePipe bridgePipe;
        SquiggleBridge bridge;
        UnicastMessagePipe chatPipe;

        public event EventHandler<PresenceMessageForwardedEventArgs> PresenceMessageForwarded = delegate { };
        public event EventHandler<ChatMessageReceivedEventArgs> ChatMessageReceived = delegate { };

        internal BridgeHost(SquiggleBridge bridge, IPEndPoint externalEndPoint, IPEndPoint internalEndPoint)
        {
            this.bridge = bridge;
            this.externalEndPoint = externalEndPoint;
            this.internalEndPoint = internalEndPoint;
        }

        public void Start()
        {
            bridgePipe = new UnicastMessagePipe(externalEndPoint);
            bridgePipe.MessageReceived += bridgePipe_MessageReceived;
            bridgePipe.Open();

            chatPipe = new UnicastMessagePipe(internalEndPoint);
            chatPipe.MessageReceived += chatPipe_MessageReceived;
            chatPipe.Open();
        }

        void chatPipe_MessageReceived(object sender,Utilities.Net.Pipe.MessageReceivedEventArgs e)
        {
            OnChatMessage(e.Message);
        }

        void bridgePipe_MessageReceived(object sender, Utilities.Net.Pipe.MessageReceivedEventArgs e)
        {
            SerializationHelper.Deserialize<Message>(e.Message, msg =>
            {
                OnMessageReceived(msg);
            }, "bridge message");
        }

        void OnMessageReceived(Message message)
        {
            if (message is ForwardPresenceMessage)
                OnPresenceMessage((ForwardPresenceMessage)message);
            else if (message is ForwardChatMessage)
                OnChatMessage(((ForwardChatMessage)message).Message);
        }

        void OnPresenceMessage(ForwardPresenceMessage message)
        {
            SerializationHelper.Deserialize<Squiggle.Core.Presence.Transport.Message>(message.Message, msg =>
            {
                var args = new PresenceMessageForwardedEventArgs(msg, message.BridgeEndPoint);
                PresenceMessageForwarded(this, args);
            }, "presence message");
        }

        void OnChatMessage(byte[] data)
        {
            SerializationHelper.Deserialize<Squiggle.Core.Chat.Transport.Message>(data, msg =>
            {
                var args = new ChatMessageReceivedEventArgs() { Message = msg };
                ChatMessageReceived(this, args);
            }, "chat message");
        }

        public void Dispose()
        {
            if (bridgePipe != null)
            {
                bridgePipe.Dispose();
                bridgePipe = null;
            }

            if (chatPipe != null)
            {
                chatPipe.Dispose();
                chatPipe = null;
            }
        }

        public void SendChatMessage(bool local, IPEndPoint target, Core.Chat.Transport.Message message)
        {
            byte[] data = SerializationHelper.Serialize(message);
            if (local)
                chatPipe.Send(target, data);
            else
                Send(target, new ForwardChatMessage() { Message = data });
        }

        public void SendPresenceMessage(IPEndPoint target, byte[] message)
        {
            Validator.IsNotNull(target, "target");
            Validator.IsNotNull(message, "message");
            Send(target, new ForwardPresenceMessage() { BridgeEndPoint = externalEndPoint, Message = message});
        }

        void Send(IPEndPoint target, Message message)
        {
            bridgePipe.Send(target, SerializationHelper.Serialize(message));
        }
    }
}
