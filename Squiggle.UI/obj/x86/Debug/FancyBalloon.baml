   M S B A M L   `   `   `  ����C  ?Squiggle, Version=3.4.4.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:Hardcodet.Wpf.TaskbarNotification!Hardcodet.Wpf.TaskbarNotification  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5          Squiggle.UI.FancyBalloon   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      >tb/clr-namespace:Hardcodet.Wpf.TaskbarNotification     5      9system&clr-namespace:System;assembly=mscorlib     5      -   5          >�Name$  me��5      $	��200��5      $	��100��6    � DataContext 5
      ��5   
   Hasan is online��6)    � 	Resources 5         ToolbarBackground1 �� EndPoint �� 
StartPoint � Color � Offset  ToolbarBackground 
 FadeIn g� 	BeginTime �� 
TargetName	 �� TargetProperty
 O� KeyTime O� Value  HighlightCloseButton  FadeCloseButton  FadeBack  FadeOut��%�  &	        &	 �     &	 C    &	 &    &	 	    &	 �    &	 �    �� 5   
   $ 0.5,1&�69   $ 0.5,0&�6J   .��5      � $ 	#FFFCFCFD��6   $
 0.04Q�6-   � 5      $ 	#FFE5E5F1��6   $
 0.99Q�6-   5      �� 5   
   $ 0.5,1&�68   $ 0.5,0&�6I   .��5      � $ 	#FFE2F4FB��6   $	 0.4Q�6-   � 5      $ 	#FFD8EAF1��6   $
 0.45Q�6-   5      �� 5   
   -   5        .��5      U� $ 00:00:00X�6#   $
 grid��68   $	 (UIElement.Opacity)�6U   .\�5      �� $
 00:00:00��6   $ 0Q�6.   �� 5      $
 00:00:01��6   $ 2Q�6.   5      5      �� 5      .��5      U� $ 00:00:00X�6#   $ imgClose��68   $	 (UIElement.Opacity)�6Y   .\�5      �� $
 00:00:00��6   $	 0.4Q�6.   �� 5      $
 00:00:00.3000000��6   $ 1Q�66   5       5!      �� 5"      .��5#      U� $ 00:00:00X�6#   $ imgClose��68   $	 (UIElement.Opacity)�6Y   .\�5$      �� $
 00:00:00��6   $ 1Q�6.   �� 5%      $
 00:00:00.3000000��6   $	 0.4Q�66   5&      5'      �� 5(      .��5)      U� $ 00:00:00X�6#   $
 grid��68   $	 (UIElement.Opacity)�6U   .\�5*      �� $
 00:00:00��6   $ 1Q�6.   �� 5+      $
 00:00:00.3000000��6   $ 1Q�66   5,      5-      �� 5.      -   5        .��5/      U� $ 00:00:00X�6#   $
 grid��68   $	 (UIElement.Opacity)�6U   .\�50      �� $
 00:00:00��6   $ 1Q�6.   �� 51      $
 00:00:00.3000000��6   $	 0.2Q�66   52      53      54       � Triggers 55      :� 56       :� RoutedEvent$# tb:TaskbarIcon.BalloonShowing��6   .[�57      �� -   5         ��Name$ FadeIn_BeginStoryboard��57   :   #��[ 6   6:   58      :� 59      $ Mouse.MouseEnter��6    :� 
SourceName$ imgClose��60   .[�5:      �� -   5        $* $HighlightCloseButton_BeginStoryboard��5:   H   #��[ 6   6H   5;      :� 5<      $ Mouse.MouseLeave��6   $ imgClose��60   .[�5=      �� -   5        $% FadeCloseButton_BeginStoryboard��5=   C   #��[ 6   6C   5>      :� 5?      $ Mouse.MouseEnter��6   .[�5@      ��  �� BeginStoryboardName$ FadeIn_BeginStoryboard��6   �� 5A      -   5        $ FadeBack_BeginStoryboard1��5A      #��[ 68   5B      :� 5C      $# tb:TaskbarIcon.BalloonClosing��6   .[�5D      �� -   5        $ FadeOut_BeginStoryboard��5D   ;   #��[ 6   6;   5E      .��5G      � -	   5         �Name$
 grid��5G        flowDirection#��[ 66   ��5H   
   �� 5I      $ 0.5,1&�6"   $ 0.5,0&�63   .��5J      � $ 	#FFF9F9F9��6   $ 0.111Q�61   � 5K      $ 	#FFE4E4E4��6   $ 0.593Q�61   5L       � RowDefinitions 5N      �� 5O      $
��Auto �6   �� 5P      $��* �6   .+�5S   
   �� ._�5T      �� $��Squiggle Messenger��6   $
��Bold"�62   $��Center=�6D   $��Bottom=�6a   5U      �� 5V      $��1��6   $��Stretch=�5W      $��5q�5X      $��1,1,1,1q�5Y      
����ح� J� Effect 5[      3  -System.Windows.Media.Effects.DropShadowEffect  5\         Color$ 	LightGray��6   ._�5_   
   �� -
   5         � Cursor$
 Hand��5_      $��Center=�6"   $��Center=�5`      $��10,5,0,0q�6/   ���	#FF151561$
��Wrap=�5a   +   $��CharacterEllipsis=�5b   %   ��6   �� 5c      5d      �� 5e   
   -   5         ��Name$ imgClose��5e   �   $��Right=�6   $��	0,10,10,0q�6,   $	��Top=�6?   $��16��6W   $��16��6b   $��/Images/Close.png��6n   $
��Fill=�6�    J� Opacity$	 0.4Q�6�    � ToolTip$ Close Balloon��6�   $��1��6�   �� 5f   
   $��Right=�6   $��Bottom=�60   $��0,0,10,5q�6K   $��1��6]   
�������5g      5h      5i      