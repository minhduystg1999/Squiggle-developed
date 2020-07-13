﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;

namespace Squiggle.Core.Chat
{
    class ChatSessionCollection: ICollection<IChatSession>
    {
        Dictionary<Guid, IChatSession> chatSessions = new Dictionary<Guid, IChatSession>();

        public void Add(IChatSession item)
        {
            lock (chatSessions)
                chatSessions[item.Id] = item;
        }

        public void Clear()
        {
            lock (chatSessions)
                chatSessions.Clear();
        }

        public bool Contains(IChatSession item)
        {
            return Contains(item.Id);
        }

        public bool Contains(Guid sessionId)
        {
            lock (chatSessions)
                return chatSessions.ContainsKey(sessionId);
        }

        public IChatSession Find(Func<IChatSession, bool> criterea)
        {
            lock (chatSessions)
                return chatSessions.Values.Where(criterea).FirstOrDefault();
        }

        public void CopyTo(IChatSession[] array, int arrayIndex)
        {
            lock (chatSessions)
                chatSessions.Values.CopyTo(array, arrayIndex);
        }

        public int Count
        {
            get { return chatSessions.Count; }
        }

        public bool IsReadOnly
        {
            get { return false; }
        }

        public bool Remove(IChatSession item)
        {
            lock (chatSessions)
            {
                bool removed = chatSessions.Remove(item.Id);
                return removed;
            }
        }

        public IEnumerator<IChatSession> GetEnumerator()
        {
            return chatSessions.Values.GetEnumerator();
        }

        System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator()
        {
            return this.GetEnumerator();
        }
    }
}
