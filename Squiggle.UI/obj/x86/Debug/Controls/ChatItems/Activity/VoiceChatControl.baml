   M S B A M L   `   `   `  ����  Squiggle>    8Squiggle.UI.Controls.ChatItems.Activity.VoiceChatControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -   5          >�Name$  voiceChatControl��5      .��5	      � .+�5
   
   �� -   5         ��Name$ stkInvitation��5
       �� Orientation$ 
Horizontal=�6,   $y�Hidden=�6E   .+�5      (� $��24��6   $��24��6"   .��5      �� $��/Images/vc-startcall.png��6   5      �� 5      -   5         ��Name$" txbWaitingReceivedAcceptance��5      $��5q�6>   �� 5      -   5         ��Name$ 	btnAccept��5         Activity_Accept#��[  6(   $��Center=�6S   $��9(�6u   $��15��6�   $��60��6�   $��5,0,0,0q�6�     BlackGlassButton#���  5      
�������6K   �� 5      -   5          Activity_Reject#��[ 5      $��Center=�6@   $��9(�6b   $��15��6o   $��60��6{   $��5,0,0,0q�6�   #���  5      
�������6K   5      �� 5   
   -   5        $ stkWaitingAcceptance��5      $ 
Horizontal=�63   $y�Hidden=�6L   .+�5      (� $��24��6   $��24��6"   .��5      �� $��/Images/vc-startcall.png��6   5      �� 5      -   5        $ txbWaitingSentAcceptance��5      $��5q�6;   �� 5      -   5        $ btnCancelTransfer��5        Activity_Cancel#��[ 60   $��Center=�6[   $��9(�6}   $��15��6�   $��60��6�   $��10,0,0,0q�6�   #���  5      
�������6K   5      �� 5   
   -	   5        $ stkAccepted��5      $ 
Horizontal=�6*   $y�Hidden=�6C   .+�5      (� $��24��6   $��24��6"   .��5      �� $��/Images/vc-startcall.png��6   5      �� 5         VoiceChat_Started#��[ 6   $��5q�6B   �� 5!      -
   5          VoiceChat_EndCall#��[ 5!      $��Center=�6B   $��9(�6d   $��15��6q   $��60��6}   $��5,0,0,0q�6�   #���  5"      
�������6K   5#      �� 5$   
   -   5        $ stkCompleted��5$      $ 
Horizontal=�6+   $y�Hidden=�6D   .+�5%      (� $��24��6   $��24��6"   .��5&      �� $��/Images/vc-startcall.png��6   5'      �� 5(      $��5q�6     VoiceChat_Ended#���  6#   5)      5*      5+      