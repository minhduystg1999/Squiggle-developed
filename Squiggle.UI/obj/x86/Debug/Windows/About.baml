   M S B A M L   `   `   `  ����C  ?Squiggle, Version=3.4.4.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:Squiggle.UI.StickyWindowSquiggle.UI.StickyWindow  5          Squiggle.UI.Windows.About   1sticky&clr-namespace:Squiggle.UI.StickyWindow  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  About Squiggle Messenger��5   	   $	��308��6*   $	��393��67    � WindowStyle$ 
ToolWindow=�6C    � 
ResizeMode$ NoResize=�6\    � WindowStartupLocation$ CenterOwner=�6r    � ShowInTaskbar .  .��5      � -   5         �Name$ 
LayoutRoot��5       � ColumnDefinitions 5   
   �� 5      $
��248* �6   �� 5      $
��123* �6   ��5
   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      � 	 � Color$	 	#FFFCFCFC��6   
 � Offset$
 0.085Q�61   � 5      $	 	#FFECECEC��6   $
 0.483Q�61   5       � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��10q�6.   $��2��6:   .+�5      �� $��48��6   $��/Images/chat.png��6    $
��None=�6:   �� 5      $��Squiggle LAN Messenger��6   $��5q�66   $��18(�6A   $
��Bold"�6O   $��Arial)�6a   $��Center=�6u   5      �� 5   
   $ Vertical=�6   $��1��6,   $��10q�69   $��2��6E   .+�5      �� $��Squiggle LAN Messenger��6   �� 5      -   5         ��Name$ 
txtVersion��5      $��0,10,0,0q�6,   �� 5      $��0,10,0,0q�6   64Copyright © 2010 Overroot Inc. All rights reserved.6`   �� 5      $��0,30,0,0q�6   $ 
Horizontal=�6+   .+�5      �� 
Website:6&   �� 5      $��10,0,0,0q�6   �� 5       -   5        $��http://www.overroot.com?�5        .�6m   www.overroot.com6   5!      5"      �� 5#      $ 
Horizontal=�6   $��0,10,0,0q�62   .+�5$      �� 
Support:6&   �� 5%      $��10,0,0,0q�6   �� 6/   -   5        $��mailto:hasan@overroot.com?�5%   9   .�6�   �� $�hasan@overroot.com��6�   6�   6�   5&      5'      �� 5(   
   $��2��6   $ 
Horizontal=�6"   $��10,10,10,10q�6;   .+�5)      �� Built from:6%   �� 5*      $��10,0,0,0q�6   �� 5+      -   5         ��Name$ 
lnkGitHash��5+       $�� ?�64   6l   5,      5-      �� 5.   
   -   5        $��Close��5.       �� IsCancel .  �� 	IsDefault . $��Right=�6B   $��2��6^   $��23��6k   $��60��6w   $��
0,10,10,10q�6�   $��1��6�   5/      50      