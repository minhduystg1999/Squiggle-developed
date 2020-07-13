﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Input;
using Squiggle.Client;
using Squiggle.Core.Presence;
using Squiggle.UI.Helpers;
using Squiggle.UI.Settings;
using Squiggle.UI.ViewModel;
using Squiggle.Utilities;

namespace Squiggle.UI.Controls
{
    /// <summary>
    /// Interaction logic for BuddyList.xaml
    /// </summary>
    public partial class ContactListControl : UserControl
    {
        string filter = String.Empty;
        bool showOfflineContacts;
        ContactListView contactListView;
        
        public event EventHandler<ChatStartEventArgs> ChatStart = delegate { };
        public event EventHandler<BuddiesActionEventArgs> BroadcastChatStart = delegate { };
        public event EventHandler<BuddiesActionEventArgs> GroupChatStart = delegate { };
        public event EventHandler SignOut = delegate { };
        public event EventHandler OpenAbout = delegate { };
        
        public static DependencyProperty ChatContextProperty = DependencyProperty.Register("ChatContext", typeof(ClientViewModel), typeof(ContactListControl), new PropertyMetadata(null));
        public ClientViewModel ChatContext
        {
            get { return GetValue(ChatContextProperty) as ClientViewModel; }
            set 
            {
                SetValue(ChatContextProperty, value);
            }
        } 

        public ContactListControl()
        {
            InitializeComponent();
        }

        public void Refresh()
        {
            var cvs = (CollectionViewSource)this.FindResource("buddiesCollection");
            if (cvs.View != null)
                cvs.View.Refresh();
        }

        void ComboBoxItem_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            SignOut(this, new EventArgs());
            e.Handled = true;
        }

