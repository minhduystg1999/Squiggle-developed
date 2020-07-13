﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Windows;
using Squiggle.Client;
using Squiggle.Core.Presence;
using Squiggle.UI.Components;
using Squiggle.UI.Controls;
using Squiggle.UI.Settings;
using Squiggle.UI.ViewModel;
using Squiggle.UI.Windows;
using Squiggle.Utilities;
using Squiggle.Utilities.Application;

namespace Squiggle.UI.Helpers
{
    class SquiggleUtility
    {
        public static bool Confirm(ConfirmationDialogType dialogType, Window parent)
        {
            string username = SquiggleContext.Current.ChatClient.Coalesce(c=>c.CurrentUser.DisplayName, String.Empty);
            return ConfirmationDialog.Show(username, dialogType, parent);
        }

        public static IEnumerable<UserStatus> GetChangableStatuses()
        {
            var statuses = from status in Enum.GetValues(typeof(UserStatus)).Cast<UserStatus>()
                           where status != UserStatus.Idle
                           select status;
            return statuses;
        }

        public static string GetDownloadsFolderPath()
        {
            string downloadsFolder = SettingsProvider.Current.Settings.GeneralSettings.DownloadsFolder;
            downloadsFolder = Environment.ExpandEnvironmentVariables(downloadsFolder);
            return downloadsFolder;
        }

        public static void OpenDownloadsFolder()
        {
            string downloadsFolder = GetDownloadsFolderPath();
            if (Shell.CreateDirectoryIfNotExists(downloadsFolder))
                ExceptionMonster.EatTheException(() => Process.Start(downloadsFolder), "opening downloads folder");
        }

        public static void ShowFontDialog()
        {
            using (var dialog = new System.Windows.Forms.FontDialog())
            {
                var settings = SettingsProvider.Current.Settings.PersonalSettings;
                dialog.Font = new System.Drawing.Font(settings.FontName, settings.FontSize, settings.FontStyle);
                dialog.ShowColor = true;
                dialog.Color = settings.FontColor;

                if (dialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    float fontSize = dialog.Font.Size;
                    System.Drawing.Color fontColor = dialog.Color;

                    settings.FontColor = fontColor;
                    settings.FontName = dialog.Font.Name;
                    settings.FontSize = Convert.ToInt32(fontSize);
                    settings.FontStyle = dialog.Font.Style;
                    SettingsProvider.Current.Save();
                }
            }
        }

        public static void ShowSettingsDialog(Window owner)
        {
            ChatClientControl chatControl = ((MainWindow)SquiggleContext.Current.MainWindow).chatControl;
            ISelfBuddy buddy = null;
            if (chatControl.ContactList.ChatContext.Coalesce(context=>context.IsLoggedIn))
                buddy = chatControl.ContactList.ChatContext.LoggedInUser;
            var settings = new SettingsWindow(SquiggleContext.Current);
            settings.Owner = owner;
            if (settings.ShowDialog().GetValueOrDefault())
                chatControl.SignIn.LoadSettings(SettingsProvider.Current.Settings);
        }

        public static Buddy SelectContact(string title, Window owner, Predicate<Buddy> exclusionFilter = null)
        {
            return SelectContacts(title, owner, exclusionFilter, false).FirstOrDefault();
        }

        public static IEnumerable<Buddy> SelectContacts(string title, Window owner, Predicate<Buddy> exclusionFilter = null, bool multiple = true)
        {
            var clientViewModel = (ClientViewModel)((MainWindow)SquiggleContext.Current.MainWindow).DataContext;
            var selectContactDialog = new ContactsSelectWindow(clientViewModel, false);
            selectContactDialog.ExcludeCriterea = exclusionFilter;
            selectContactDialog.AllowMultiSelect = multiple;
            selectContactDialog.Owner = owner;
            selectContactDialog.Title = title;
            if (selectContactDialog.ShowDialog() == true)
                return selectContactDialog.SelectedContacts;

            return Enumerable.Empty<Buddy>();
        }

        public static void ShowAboutDialog(Window owner)
        {
            var about = new About();
            about.Owner = owner;
            about.ShowDialog();
        }

        public static void ShakeWindow(Window window)
        {            
            if (window.WindowState != System.Windows.WindowState.Minimized)
            {
                var rand = new Random();
                double top = window.Top;
                double left = window.Left;
                const int power = 10;

                for (int i = 0; i < 30; i++)
                {
                    window.Top = top + rand.Next(-power, power);
                    window.Left = left + rand.Next(-power, power);
                    Thread.Sleep(10);                    
                }

                window.Top = top;
                window.Left = left;
            }
        }
    }
}
