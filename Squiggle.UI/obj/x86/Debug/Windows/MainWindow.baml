   M S B A M L   `   `   `  ����C  ?Squiggle, Version=3.4.4.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:Squiggle.UI.StickyWindowSquiggle.UI.StickyWindow  5      J FSquiggle.Client, Version=3.4.4.0, Culture=neutral, PublicKeyToken=nullJ6clr-namespace:Squiggle.Client;assembly=Squiggle.ClientSquiggle.Client 5      ;"clr-namespace:Squiggle.UI.ControlsSquiggle.UI.Controls  5      U/clr-namespace:Hardcodet.Wpf.TaskbarNotification!Hardcodet.Wpf.TaskbarNotification  5      9!clr-namespace:Squiggle.UI.HelpersSquiggle.UI.Helpers  5      ?$clr-namespace:Squiggle.UI.ConvertersSquiggle.UI.Converters  5	      $    Squiggle.UI.Windows.MainWindow   5      1sticky&clr-namespace:Squiggle.UI.StickyWindow  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      Echat6clr-namespace:Squiggle.Client;assembly=Squiggle.Client    5      5controls"clr-namespace:Squiggle.UI.Controls    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @tray/clr-namespace:Hardcodet.Wpf.TaskbarNotification     5      3local!clr-namespace:Squiggle.UI.Helpers     5      ;
converters$clr-namespace:Squiggle.UI.Converters     5	      /   )Squiggle.UI.StickyWindow.StickyWindowBase    Loaded$  Window_Loaded��5         Closing$ Window_Closing��6    � Icon$) #/Squiggle;component/Images/Chat.ico��5
      $	��303��5       � Title 5
      �� *Title+ � 	Resources 5      .  (Squiggle.UI.Converters.AllEqualConverter   equalConverter,   &Squiggle.UI.Converters.StatusConverter  statusConverter.   (Squiggle.UI.Converters.TrayIconConverter  trayIconConverter S� 
MethodName S� 
ObjectType)  #Squiggle.UI.Helpers.SquiggleUtility  AvailableUserStatus  onlineBuddiesMenu �� 
TargetType �� Property	 �� Value  signedInMenu  statusMenuItem
 �� 	Converter `� 	Converter �� Path �� RelativeSource �� AncestorType  
statusMenu �� BasedOn �� Source  blinkTrayIcon �� 
TargetName �� TargetProperty  System.Windows.Visibility   	Collapsed R� Value R� KeyTime   Visible��%�  &	        &	      &	 &     &	 9     &	 ~     &	 �     &	 8    7  7   &	 a    7  7  7  &	 �      5   
   6'     5   
   6%     5   
   6'   S� 5   
   $ GetChangableStatuses��6   "  5      5      �� 5   
   " m�6*   .�5      ��  � {�	 6*   �� *AnyoneOnline+5      �� 5   
   " m�6%   �5      �� 5       � {�	 6.   �� *
