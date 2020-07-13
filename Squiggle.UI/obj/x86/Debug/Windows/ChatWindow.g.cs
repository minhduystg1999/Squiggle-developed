﻿#pragma checksum "..\..\..\..\Windows\ChatWindow.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "CA0DF050F581BCE6552C5AC3651047B9AFEF62EC"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using FluidKit.Helpers.DragDrop;
using Squiggle.UI;
using Squiggle.UI.Controls;
using Squiggle.UI.StickyWindow;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Squiggle.UI.Windows {
    
    
    /// <summary>
    /// ChatWindow
    /// </summary>
    public partial class ChatWindow : Squiggle.UI.StickyWindow.StickyWindowBase, System.Windows.Markup.IComponentConnector {
        
        
        #line 7 "..\..\..\..\Windows\ChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal Squiggle.UI.Windows.ChatWindow chatWindow;
        
        #line default
        #line hidden
        
        
        #line 21 "..\..\..\..\Windows\ChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid LayoutRoot;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\..\..\Windows\ChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.MenuItem mnuSendFile;
        
        #line default
        #line hidden
        
        
        #line 56 "..\..\..\..\Windows\ChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.MenuItem mnuInviteContact;
        
        #line default
        #line hidden
        
        
        #line 57 "..\..\..\..\Windows\ChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.MenuItem mnuStartActivity;
        
        #line default
        #line hidden
        
        
        #line 58 "..\..\..\..\Windows\ChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.MenuItem mnuNoActivity;
        
        #line default
        #line hidden
        
        
        #line 72 "..\..\..\..\Windows\ChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.RowDefinition messagePanel;
        
        #line default
        #line hidden
        
        
        #line 79 "..\..\..\..\Windows\ChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Border buddyOfflineMessage;
        
        #line default
        #line hidden
        
        
        #line 82 "..\..\..\..\Windows\ChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal Squiggle.UI.Controls.ChatTextBox chatTextBox;
        
        #line default
        #line hidden
        
        
        #line 84 "..\..\..\..\Windows\ChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Expander expanderDisplayPics;
        
        #line default
        #line hidden
        
        
        #line 87 "..\..\..\..\Windows\ChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ItemsControl displayPicsItemControl;
        
        #line default
        #line hidden
        
        
        #line 146 "..\..\..\..\Windows\ChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnSendFile;
        
        #line default
        #line hidden
        
        
        #line 187 "..\..\..\..\Windows\ChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal Squiggle.UI.Controls.VoiceChatToolbarControl voiceController;
        
        #line default
        #line hidden
        
        
        #line 190 "..\..\..\..\Windows\ChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal Squiggle.UI.Controls.MessageEditBox txtMessageEditBox;
        
        #line default
        #line hidden
        
        
        #line 194 "..\..\..\..\Windows\ChatWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txbStatus;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Squiggle;component/windows/chatwindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Windows\ChatWindow.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal System.Delegate _CreateDelegate(System.Type delegateType, string handler) {
            return System.Delegate.CreateDelegate(delegateType, this, handler);
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.chatWindow = ((Squiggle.UI.Windows.ChatWindow)(target));
            return;
            case 2:
            this.LayoutRoot = ((System.Windows.Controls.Grid)(target));
            return;
            case 3:
            
            #line 37 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.SaveMenu_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            
            #line 38 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.SaveAsMenu_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.mnuSendFile = ((System.Windows.Controls.MenuItem)(target));
            
            #line 40 "..\..\..\..\Windows\ChatWindow.xaml"
            this.mnuSendFile.Click += new System.Windows.RoutedEventHandler(this.SendFileMenu_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            
            #line 41 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.OpenReceivedFilesMenu_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            
            #line 43 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.CloseMenu_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            
            #line 46 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.UndoMenu_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            
            #line 48 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.CutMenu_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            
            #line 49 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.CopyMenu_Click);
            
            #line default
            #line hidden
            return;
            case 11:
            
            #line 50 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.PasteMenu_Click);
            
            #line default
            #line hidden
            return;
            case 12:
            
            #line 51 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.DeleteMenu_Click);
            
            #line default
            #line hidden
            return;
            case 13:
            
            #line 53 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.SelectAllMenu_Click);
            
            #line default
            #line hidden
            return;
            case 14:
            this.mnuInviteContact = ((System.Windows.Controls.MenuItem)(target));
            
            #line 56 "..\..\..\..\Windows\ChatWindow.xaml"
            this.mnuInviteContact.Click += new System.Windows.RoutedEventHandler(this.InviteContactMenu_Click);
            
            #line default
            #line hidden
            return;
            case 15:
            this.mnuStartActivity = ((System.Windows.Controls.MenuItem)(target));
            return;
            case 16:
            this.mnuNoActivity = ((System.Windows.Controls.MenuItem)(target));
            return;
            case 17:
            
            #line 62 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.SettingsMenu_Click);
            
            #line default
            #line hidden
            return;
            case 18:
            
            #line 65 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.AboutMenu_Click);
            
            #line default
            #line hidden
            return;
            case 19:
            this.messagePanel = ((System.Windows.Controls.RowDefinition)(target));
            return;
            case 20:
            this.buddyOfflineMessage = ((System.Windows.Controls.Border)(target));
            return;
            case 21:
            this.chatTextBox = ((Squiggle.UI.Controls.ChatTextBox)(target));
            return;
            case 22:
            this.expanderDisplayPics = ((System.Windows.Controls.Expander)(target));
            
            #line 85 "..\..\..\..\Windows\ChatWindow.xaml"
            this.expanderDisplayPics.Expanded += new System.Windows.RoutedEventHandler(this.Expander_Expanded);
            
            #line default
            #line hidden
            
            #line 85 "..\..\..\..\Windows\ChatWindow.xaml"
            this.expanderDisplayPics.Collapsed += new System.Windows.RoutedEventHandler(this.Expander_Collapsed);
            
            #line default
            #line hidden
            return;
            case 23:
            this.displayPicsItemControl = ((System.Windows.Controls.ItemsControl)(target));
            return;
            case 24:
            this.btnSendFile = ((System.Windows.Controls.Button)(target));
            
            #line 148 "..\..\..\..\Windows\ChatWindow.xaml"
            this.btnSendFile.Click += new System.Windows.RoutedEventHandler(this.SendFile_Click);
            
            #line default
            #line hidden
            return;
            case 25:
            
            #line 153 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.SendEmail_Click);
            
            #line default
            #line hidden
            return;
            case 26:
            
            #line 158 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ChangeFont_Click);
            
            #line default
            #line hidden
            return;
            case 27:
            
            #line 163 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.SendBuzz_Click);
            
            #line default
            #line hidden
            return;
            case 28:
            
            #line 168 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.SendEmoticon_Click);
            
            #line default
            #line hidden
            return;
            case 29:
            
            #line 173 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.MuteConversation_Click);
            
            #line default
            #line hidden
            return;
            case 30:
            
            #line 178 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Like_Click);
            
            #line default
            #line hidden
            return;
            case 31:
            
            #line 183 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ChangeTitle_Click);
            
            #line default
            #line hidden
            return;
            case 32:
            this.voiceController = ((Squiggle.UI.Controls.VoiceChatToolbarControl)(target));
            return;
            case 33:
            this.txtMessageEditBox = ((Squiggle.UI.Controls.MessageEditBox)(target));
            return;
            case 34:
            this.txbStatus = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 35:
            
            #line 199 "..\..\..\..\Windows\ChatWindow.xaml"
            ((System.Windows.Controls.GridSplitter)(target)).DragCompleted += new System.Windows.Controls.Primitives.DragCompletedEventHandler(this.GridSplitter_DragCompleted);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

