   M S B A M L   `   `   `  ����C  ?Squiggle, Version=3.4.4.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:Squiggle.UI.StickyWindowSquiggle.UI.StickyWindow  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      ;"clr-namespace:Squiggle.UI.SettingsSquiggle.UI.Settings  5      ?$clr-namespace:Squiggle.UI.ConvertersSquiggle.UI.Converters  5	      (    "Squiggle.UI.Windows.SettingsWindow   5      1sticky&clr-namespace:Squiggle.UI.StickyWindow  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      6sys&clr-namespace:System;assembly=mscorlib     5      7settings"clr-namespace:Squiggle.UI.Settings     5      ;
converters$clr-namespace:Squiggle.UI.Converters     5	      /   )Squiggle.UI.StickyWindow.StickyWindowBase    KeyDown$  Window_KeyDown��5
         Loaded$ Window_Loaded��6    � Title$ Squiggle Settings��5      $	��380��6   $	��460��6,    � Icon$) #/Squiggle;component/Images/Chat.ico��5       � ShowInTaskbar .   � WindowStartupLocation$ CenterOwner=�5       � 
ResizeMode$ NoResize=�6)    � 	Resources 5         DialogBackground �� Color  WorkAreaBackgroud  	viewTypes	 S� 
ObjectType  System.Enum
 S� 
MethodName S� MethodParameters M� TypeName  
sortFields��%m  &	        &	 #     &	 F     &	 �     �� 5   
   $ 	#FFF0F0F0��63   �� 5   
   $ 	#FFD2D8DE��64   S� 5   
   "	  5      $
 	GetValues��5       5      M� 5      $ settings:ContactListView��6   5      S� 5   
   "	  5      $
 	GetValues��5       5      M� 5      $# settings:ContactListSortField��6   5      5      .��5      � -   5         �Name$ 
LayoutRoot��5        flowDirection#��[ 6   .+�5   
   �� -   5         ��Name$
 tabs��5      .@�5       ��  % !SettingsWindow_GeneralTab_Heading#��[ 6   .��5!      �  � RowDefinitions 5"      �� 5#      $
��Auto �6(   �� 5$      $��* �6(   �� 5%      $
��Auto �6(   .+�5'      �� $��0��6    $��5q�6-   $
��Bold"�68    ( $SettingsWindow_GeneralTab_SubHeading#��[ 6J   �� 5(      $��1��6   #��[ 6*   
���   �$��1q�6n    �� CornerRadius$ 3��6�   $��5q�6�   ._�5)      � $��10q�6    5*      �� 5+   "   $
��Auto �60   �� 5,   "   $
��Auto �60   .+�5.      � $��0��6#   $��5,0,0,0q�60    5/   "   �� 50   &   $
��Auto �64   �� 51   &   $
��Auto �64   �� 52   &   $
��Auto �64   �� 53   &   $
��Auto �64   �� 54   &   $
��Auto �64   �� 55   &   $
��Auto �64   �� 56   &   $
��Auto �64   .+�59   "   �� $��0��6+   $��0,0,0,5q�68    * &SettingsWindow_GeneralTab_RunOnStartup#��[ 5:   +    d� 	IsChecked 6m   ��  �� Path$" GeneralSettings.RunAtStartup��� 5;   "   $��1��6+   $��0,0,0,5q�68    ) %SettingsWindow_GeneralTab_CloseToTray#��[ 5<   ,    6m   �� $&  GeneralSettings.HideToSystemTray��� 5=   "   $��2��6+   $��0,0,0,5q�68    (	 $SettingsWindow_GeneralTab_ShowPopups#��[	 5>   ,    6l   �� $  GeneralSettings.ShowPopups��� 5?   "   $��3��6+   $��0,0,0,5q�68    )
 %SettingsWindow_GeneralTab_AudioAlerts#��[
 5@   ,    6m   �� $! GeneralSettings.AudioAlerts��� 5A   "   $��4��6+   $��0,0,0,5q�68    + 'SettingsWindow_GeneralTab_StatusLogging#��[ 5B   ,    6o   �� $) #GeneralSettings.EnableStatusLogging��� 5C   "   $��5��6+   $��0,0,0,5q�68    - )SettingsWindow_GeneralTab_CheckForUpdates#��[ 5D   ,    6q   �� $% GeneralSettings.CheckForUpdates�5E      � 5F      $��1��6#   $��5,10,0,0q�60    5G   "   �� 5H   &   �� 5I   &    � ColumnDefinitions 5K   "   �� 5L   &   $	��113 �67   �� 5M   &   $	��283 �67   .+�5P   "   �� $��1��6,    - )SettingsWindow_GeneralTab_DownloadsFolder#��[ 69   $��2��6{   $��0q�6�   �� 5Q   "   $��1��6-   $��1��6:    �� Orientation$ 
Horizontal=�6J   $	��Top=�6c   $��0q�6{   .+�5R   &   �� -   5         ��Name$ txtDownloadsFolder��5R   .    �� 
IsReadOnly . $	��200��6�   ��6\   �� $% GeneralSettings.DownloadsFolder�6�   �� 5S   &   -   5         $  SettingsWindow_GeneralTab_Browse#��[ 5S   -   $��5,0,0,0q�6�   5T   #   5U      5V      5W      � 5X      $��2��6   .+�5Y      �� $��Right=�6%   $ 
Horizontal=�6A   .+�5Z      �� -   5         �� 	IsDefault .   Global_OKButton#��[ 5Z   6   $��70��6a   6l   �� 5[      -   5         �� IsCancel .   Global_CancelButton#��[ 5[   5   $��70��6d   $��5,0,0,0q�6o   6�   5\      5]      5^      5_      �� 5`      -   5         ��Name$ personalTab��5`       & "SettingsWindow_PersonalTab_Heading#��[ 6+   .��5a      �  5b      �� 5c      $
��Auto �6(   �� 5d      $��* �6(   �� 5e      $
��Auto �6(   .+�5g      �� $��0��6    $��5q�6-   $
��Bold"�68    ) %SettingsWindow_PersonalTab_SubHeading#��[ 6J   �� 5h      $��1��6   #��[ 6*   
���   �$��1q�6n   $ 3��6�   $��5q�6�   ._�5i      �  5j      �� 5k   "   $
��Auto �60   �� 5l   "   $��* �60   .+�5n      � $��1��6#   $��10q�60    5o   "   �� 5p   &   $
��Auto �64   �� 5q   &   $
��Auto �64   �� 5r   &   $
��Auto �64   �� 5s   &   $
��Auto �64   �� 5t   &   $
��Auto �64   �� 5u   &   $
��Auto �64   �� 5v   &   $
��Auto �64   �� 5w   &   $
��Auto �64   �� 5x   &   $
��Auto �64   .+�5z   "   �� $
��Left=�6,   $��5,0,0,5q�6G    * &SettingsWindow_PersonalTab_DisplayName#��[ 5{   %   �� 5|   "   $	��200��6*   $��5,0,0,5q�66   $��1��5}   *    �� 	MaxLength$ 50��67   $
��Left=�6F   $��22��5   *   $	��Top=�66   ��5~   *   �� $" PersonalSettings.DisplayName�5   6   �� 5�   "   $
��Left=�6,   $��2��6G   $��5,0,0,5q�5�   ,    - )SettingsWindow_PersonalTab_DisplayMessage#��[ 5�   ,   �� 5�   "   $	��200��6*   $
��Left=�66   $��3��6Q   $	 150��6_   $��5,0,0,5q�5�   *   $��22��6;   $	��Top=�6G   ��5�   *   �� $% PersonalSettings.DisplayMessage��� 5�   "   $
��Left=�6,   $��4��6G   $��5,0,0,5q�5�   ,    + 'SettingsWindow_PersonalTab_EmailAddress#��[ 5�   ,   �� 5�   "   $	��200��6*   $
��Left=�66   $��5��5�   *   $	 150��67   $��5,0,0,5q�6G   $��22��5�   *   $	��Top=�66   ��5�   *   �� $# PersonalSettings.EmailAddress�5�   6   �� 5�   "   $��6��6-   $ 
Horizontal=�6:   $��5,0,0,5q�6S   .+�5�   &   ��  * &SettingsWindow_PersonalTab_IdleTimeout#��[ 60   �� 5�   &   $��5,0,0,0q�6.   $
��Auto��6?   $	��Top=�6M   $��40��6e   $
��Left=�6p   ��6�   �� $" PersonalSettings.IdleTimeout��� 5�   &   $��5,0,0,0q�60   mins6G   5�   #   �� 5�   "    ) %SettingsWindow_PersonalTab_AutoSignIn#��[ 6+   $��7��5�   +   $��5,0,0,5q�68    5�   +   �� $# PersonalSettings.AutoSignMeIn��� 5�   "    ) %SettingsWindow_PersonalTab_RememberMe#��[ 6+   $��8��5�   +   $��5,0,0,5q�68    5�   +   �� $! PersonalSettings.RememberMe��� 5�   "   $��4��6-   $
��Left=�6>   $��	282,0,0,0q�6Y   .+�5�   &   �� 
���   �$��.5q�6A   $��81��6V   ._�5�   *   �� $	��Top=�60   $��98��6H   $��1��6S   ��5�   ,   �� *PersonalSettings.DisplayImage+5�   '   �� 5�   &   $��Right=�61   $��0,5,0,0q�6M   $ 
Horizontal=�6^   .+�5�   *   �� -   5        $��btnSetDisplayImage��5�   1    + 'SettingsWindow_PersonalTab_DisplayImage#��[ 5�   1   $��23��6t   5�   K   �� 5�   *   -	   5        $��btnClearDisplayImage��5�   1   ��5�   .   �� 5�   2    �� 
TargetType" ��68     CloseButtonStyle �� BasedOn# [ 6L    �� Triggers 5�   6   �� 5�   :    �� Binding 6F   �� *PersonalSettings.DisplayImage+ �� Value 6x   Z� .a�5�   >   ��   �� Property  � y�! �� Value$! 	Collapsed=�6[   5�   ;   5�   3   5�   +   5�   '   5�   #   5�      5�      5�      � 5�      $��2��6   .+�5�      �� $��Right=�6%   $ 
Horizontal=�6A   .+�5�      �� -
   5        #��[ 5�   %   $��70��6P   6[   �� 5�      -   5        #��[ 5�   %   $��70��6T   $��5,0,0,0q�6_   6p   5�      5�      5�      5�      �� 5�       " SettingsWindow_ChatTab_Heading#��[ 6   .��5�      �  5�      �� 5�      $
��Auto �6(   �� 5�      $��* �6(   �� 5�      $
��Auto �6(   .+�5�      �� $��0��6    $��5q�6-   $
��Bold"�68    % !SettingsWindow_ChatTab_SubHeading#��[ 6J   �� 5�      $��1��6   #��[ 6*   
���   �$��1q�6n   $ 3��6�   $��5q�6�   ._�5�      � $��10q�6    5�      �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   .+�5�      �� $��0��6'   $��5,0,0,5q�64    ( $SettingsWindow_ChatTab_ShowEmoticons#��[ 6E    6�   �� $  ChatSettings.ShowEmoticons��� 5�      $��1��6'   $��5,0,0,5q�64    ( $SettingsWindow_ChatTab_EnableLogging#��[ 6E    6�   �� $  ChatSettings.EnableLogging��� 5�      $��2��6'   $��5,0,0,5q�64    % !SettingsWindow_ChatTab_SpellCheck#��[ 6E    6�   �� $ ChatSettings.SpellCheck��� 5�      $��3��6'   $��5,0,0,5q�64    1  -SettingsWindow_ChatTab_StealFocusOnNewMessage#��[  6E    6�   �� $) #ChatSettings.StealFocusOnNewMessage��� 5�      $��4��6'   $��5,0,0,5q�64    1! -SettingsWindow_ChatTab_ClearChatOnWindowClose#��[! 6E    6�   �� $) #ChatSettings.ClearChatOnWindowClose�5�      5�      � 5�      $��2��6   .+�5�      �� $��Right=�6%   $ 
Horizontal=�6A   .+�5�      �� -   5        #��[ 5�   %   $��70��6P   6[   �� 5�      -   5        #��[ 5�   %   $��70��6T   $��5,0,0,0q�6_   6p   5�      5�      5�      5�      �� 5�       &" "SettingsWindow_ContactsTab_Heading#��[" 6   .��5�      �  5�      �� 5�      $
��Auto �6(   �� 5�      $��* �6(   �� 5�      $
��Auto �6(   .+�5�      �� $��0��6    $��5q�6-   $
��Bold"�68    )# %SettingsWindow_ContactsTab_SubHeading#��[# 6J   �� 5�      $��1��6   #��[ 6*   
���   �$��1q�6n   $ 3��6�   $��5q�6�   ._�5�      � $��10q�6    5�      �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60    5�      �� 5�   "   $	��113 �63   �� 5�   "   $	��283 �63   .+�5�      �� $��0��6'   $��2��64   $��5,0,0,5q�6H    2$ .SettingsWindow_ContactsTab_ShowGroupedContacts#��[$ 6Y    6�   �� $# ContactSettings.GroupContacts��� 5�      $��1��6'   $��2��64   $��5,0,0,5q�6H    2% .SettingsWindow_ContactsTab_ShowOfflineContacts#��[% 6Y    6�   �� $) #ContactSettings.ShowOfflineContacts��� 5�      $��2��6(    %& !SettingsWindow_ContactsTab_SortBy#��[& 65   $��2��6o   $��10,10,226,0q�6�   �� 5�      -   5        " ��Name$" cmbSortField��5�   '   $��2��5�   '   $��1��64   $
��Left=�6D   $	��Top=�5�   '   $	��100��6?   $��0,10,0,0q�6K   ��5�   '   �� # �� Source## [  5�   "   $ �� DataType/   )Squiggle.UI.Settings.ContactListSortField/   )Squiggle.UI.Converters.EnumValueConverter%   Instance& �� 	Converter��%\   (��       5�   3   *, +)�� 6&   "$  63   .R�5�   *   �� ��64   �� #& Z% 5�   '   5�   #   5�      �� 5�      $��3��6(    #' SettingsWindow_ContactsTab_View#��[' 65   $��2��6m   $��10,10,226,0q�6�   �� 5�      -   5        $" cmbContactsView��5�   '   $��3��5�   '   $��1��64   $
��Left=�6D   $	��Top=�5�   '   $	��100��6?   $��0,10,0,0q�6K   ��5�   '   �� ## [  5�   "   *   $Squiggle.UI.Settings.ContactListView��%\   (��       5�   3   *, +)�� 6&   "$  63   .R�5   *   �� ��64   �� #& Z% 5  '   5  #   5     5     5     � 5     $��2��6   .+�5     �� $��Right=�6%   $ 
Horizontal=�6A   .+�5     �� -   5        #��[ 5  %   $��70��6P   6[   �� 5	     -   5        #��[ 5	  %   $��70��6T   $��5,0,0,0q�6_   6p   5
     5     5     5     �� 5      (( $SettingsWindow_ConnectionTab_Heading#��[( 6   .��5     �  5     �� 5     $
��Auto �6(   �� 5     $��* �6(   �� 5     $
��Auto �6(   .+�5     �� $��0��6    $��5q�6-   $
��Bold"�68    +) 'SettingsWindow_ConnectionTab_SubHeading#��[) 6J   �� 5     $��1��6   #��[ 6*   
���   �$��1q�6n   $ 3��6�   $��5q�6�   ._�5     � $��10q�6    5     �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5   "   $
��Auto �60   �� 5!  "   $
��Auto �60   �� 5"  "   $	��64* �60    5$     �� 5%  "   $	��138 �63   �� 5&  "   $	��200 �63   �� 5'  "   $	��58* �63   .+�5)     �� $��4��6(   $��0��65    0* ,SettingsWindow_ConnectionTab_PresenceAddress#��[* 6E   �� 5*     $��4��6&   $��1��63   $��0,0,0,5q�6|   ��6C   �� $( "ConnectionSettings.PresenceAddress�6|   �� 5+     -   5        $��4��5+  %   $��2��62    &+ "SettingsWindow_ConnectionTab_Reset#��[+ 6B   $
��Left=�6�   6�   �� 5,     $��5��6(   $��0��65    -, )SettingsWindow_ConnectionTab_PresencePort#��[, 6E   �� 5-     $��5��6&   $��1��63   $��0,0,0,5q�6y   ��6C   �� $% ConnectionSettings.PresencePort�6y   �� 5.     $��6��6(   $��0��65    )- %SettingsWindow_ConnectionTab_ChatPort#��[- 6E   �� 5/     $��6��6&   $��1��63   $��0,0,0,5q�6u   ��6C   �� $! ConnectionSettings.ChatPort�6u   �� 50     $��7��6(   $��0��65    .. *SettingsWindow_ConnectionTab_KeepAliveTime#��[. 6E   �� 51     $��7��6)   $��1��66   $ 
Horizontal=�6F   .+�52  "   �� $��80��6a   $��0,0,5,5q�6l   $
��Left=�6}   ��6*   �� $&  ConnectionSettings.KeepAliveTime�6}   �� 53  "   secs62   54     �� 55     $��8��6(   $��0��65    )/ %SettingsWindow_ConnectionTab_BindToIP#��[/ 6E   �� 56     $��8��6'   $��1��64   $	��150��6�   $
��Left=�6�   $��0,0,0,5q�6�   ��6D   �� $ ConnectionSettings.AllIPs�' �� SelectedValue' 6{   �� $! ConnectionSettings.BindToIP�6�   58     59     � 5:     $��2��6   .+�5;     �� $��Right=�6%   $ 
Horizontal=�6A   .+�5<     �� -   5        #��[ 5<  %   $��70��6P   6[   �� 5=     -   5        #��[ 5=  %   $��70��6T   $��5,0,0,0q�6_   6p   5>     5?     5@     5A     5B     5C     5D     