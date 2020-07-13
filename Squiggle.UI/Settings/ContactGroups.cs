﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;

namespace Squiggle.UI.Settings
{
    public class ContactGroups: ObservableCollection<ContactGroup>
    {
        public void Add(string groupName)
        {
            this.Add(new ContactGroup() 
            { 
                GroupName = groupName, 
                LastUsed = DateTime.UtcNow 
            });
        }

        public ContactGroup Find(string groupName)
        {
            var group = this.FirstOrDefault(g => g.GroupName.Equals(groupName, StringComparison.InvariantCultureIgnoreCase));
            return group;
        }

        protected override void InsertItem(int index, ContactGroup item)
        {
            item.GroupName = item.GroupName.Trim();
            ContactGroup existing = this.Find(item.GroupName);
            if (existing == null)
                base.InsertItem(index, item);
            else
                existing.LastUsed = DateTime.UtcNow;
        }

        public void FlushItems()
        {
            FlushItems(TimeSpan.FromDays(7));
        }
        
        public void FlushItems(TimeSpan olderThan)
        {
            for (int i = Items.Count - 1; i >= 0; i--)
            {
                TimeSpan life = DateTime.UtcNow.Subtract(Items[i].LastUsed);
                if (life >= olderThan)
                    this.RemoveAt(i);
            }
        }
    }
}
