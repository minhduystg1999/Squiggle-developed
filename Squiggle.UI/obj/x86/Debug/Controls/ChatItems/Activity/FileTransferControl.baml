   M S B A M L   `   `   `  ����C  ?Squiggle, Version=3.4.4.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Squiggle.UI.ControlsSquiggle.UI.Controls  5      ?$clr-namespace:Squiggle.UI.ConvertersSquiggle.UI.Converters  5      A    ;Squiggle.UI.Controls.ChatItems.Activity.FileTransferControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      7controls"clr-namespace:Squiggle.UI.Controls     5      ;
converters$clr-namespace:Squiggle.UI.Converters     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -   5          >�Name$  fileTransferControl��5
       � 	Resources 5      0   *Squiggle.UI.Converters.FileToIconConverter   fic��%   &	          5   
   6)   5      .��5      � .+�5   
   �  � Orientation$ 
Horizontal=�6   .+�5      �� $��	0,0,100,0q�6    �� Orientation$ 
Horizontal=�6s    � DataContext 6,   ��  �� ElementName$ fileTransferControl�� �� Path$ FileName�.+�5      �� -   5         ��Name$	 img��5      $��32��6%   $��32��61    � ToolTip 5      �� 0   *Squiggle.UI.Converters.PathToNameConverter	   Instance
 �� 	Converter#
 Z	 ��5      `� 5       `� 	Converter# [  6'   .1�5      �� 5      5      �� 5      $��5,5,0,0q�6   $��Bottom=�6.   $ Vertical=�6I   .+�5      �� $��10(�6    $��CharacterEllipsis=�5   $   $��Bottom=�6E   ��5   .   �� #
 Z	 5   E   �� 5      $��0,0,0,0q�6    
�������$��10(�6C   ��6Q   �� $ fileTransferControl��$ Status�5      5      � 5      .+�5       �� -   5         ��Name$ stkInvitation��5       $ 
Horizontal=�64   $y�Hidden=�6M   .+�5!      �� -   5          Activity_Accept#��[ 5!      $��Center=�6H   $��9(�6j   $��15��6w   $��60��6�   $��5,0,0,0q�6�     BlackGlassButton#���  5"      
�������6K   �� 5#      -   5          FileTransfer_SaveAs#��[ 5#      $��Center=�6L   $��9(�6n   $��15��6{   $��60��6�   $��5,0,0,0q�6�   #���  5$      
�������6K   �� 5%      -   5          Activity_Reject#��[ 5%      $��Center=�6H   $��9(�6j   $��15��6w   $��60��6�   $��5,0,0,0q�6�   #���  5&      
�������6K   5'      �� 5(      -   5        $ stkWaitingAcceptance��5(      $ 
Horizontal=�6;   $y�Hidden=�6T   .+�5)      �  � IsIndeterminate . $	��200��69   $��15��6E   �� 5*      -   5         ��Name$ btnCancelTransfer��5*      #��[ 68   $��Center=�6c   $��9(�6�   $��15��6�   $��60��6�   $��10,0,0,0q�6�   #���  5+      
�������6K   5,      �� 5-      -	   5        $ stkAccepted��5-      $ 
Horizontal=�62   $y�Hidden=�6K   .+�5.      � -
   5         �Name$ progress��5.   "   $��15��64   $	��200��6@   �� 5/      -   5          Activity_Cancel#��[ 5/      $��Center=�6H   $��9(�6j   $��15��6w   $��60��6�   $��5,0,0,0q�6�   #���  50      
�������6K   51      �� 52      -   5        $ stkCompleted��52      $ 
Horizontal=�63   $y�Hidden=�6L   .+�53      �� -   5          FileTransfer_Open#��[ 53      $��Center=�6J   $��9(�6l   $��15��6y   $��60��6�   $��0,0,30,0q�6�   #���  54      
�������6K   �� 55      $��Center=�6    $��10(�6;   �� 56      -   5        .�56   @   ��   ChatWindow_ShowInFolder#��[ 6J   6~   57      58      59      5:      5<      5=      