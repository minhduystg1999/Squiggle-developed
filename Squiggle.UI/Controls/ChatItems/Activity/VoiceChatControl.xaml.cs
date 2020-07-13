﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Squiggle.Client;
using Squiggle.UI.Helpers;
using Squiggle.UI.Resources;
using Squiggle.Utilities;
using Squiggle.Utilities.Threading;
using Squiggle.Core.Chat.Activity;
using Squiggle.UI.Windows;
using Squiggle.UI.Components;
using Squiggle.Client.Activities;

namespace Squiggle.UI.Controls.ChatItems.Activity
{
    /// <summary>
    /// Interaction logic for VoiceChatControl.xaml
    /// </summary>
    public partial class VoiceChatControl : UserControl
    {
        IVoiceChatHandler voiceChat;
        bool sending;
        string buddyName;
        bool alreadyInChat;
        SquiggleContext context;

        public string Status { get; private set; }

        public VoiceChatControl()
        {
            InitializeComponent();
        }

        internal VoiceChatControl(SquiggleContext context, IVoiceChatHandler voiceChat, string buddyName, bool sending, bool alreadyInChat) : this()
        {
            this.voiceChat = voiceChat;
            this.sending = sending;
            this.buddyName = buddyName;
            this.alreadyInChat = alreadyInChat;
            this.context = context;

            this.voiceChat.TransferCancelled += voiceChat_TransferCancelled;
            this.voiceChat.TransferCompleted += voiceChat_TransferCompleted;
            this.voiceChat.TransferStarted += voiceChat_TransferStarted;
            this.voiceChat.TransferFinished += voiceChat_TransferFinished;


            ShowWaiting();
        }

        void voiceChat_TransferFinished(object sender, EventArgs e)
        {
            Dispatcher.Invoke(() =>
            {
                if (context.ActiveVoiceChat == voiceChat)
                    context.ActiveVoiceChat = null;

                ShowCompleted();
            });
        }

        void voiceChat_TransferStarted(object sender, EventArgs e)
        {
            Dispatcher.Invoke(() =>
            {
                StopRing();
                ShowAccepted();
            });
        }

        void voiceChat_TransferCompleted(object sender, EventArgs e)
        {
            Dispatcher.Invoke(() =>
            {
                ShowCompleted();
            }); 
        }

        void voiceChat_TransferCancelled(object sender, EventArgs e)
        {
            Dispatcher.Invoke(() =>
            {
                ShowCompleted();
            });
        }

        void ShowAccepted()
        {
            stkAccepted.Visibility = Visibility.Visible;
            stkInvitation.Visibility = Visibility.Hidden;
            stkWaitingAcceptance.Visibility = Visibility.Hidden;
            stkCompleted.Visibility = Visibility.Hidden;
        }

        void ShowWaiting()
        {
            PlayRing();

            if(sending)
                txbWaitingSentAcceptance.Text = String.Format(Translation.Instance.VoiceChat_SentWaiting, buddyName);
            else
                txbWaitingReceivedAcceptance.Text = String.Format(Translation.Instance.VoiceChat_ReceivedWaiting, buddyName);

            stkAccepted.Visibility = Visibility.Hidden;
            stkInvitation.Visibility = sending ? Visibility.Hidden : Visibility.Visible;
            btnAccept.IsEnabled = !alreadyInChat;

            stkWaitingAcceptance.Visibility = sending ? Visibility.Visible : Visibility.Hidden;
            stkCompleted.Visibility = Visibility.Hidden;
        }        

        void ShowCancelled()
        {
            stkAccepted.Visibility = Visibility.Hidden;
            stkInvitation.Visibility = Visibility.Hidden;
            stkWaitingAcceptance.Visibility = Visibility.Hidden;
            stkCompleted.Visibility = Visibility.Hidden;
        }

        void ShowCompleted()
        {
            stkAccepted.Visibility = Visibility.Hidden;
            stkInvitation.Visibility = Visibility.Hidden;
            stkWaitingAcceptance.Visibility = Visibility.Hidden;
            stkCompleted.Visibility = Visibility.Visible;

            AudioAlert.Instance.Play(AudioAlertType.VoiceChatDisconnected);
        }

        private void Accept_Click(object sender, RoutedEventArgs e)
        {
            if (context.IsVoiceChatActive)
                return;
            else
                context.ActiveVoiceChat = voiceChat;

            voiceChat.Start();
            Dispatcher.Invoke(() =>
            {
                ShowAccepted();
            });
        }

        private void Reject_Click(object sender, RoutedEventArgs e)
        {
            voiceChat.Cancel();
            Dispatcher.Invoke(() =>
            {
                ShowCancelled();
            });
        }

        private void Finished_Click(object sender, RoutedEventArgs e)
        {
            voiceChat.Cancel();
            Dispatcher.Invoke(() =>
            {
                StopRing();
                ShowCompleted();
            });
        }

        void PlayRing()
        {
            if (sending)
                AudioAlert.Instance.Play(AudioAlertType.VoiceChatRingingOut);
            else
                AudioAlert.Instance.Play(AudioAlertType.VoiceChatRingingIn);
        }

        void StopRing()
        {
            if (sending)
                AudioAlert.Instance.Stop(AudioAlertType.VoiceChatRingingOut);
            else
                AudioAlert.Instance.Stop(AudioAlertType.VoiceChatRingingIn);
        }
    }
}
