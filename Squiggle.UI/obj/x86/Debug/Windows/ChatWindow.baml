   M S B A M L   `   `   `  ����C  ?Squiggle, Version=3.4.4.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:Squiggle.UI.StickyWindowSquiggle.UI.StickyWindow  5      ;"clr-namespace:Squiggle.UI.ControlsSquiggle.UI.Controls  5      )clr-namespace:Squiggle.UISquiggle.UI  5      C ?FluidKit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW9clr-namespace:FluidKit.Helpers.DragDrop;assembly=FluidKitFluidKit.Helpers.DragDrop 5      $    Squiggle.UI.Windows.ChatWindow   5      1sticky&clr-namespace:Squiggle.UI.StickyWindow  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      5controls"clr-namespace:Squiggle.UI.Controls    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      +localclr-namespace:Squiggle.UI     5      Ndragdrop9clr-namespace:FluidKit.Helpers.DragDrop;assembly=FluidKit     5      -   5        /   )Squiggle.UI.StickyWindow.StickyWindowBase   Name$  
chatWindow��5      /   )Squiggle.UI.StickyWindow.StickyWindowBase   Loaded$ Window_Loaded��5	         	Activated$ Window_Activated��6      KeyDown$ Window_KeyDown��69      SizeChanged$ Window_SizeChanged��5
       � Title$ 
ChatWindow��5       � Icon$) #/Squiggle;component/Images/chat.ico��5
   &    � 	Resources 5       �� MergedDictionaries	 �� Source.  (Squiggle.UI.Controls.ChatDragDropAdvisor   Key�� 5   
    5      �� 5      $	 /Resources/Expanders.xaml?�6%   �� 5        5      contactDragDrop  63   5      %    5      .��5      � -   5        
 �Name$
 
LayoutRoot��5   "   ���	#FFF3F3F3  contactDragDrop/  )FluidKit.Helpers.DragDrop.DragDropManager   DropTargetAdvisor# �  5        flowDirection#��[ 5       � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      .+�5   
   o� ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      �  � Color$ 	#FFEFEEF3��6#    � Offset$ 0.125Q�65   � 5       $ 	#FFD8DDE6��6#   $ 0.312Q�65   � 5!      $ 	#FFECECEC��6#   $ 0.875Q�65   5"      .@�5$      m�   ChatWindow_MainMenu_File#��[ 6   .@�5%      m� -   5          ChatWindow_MainMenu_Save#��[ 5%      6N   m� 5&      -   5          ChatWindow_MainMenu_SaveAs#��[ 5&      6P   �� 5'      m� 5(      -   5         m�Name$ mnuSendFile��5(       ! ChatWindow_MainMenu_SendAFile#��[ 60   6h   m� 5)      -   5         ) %ChatWindow_MainMenu_OpenReceivedFiles#��[ 5)      6[   �� 5*      m� 5+      -   5          ChatWindow_MainMenu_Close#��[ 5+      6O   5,      m� 5-       	 ChatWindow_MainMenu_Edit#��[	 6   .@�5.      m� -   5         
 ChatWindow_MainMenu_Undo#��[
 5.       m� InputGestureText$ Ctrl+Z��6N   {�6h   ��  �� ElementName$ txtMessageEditBox�� �� Path$ CanUndo�6�   �� 5/      m� 50      -	   5          ChatWindow_MainMenu_Cut#��[ 50      $ Ctrl+X��6M   6g   m� 51      -
   5          ChatWindow_MainMenu_Copy#��[ 51      $ Ctrl+C��6N   6h   m� 52      -   5          ChatWindow_MainMenu_Paste#��[ 52      $ Ctrl+V��6O   6i   m� 53      -   5          ChatWindow_MainMenu_Delete#��[ 53      $	 Del��6P   6g   �� 54      m� 55      -   5         ! ChatWindow_MainMenu_SelectAll#��[ 55      $ Ctrl+A��6S   6m   56      m� 57        ChatWindow_MainMenu_Actions#��[ 6   .@�58      m� -   5        $ mnuInviteContact��58       % !ChatWindow_MainMenu_InviteContact#��[ 65   6q   m� 59      -   5        $ mnuStartActivity��59       % !ChatWindow_MainMenu_StartActivity#��[ 65   .@�5:      m� -   5        $ mnuNoActivity��5:       0 ,ChatWindow_MainMenu_StartActivity_NoActivity#��[ 66   {�.  6}   5;      5<      m� 5=        ChatWindow_MainMenu_Tools#��[ 6   .@�5>      m� -   5           ChatWindow_MainMenu_Settings#��[ 5>      6R   5?      m� 5@        ChatWindow_MainMenu_Help#��[ 6   .@�5A      m� -   5          Global_Menu_About#��[ 5A      6G   5B      5C      � 5D   
   $��5q�6   $��1��6    5E      �� 5F      $
��Auto �6    �� 5G      $��* �6    �� 5H      -   5         ��Name$ messagePanel��5H       $
��Auto �66    � ColumnDefinitions 5J      �� 5K      $��* �6#   �� 5L      $
��Auto �6#   .+�5N      �� -   5         ��Name$ buddyOfflineMessage��5O   ,   ���	#FFFFFFE1$y�	Collapsed=�6   ._�5P      �� $��5q�6   |�.  ��69   ��  �� StringFormat$  {0} appears to be offline.��5Q      &    Squiggle.UI.Controls.ChatTextBox  5R      -   5          Name$ chatTextBox��5R   0   &    Squiggle.UI.Controls.ChatTextBox   ItemEdit$ chatTextBox_ItemEdit��5S   P   $��1��5R   #   |�.  $
��Auto��5S   5   $
��Auto��6C   6P   9� 5T      -   5         9�Name$ expanderDisplayPics��5T        displayPicsExpanderStyle#���  64   $��1��6g   $��1��6w    9� ExpandDirection$ Right=�5U      .��5V      �� $��Hidden=�6   $
��Auto=�6F   $	��115��6i   .��5W      �� -   5         ��Name$ displayPicsItemControl��5W   #   |�.  $��5q�6U    � DataContext 6`   �� ��5X   #   �� *	Buddies+��5Y      �� 5Z      .R�5[   "   �� $��5,1,5,1q�6)   
 � Tag 6:   ��   � ToolTip  5\   &   _� 5]   *     BuddyToolTip#��[ 62   ._�5_   &   �� ! �� Orientation$! Vertical=�61   .+�5`   *   (� $��Center=�62   $��70��6O   $��70��6[   $��2q�6f   .��5a   .   �� ��5b   2   �� 5c   6   " �� 
