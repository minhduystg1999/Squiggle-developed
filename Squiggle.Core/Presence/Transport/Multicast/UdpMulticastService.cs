﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using Squiggle.Utilities;
using Squiggle.Utilities.Serialization;

namespace Squiggle.Core.Presence.Transport.Multicast
{
    class UdpMulticastService : IMulticastService
    {
        bool started;
        UdpClient client;
        IPEndPoint bindToIP;
        IPEndPoint multicastEndPoint;

        public event EventHandler<MessageReceivedEventArgs> MessageReceived = delegate { };

        public UdpMulticastService(IPEndPoint bindToIP, IPEndPoint multicastEndPoint)
        {
            this.bindToIP = new IPEndPoint(bindToIP.Address, multicastEndPoint.Port); // we're only interested in ip. multicast port bind has to be same as target
            this.multicastEndPoint = multicastEndPoint;
        }

        public void SendMessage(Message message)
        {
            byte[] data = SerializationHelper.Serialize(message);

            ExceptionMonster.EatTheException(() =>
            {
                client.Send(data, data.Length, multicastEndPoint);
            }, "sending presence mcast message");
        }

        public void Start()
        {
            started = true;
            client = new UdpClient();
            client.DontFragment = true;
            client.Client.SetSocketOption(SocketOptionLevel.Socket, SocketOptionName.ReuseAddress, true);
            client.Client.Bind(bindToIP);
            client.JoinMulticastGroup(multicastEndPoint.Address);

            BeginReceive();
        }

        public void Stop()
        {
            started = false;
            client.Close();
        }

        void BeginReceive()
        {
            if (started)
                ExceptionMonster.EatTheException(() =>
                {
                    client.BeginReceive(OnReceive, null);

                }, "receiving mcast data on presence channel");
        }

        void OnReceive(IAsyncResult ar)
        {
            byte[] data = null;
            IPEndPoint remoteEndPoint = null;

            ExceptionMonster.EatTheException(() =>
            {
                data = client.EndReceive(ar, ref remoteEndPoint);
            }, "receiving mcast presence message");

            if (data != null)
                SerializationHelper.Deserialize<Message>(data, message=>
                {
                    OnMessageReceived(message);
                }, "presence message");

            BeginReceive();
        }

        void OnMessageReceived(Message message)
        {
            MessageReceived(this, new MessageReceivedEventArgs() { Message = message });
        }
    }
}
