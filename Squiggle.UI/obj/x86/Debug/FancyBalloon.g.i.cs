﻿#pragma checksum "..\..\..\FancyBalloon.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "708482EDEE73C1C76400913C435F6238366BE449"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Hardcodet.Wpf.TaskbarNotification;
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


namespace Squiggle.UI {
    
    
    /// <summary>
    /// FancyBalloon
    /// </summary>
    public partial class FancyBalloon : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 7 "..\..\..\FancyBalloon.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal Squiggle.UI.FancyBalloon me;
        
        #line default
        #line hidden
        
        
        #line 55 "..\..\..\FancyBalloon.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Media.Animation.BeginStoryboard FadeIn_BeginStoryboard;
        
        #line default
        #line hidden
        
        
        #line 58 "..\..\..\FancyBalloon.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Media.Animation.BeginStoryboard HighlightCloseButton_BeginStoryboard;
        
        #line default
        #line hidden
        
        
        #line 61 "..\..\..\FancyBalloon.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Media.Animation.BeginStoryboard FadeCloseButton_BeginStoryboard;
        
        #line default
        #line hidden
        
        
        #line 65 "..\..\..\FancyBalloon.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Media.Animation.BeginStoryboard FadeBack_BeginStoryboard1;
        
        #line default
        #line hidden
        
        
        #line 68 "..\..\..\FancyBalloon.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Media.Animation.BeginStoryboard FadeOut_BeginStoryboard;
        
        #line default
        #line hidden
        
        
        #line 71 "..\..\..\FancyBalloon.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid grid;
        
        #line default
        #line hidden
        
        
        #line 101 "..\..\..\FancyBalloon.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image imgClose;
        
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
            System.Uri resourceLocater = new System.Uri("/Squiggle;component/fancyballoon.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\FancyBalloon.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
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
            this.me = ((Squiggle.UI.FancyBalloon)(target));
            
            #line 9 "..\..\..\FancyBalloon.xaml"
            this.me.MouseEnter += new System.Windows.Input.MouseEventHandler(this.Baloon_MouseEnter);
            
            #line default
            #line hidden
            
            #line 9 "..\..\..\FancyBalloon.xaml"
            this.me.MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.me_MouseDown);
            
            #line default
            #line hidden
            return;
            case 2:
            
            #line 22 "..\..\..\FancyBalloon.xaml"
            ((System.Windows.Media.Animation.Storyboard)(target)).Completed += new System.EventHandler(this.OnFadeInCompleted);
            
            #line default
            #line hidden
            return;
            case 3:
            
            #line 46 "..\..\..\FancyBalloon.xaml"
            ((System.Windows.Media.Animation.Storyboard)(target)).Completed += new System.EventHandler(this.OnFadeOutCompleted);
            
            #line default
            #line hidden
            return;
            case 4:
            this.FadeIn_BeginStoryboard = ((System.Windows.Media.Animation.BeginStoryboard)(target));
            return;
            case 5:
            this.HighlightCloseButton_BeginStoryboard = ((System.Windows.Media.Animation.BeginStoryboard)(target));
            return;
            case 6:
            this.FadeCloseButton_BeginStoryboard = ((System.Windows.Media.Animation.BeginStoryboard)(target));
            return;
            case 7:
            this.FadeBack_BeginStoryboard1 = ((System.Windows.Media.Animation.BeginStoryboard)(target));
            return;
            case 8:
            this.FadeOut_BeginStoryboard = ((System.Windows.Media.Animation.BeginStoryboard)(target));
            return;
            case 9:
            this.grid = ((System.Windows.Controls.Grid)(target));
            
            #line 71 "..\..\..\FancyBalloon.xaml"
            this.grid.MouseEnter += new System.Windows.Input.MouseEventHandler(this.grid_MouseEnter);
            
            #line default
            #line hidden
            return;
            case 10:
            
            #line 99 "..\..\..\FancyBalloon.xaml"
            ((System.Windows.Controls.TextBlock)(target)).MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.TextBlock_MouseDown);
            
            #line default
            #line hidden
            return;
            case 11:
            this.imgClose = ((System.Windows.Controls.Image)(target));
            
            #line 101 "..\..\..\FancyBalloon.xaml"
            this.imgClose.MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.imgClose_MouseDown);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