        void ComboBoxItem_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                SignOut(this, new EventArgs());
                e.Handled = true;
            }
        }

        void About_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            OpenAbout(this, EventArgs.Empty);
        }

        void Buddy_Click(object sender, MouseButtonEventArgs e)
        {
            Buddy buddy = ((FrameworkElement)sender).DataContext as Buddy;
            StartChat(buddy, false);
        }        

        void StartChat(Buddy buddy, bool sendFile, params string[] filePaths)
        {
            if (buddy.IsOnline)
                ChatStart(this, new ChatStartEventArgs() { Buddy = buddy,
                                                           SendFile = sendFile,
                                                           Files = filePaths });
        }

        void Buddy_DragOver(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
                e.Effects = DragDropEffects.All;
            else
                e.Effects = DragDropEffects.None;
        }

        void Buddy_Drop(object sender, DragEventArgs e)
        {
            var files = e.Data.GetData(DataFormats.FileDrop) as string[];
            if (files != null)
            {
                var buddy = ((FrameworkElement)sender).DataContext as Buddy;
                StartChat(buddy, true, files);
            }
        }

        void CollectionViewSource_Filter(object sender, FilterEventArgs e)
        {
            Buddy buddy = (Buddy)e.Item;
            if (!showOfflineContacts && buddy.Status == UserStatus.Offline)
                e.Accepted = false;
            else if (filter == String.Empty)
                e.Accepted = true;
            else
                e.Accepted = buddy.DisplayName.ToUpperInvariant().Contains(filter.ToUpperInvariant());
        }

        void FilterTextBox_FilterChanged(object sender, BuddyFilterEventArs e)
        {
            filter = e.FilterBy;

            Refresh();
        }

        void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            showOfflineContacts = SettingsProvider.Current.Settings.ContactSettings.ShowOfflineContacts;
            contactListView = SettingsProvider.Current.Settings.ContactSettings.ContactListView;
            SettingsProvider.Current.SettingsUpdated += Current_SettingsUpdated;

            var cvs = (CollectionViewSource)this.FindResource("buddiesCollection");
            ConfigureCollectionView(cvs);
        }

        void AddGroupDescription(CollectionViewSource cvs)
        {
            var group = new PropertyGroupDescription("Properties.GroupName", null, StringComparison.InvariantCultureIgnoreCase);
            cvs.GroupDescriptions.Add(group);
        }

        void AddSortDescription(CollectionViewSource cvs)
        {
            var sort = new SortDescription();
            sort.PropertyName = SettingsProvider.Current.Settings.ContactSettings.ContactListSortField.ToString();
            cvs.SortDescriptions.Add(sort);         
        }

        void Current_SettingsUpdated(object sender, EventArgs e)
        {
            var cvs = (CollectionViewSource)this.FindResource("buddiesCollection");

            bool refresh = ConfigureCollectionView(cvs);
            
            if (refresh)
                Refresh();
        }

        bool ConfigureCollectionView(CollectionViewSource cvs)
        {
            bool refresh = false;
            if (!cvs.SortDescriptions.Any() ||
                (cvs.SortDescriptions[0].PropertyName != SettingsProvider.Current.Settings.ContactSettings.ContactListSortField.ToString()))
            {
                cvs.SortDescriptions.Clear();
                AddSortDescription(cvs);
                refresh = true;
            }
            if (cvs.GroupDescriptions.Any() ^ SettingsProvider.Current.Settings.ContactSettings.GroupContacts)
            {
                cvs.GroupDescriptions.Clear();
                if (SettingsProvider.Current.Settings.ContactSettings.GroupContacts)
                    AddGroupDescription(cvs);
                refresh = true;
            }

            if (showOfflineContacts != SettingsProvider.Current.Settings.ContactSettings.ShowOfflineContacts)
            {
                showOfflineContacts = SettingsProvider.Current.Settings.ContactSettings.ShowOfflineContacts;
                refresh = true;
            }

            if (contactListView != SettingsProvider.Current.Settings.ContactSettings.ContactListView)
            {
                contactListView = SettingsProvider.Current.Settings.ContactSettings.ContactListView;
                refresh = true;
            }

            return refresh;
        }

        void Group_ExpandChanged(object sender, RoutedEventArgs e)
        {
            var expander = (Expander)sender;
            ContactGroup group = SettingsProvider.Current.Settings.ContactSettings.ContactGroups.Find(expander.Tag as string);
            if (group != null)
            {
                group.Expanded = expander.IsExpanded;
                SettingsProvider.Current.Save();
            }
        }

        void Group_Loaded(object sender, RoutedEventArgs e)
        {
            var expander = (Expander)sender;
            ContactGroup group = SettingsProvider.Current.Settings.ContactSettings.ContactGroups.Find(expander.Tag as string);
            expander.IsExpanded = group != null ? group.Expanded : true;
        }

        private void SendBroadcastMessageMenu_Click(object sender, RoutedEventArgs e)
        {
            RaiseBuddiesEvent(sender, BroadcastChatStart);
        }

        private void StartGroupChatMenu_Click(object sender, RoutedEventArgs e)
        {
            RaiseBuddiesEvent(sender, GroupChatStart);
        }

        void StartChat_Click(object sender, RoutedEventArgs e)
        {
            Buddy buddy = ((Control)sender).Tag as Buddy;
            StartChat(buddy, false);
        }

        void Ignore_Click(object sender, RoutedEventArgs e)
        {
            Buddy buddy = ((Control)sender).Tag as Buddy;
            buddy.IsIgnored = !buddy.IsIgnored;
        }

        void SendFile_Click(object sender, RoutedEventArgs e)
        {
            Buddy buddy = ((Control)sender).Tag as Buddy;
            StartChat(buddy, true);
        }

        void SendEmail_Click(object sender, RoutedEventArgs e)
        {
            Buddy buddy = ((Control)sender).Tag as Buddy;
            SendEmail(buddy);
        }

        static void SendEmail(Buddy buddy)
        {
            System.Diagnostics.Process.Start("mailto:" + buddy.Properties.EmailAddress);
        }

        private void ChatCommand_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            StartChat((Buddy)e.Parameter, false);
        }

        private void EmailCommand_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            SendEmail((Buddy)e.Parameter);
        }

        private void SendFileCommand_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            StartChat((Buddy)e.Parameter, true);
        }

        void RaiseBuddiesEvent(object sender, EventHandler<BuddiesActionEventArgs> evt)
        {
            var menuItem = (MenuItem)sender;
            var buddies = ((IEnumerable<object>)menuItem.Tag).Cast<Buddy>();
            evt(this, new BuddiesActionEventArgs() { Buddies = buddies.ToList() });
        }

        private void doNotDisturbChecked(object sender, RoutedEventArgs e)
        {
            SettingsProvider.Current.Settings.GeneralSettings.DoNotDisturb = true;
            TrayPopup.Instance.Enabled = false;
            AudioAlert.Instance.Enabled = false;
        }

        private void doNotDisturbUnchecked(object sender, RoutedEventArgs e)
        {
            SettingsProvider.Current.Settings.GeneralSettings.DoNotDisturb = false;
            TrayPopup.Instance.Enabled = true;
            AudioAlert.Instance.Enabled = true;
        }

    }

    public class ChatStartEventArgs : EventArgs
    {
        public Buddy Buddy { get; set; }
        public bool SendFile { get; set; }
        public string[] Files { get; set; }
    }

    public class BuddiesActionEventArgs: EventArgs
    {
        public IEnumerable<Buddy> Buddies {get; set;}
    }
}