IsLoggedIn+5      �� 5   
   " m�6'   �5      �� 5       � ��	 6+   �� 8
   �� 5        �@m�	IsChecked	 5!      `� 5"      8  .1�5#      �� $% DataContext.LoggedInUser.Status�6u    6&   �� *FindAncestor+" m�6u   �� 5$      $ .�6&   5%      5'      5)      �� 5*   
   " m�6#   8   �5+      �� 5,       � ��	 60   �� 8  �� 5-       � ��8	  67   5/      �� 50   
   .��51      T� $ trayIcon��6,   $	 Tag�6M   ..�52      i� # Z 6)   $ 0:0:0.25��6Q   i� 53      # Z 6)   $ 0:0:0.5��6O   i� 54      # Z 6)   $ 0:0:0.75��6Q   i� 55      # Z 6)   $ 0:0:1��6O   i� 56      # Z 6)   $ 0:0:1.25��6Q   i� 57      # Z 6)   $ 0:0:1.5��6O   i� 58      # Z 6)   $ 0:0:1.75��6Q   i� 59      # Z 6)   $ 0:0:2��6O   i� 5:      # Z 6)   $ 0:0:2.25��6Q   i� 5;      # Z 6)   $ 0:0:2.5��6O   i� 5<      # Z 6)   $ 0:0:2.75��6Q   i� 5=      # Z 6)   $ 0:0:3��6O   5>      5?      5@      .��5A      � -   5         �Name$ 
LayoutRoot��5A       	 flowDirection#��[	 6    � RowDefinitions 5B   
   �� 5C      $
��Auto �6   �� 5D      .+�5F   
   3   -Hardcodet.Wpf.TaskbarNotification.TaskbarIcon  -   5          Name$ trayIcon��5F   J   3   -Hardcodet.Wpf.TaskbarNotification.TaskbarIcon   TrayLeftMouseDown$  trayIcon_TrayLeftMouseDown��6      ToolTipText 6\   �� *LoggedInUser.Status+ �� FallbackValue$ Offline��   
IconSource 5G      `� 5H      # [ 6   .1�5I      �� $ LoggedInUser.Status�6   $ Offline��69   �� 5J      $	 Tag�6E    6   �� *Self+6E   5K       � ContextMenu 5M      �� 5N      .@�5O      m� -   5         
 MainWindow_TrayMenu_Open#��[
 5O      6R   m� 5P      -   5         $  MainWindow_TrayMenu_ChangeStatus#��[ 5P      #��[ 5R      m� 5S      -   5          MainWindow_TrayMenu_SignOut#��[ 5S      #��[ 5U      m� 5V      -   5          MainWindow_TrayMenu_Quit#��[ 5V      6R   5W      5Y      o� 5Z   
   $��0��6   ��5[      �� 5\       �� EndPoint$ 0.5,1&�6&     �� 
StartPoint$  0.5,0&�67   .��5]      � ! � Color$! 	#FFEFEEF3��6#   " � Offset$" 0.125Q�65   � 5^      $! 	#FFD8DDE6��6#   $" 0.312Q�65   � 5_      $! 	#FFECECEC��6#   $" 0.875Q�65   5`      .@�5b      m�   MainWindow_MainMenu_File#��[ 6   .@�5c      m� -   5          MainWindow_MainMenu_SignOut#��[ 5c      #��[ 5e      �� 5f      m� 5g      -   5          MainWindow_MainMenu_Status#��[ 5g      #��[ 5h      5i      �� 5j      m� 5k      -	   5         ! MainWindow_MainMenu_OpenFiles#��[ 5k      6S   �� 5l      m� 5m      -
   5          MainWindow_MainMenu_Close#��[ 5m      6O   5n      m� 5o        MainWindow_MainMenu_Actions#��[ 6   .@�5p      m� -   5         # MainWindow_MainMenu_SendMessage#��[ 5p      #��[ 6U   6�   m� 5q      -   5         # MainWindow_SendBroadcastMessage#��[ 5q      #��[ 6U   6�   m� 5r      -   5           MainWindow_MainMenu_SendFile#��[ 5r      #��[ 6R   6}   5s      m� 5t        MainWindow_MainMenu_Tools#��[ 6   .@�5u      m� -   5        # m�Name$# mnuGroupBuddies��5u       $  MainWindow_MainMenu_GroupBuddies#��[ 64   #��[ 6�   m� 5v       # MainWindow_MainMenu_SortBuddies#��[ 6   #��[ 6U   .@�5w      m� -   5        $# mnuSortByName��5w       " MainWindow_MainMenu_SortByName#��[ 66   
$ � Tag$$ DisplayName��6�   m� 5x      -   5        $# mnuSortByStatus��5x       $  MainWindow_MainMenu_SortByStatus#��[ 68   $$ Status��6�   5y      m� 5z      -   5         % !MainWindow_MainMenu_HistoryViewer#��[ 5z      6W   m� 5{      -   5           MainWindow_MainMenu_Settings#��[ 5{      6R   5|      m� 5}        MainWindow_MainMenu_Help#��[ 6   .@�5~      m� -   5          Global_Menu_About#��[ 5~      6G   5      5�      ,	   &Squiggle.UI.Controls.ChatClientControl	  5�   
   -   5        % 	 Name$% chatControl��5�   M   $��1��6%   $
��Auto��62   $
��Auto��6?   6M   (
   "Squiggle.UI.Controls.BusyIndicator
  5�   
   -   5        & 
 Name$& busyIndicator��5�   !   $��1��68      MainWindow_PleaseWait' 
  Message#' [  6E   5�      5�      