TargetType"" ��6<   .�5d   :   �� # �� Property# � ��$ �� Value$ 6S   �� *Properties.DisplayImage+% �� Triggers% 5e   :   �� 5f   >   & �� Binding& 6J   �� *Properties.DisplayImage+' �� Value' 6v   Z� .a�5g   B   �� # � ��$$ /Images/man.png��6[   5h   ?   5j   7   5l   /   5m   +   � 5n   *   .+�5o   .   �� 
�������( �� CornerRadius$( 3��6L   $��20��6]   �� 5p   .   $��80��68   $��Center=�6F   $��Bottom=�6c   $��CharacterEllipsis=�6~   $��5q�6�   ��6�   �� *DisplayName+6�   5q   +   5r   '   5s   #   5t      5v      5w      5x      �� 5y      $��2��6   $��2��6"   $	��150��66   ._�5z      �  5{      �� 5|      $
��Auto �6(   �� 5}      $��* �6(   �� 5~      $��26 �6(    5�      �� 5�      $��* �6+   �� 5�      $
��Auto �6+   .+�5�      �� $��30��6   $��2��6)   ��5�      �� 5�      $ 0.5,1&�62   $ 0.5,0&�6C   .��5�   "   � $ 	#FFFCFCFC��6/   $ 0.087Q�6A   � 5�   "   $ 	#FFECECEC��6/   $ 0.478Q�6A   5�      ._�5�      �  5�      �� 5�   "   $
��Auto �63   �� 5�   "   $��* �63   �� 5�   "   $
��Auto �63   .+�5�      �� $! 
Horizontal=�6)   $  	Send File��6B   .+�5�   "   �� -   5        ) ��Name$) btnSendFile��5�   )     toolbarButton#���  6>   $  	Send File��5�   %   
���   �.��5�   &   �� $��16��6,   $��16��67   $��/Images/Upload.png��6C   $
��Fill=�6_   5�   #   �� 5�   "   -   5        #���  5�   )   $��5,0,0,0q�5�   %   $  Email��66   
���   �.��5�   &   �� $��16��6,   $��16��67   $��/Images/email.png��6C   $
��Fill=�6^   5�   #   �� 5�   "   -   5        #���  5�   )   $��5,0,0,0q�5�   %   $  Change Font��66   
���   �.��5�   &   �� $��16��6,   $��16��67   $��/Images/Font.png��6C   $
��Fill=�6]   5�   #   �� 5�   "   -   5        #���  5�   )   $��5,0,0,0q�5�   %   $  	Send Buzz��66   
���   �.��5�   &   �� $��16��6,   $��16��67   $��/Images/Buzz.png��6C   $
��Fill=�6]   5�   #   �� 5�   "   -   5        #���  5�   )   $��5,0,0,0q�5�   %   $  Select an emoticon��66   
���   �.��5�   &   �� $��16��6,   $��16��67   $!��/Images/Emoticons/Smile.png��6C   $
��Fill=�6h   5�   #   �� 5�   "   -   5        #���  5�   )   $��5,0,0,0q�5�   %   $  Mute this conversation��66   
���   �.��5�   &   �� $��16��6,   $��16��67   $��/Images/Ignore.png��6C   $
��Fill=�6_   5�   #   �� 5�   "   -   5        #���  5�   )   $��5,0,0,0q�5�   %   $  	Send Like��66   
���   �.��5�   &   �� $��16��6,   $��16��67   $��/Images/like.png��6C   $
��Fill=�6]   5�   #   �� 5�   "   -   5        #���  5�   )   $��5,0,0,0q�5�   %   $  Change Title��66   
���   �.��5�   &   �� $��16��6,   $��16��67   $��/Images/changetitle.png��6C   $
��Fill=�6d   5�   #   5�      2   ,Squiggle.UI.Controls.VoiceChatToolbarControl  5�      -    5        *  Name$* voiceController��5�   Q   2   ,Squiggle.UI.Controls.VoiceChatToolbarControl+   	StartChat$'+ !VoiceChatToolbarControl_StartChat��6j   $��5,2,10,0q�6?   $��2��6�   5�      5�      )	   #Squiggle.UI.Controls.MessageEditBox	  5�      -!   5        , 	 Name$, txtMessageEditBox��5�   ?   )
   #Squiggle.UI.Controls.MessageEditBox- 
  MessageTyping$%- txtMessageEditBox_MessageTyping��5�   .   . 
  MessageSend$#. txtMessageEditBox_MessageSend��5�   .   / 
  PreviewKeyDown$&/  txtMessageEditBox_PreviewKeyDown��5�   .   $��2,5,5,0q�5�   .   $��70��6Z   $��1��5�   Z   5�   .   �� 5�      -"   5        0 ��Name$0 	txbStatus��5�   2   $��0,10,0,0q�6    $��Bottom=�6E   $��2��6`   $��2��6m   
���   �6�   5�      5�      �� 5�      -#   5        1 �� ResizeDirection$
1 Rows=�5�      $��Stretch=�62   $��2��5�      $��2��6$   $	��Top=�68   2 �� ResizeBehavior$2 PreviousAndCurrent=�6P   $��5��5�      6"   5�      5�      5�      