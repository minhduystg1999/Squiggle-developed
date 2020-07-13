﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
using Squiggle.Core.Presence;
using Squiggle.History;
using Squiggle.History.DAL;
using Squiggle.History.DAL.Entities;
using Squiggle.UI.Factories;
using Squiggle.UI.Resources;
using Squiggle.Utilities;
using Squiggle.Utilities.Threading;

namespace Squiggle.UI.Controls
{
    /// <summary>
    /// Interaction logic for StatusHistoryViewer.xaml
    /// </summary>
    public partial class StatusHistoryViewer : UserControl
    {
        Action lastSearch;

        public StatusHistoryViewer()
        {
            InitializeComponent();
        }

        void Search_Click(object sender, RoutedEventArgs e)
        {
            DateTime? from = txtFrom.SelectedDate;
            DateTime? to = txtTo.SelectedDate;
            lastSearch = () => AsyncInvoke(() => SearchUpdates(from, to));
            lastSearch();
        }

        void SearchUpdates(DateTime? from, DateTime? to)
        {
            var historyManager = new HistoryManagerFactory().CreateInstance();
            var updates = historyManager.GetStatusUpdates(new StatusCriteria()
                                        {
                                            From = from.HasValue ? from.Value.ToUniversalTime() : from,
                                            To = to.HasValue ? to.Value.ToUniversalTime() : to,
                                        })
                                        .Select(update => new Result(update))
                                        .ToList();

            Dispatcher.Invoke(() =>
            {
                results.ItemsSource = updates;
            });
        }

        private void Clear_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show(Translation.Instance.HistoryViewer_ConfirmClear, "Squiggle", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                AsyncInvoke(() =>
                {
                    var historyManager = new HistoryManagerFactory().CreateInstance();
                    historyManager.ClearStatusHistory();
                }, () => results.ItemsSource = null);
            }
        }

        void AsyncInvoke(Action action)
        {
            AsyncInvoke(action, () => { });
        }

        async void AsyncInvoke(Action action, Action onComplete)
        {
            busyIndicator.IsBusy = true;
            await Task.Run(() =>
            {
                Exception ex;
                if (!ExceptionMonster.EatTheException(action, "searching history", out ex))
                    MessageBox.Show(ex.Message);
            });
            onComplete();
            busyIndicator.IsBusy = false;
        }

        class Result
        {
            public DateTime Time { get; private set; }
            public string Name { get; private set; }
            public UserStatus Status { get; private set; }

            public Result(StatusUpdate update)
            {
                Time = update.Stamp.ToLocalTime();
                Name = update.ContactName;
                Status = (UserStatus)update.StatusCode;
            }
        }
    }
}
