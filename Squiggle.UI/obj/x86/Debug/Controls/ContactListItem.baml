   M S B A M L   `   `   `  ����C  ?Squiggle, Version=3.4.4.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:Squiggle.UI.ConvertersSquiggle.UI.Converters  5      9!clr-namespace:Squiggle.UI.HelpersSquiggle.UI.Helpers  5      ;"clr-namespace:Squiggle.UI.ControlsSquiggle.UI.Controls  5      J FSquiggle.Client, Version=3.4.4.0, Culture=neutral, PublicKeyToken=nullJ6clr-namespace:Squiggle.Client;assembly=Squiggle.ClientSquiggle.Client 5	      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R8clr-namespace:System.ComponentModel;assembly=WindowsBaseSystem.ComponentModel 5
      C ?FluidKit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW9clr-namespace:FluidKit.Helpers.DragDrop;assembly=FluidKitFluidKit.Helpers.DragDrop 5      *    $Squiggle.UI.Controls.ContactListItem   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;
converters$clr-namespace:Squiggle.UI.Converters     5      5helpers!clr-namespace:Squiggle.UI.Helpers     5      4local"clr-namespace:Squiggle.UI.Controls     5      Gchat6clr-namespace:Squiggle.Client;assembly=Squiggle.Client     5	      Hscm8clr-namespace:System.ComponentModel;assembly=WindowsBase     5
      Ndragdrop9clr-namespace:FluidKit.Helpers.DragDrop;assembly=FluidKit     5        � 	Resources  5      0   *Squiggle.UI.Converters.StatusIconConverter   statusIconConverter,   &Squiggle.UI.Converters.StatusConverter  statusConverter-   'Squiggle.UI.Converters.ORMultiConverter  orConverter.  (Squiggle.UI.Controls.ChatDragDropAdvisor  contactDragDrop  StatusSymbol �� 
TargetType �� Property �� Value �� Triggers �� Binding �� Value  standardView ��Name �� Padding	 � Cursor/  )FluidKit.Helpers.DragDrop.DragDropManager
   DragSourceAdvisor � ToolTip  BuddyToolTip � ColumnDefinitions � RowDefinitions �� Path �� 	Converter �� Orientation ��Name �� StringFormat �� Triggers �� 
TargetName P� Property P� Value P� 
SourceName  ContactBorderBrush  compactView A�Name �Name � VerticalOffset � AllowsTransparency � 	StaysOpen � PlacementTarget �� ElementName `� 	Converter  `� Mode! �� Mode 	 ContactListItem_ChatButton*   $Squiggle.UI.Controls.ContactListItem"   ChatCommand 
 ContactListItem_EmailButton#   EmailCommand " ContactListItem_SendFileButton$   SendFileCommand% �� 
IsReadOnly& �� TextWrapping  BuddyProps_MachineName  BuddyProps_LastUpdated/   )Squiggle.UI.Controls.ContactsViewSelector  contactViewSelector'   StandardView(   CompactView��%>  &	        &	      &	 &     &	 9     &	 L     &	 �    7  7   7  7  &	 �
    7  7  7 	 7 
 7  7  7  7  7  &	 �    7  7    5   
   6)     5   
   6%     5   
   6&     5   
   6$   �� 5   
   " A�6%   .�5      ��  � ��$ 9��6&   �� 5       � ��$ 9��6'   �� 5       � ��$ 
10,0,10, 0q�6'   �� 5       � �� �	#FF7DB96D6%    5      �� 5       6   �� *Status+
 Online69   .a�5      ��  � �� �	#FF7DB96D6.   5      �� 5       6   �� *Status+ Offline69   .a�5      ��  � �� �	#FFCFCFCF6-   5      �� 5       6   �� *Status+ Busy69   .a�5       ��  � �� �	#FFEB6D6E6-   5!      �� 5"       6   �� *Status+ Away69   .a�5#      ��  � �� �	#FFFFB9376-   5$      �� 5%       6   �� *Status+ Idle69   .a�5&      ��  � �� �	#FFFFB9376-   5'      �� 5(       6   �� *Status+ BeRightBack69   .a�5)      ��  � �� �	#FFFFB9376-   5*      5,      �� 5-   
   .R�5.      �� $ contactBorder��6   $ 1q�6,   $
	 Hand��68   #
 �  5/       50      _� 51      8��  6   ._�53      � $��5q�6    54      �� 55      $��30 �6+   �� 56      $��* �6+   �� 57      $��30 �6+    59      �� 5:      $
��Auto �6(   �� 5;      $��0.01* �6(   .+�5=      �� $��20��6   $��20��6'   $	��Top=�6�   ��63   �� $ Status�8  6�   �� 5>      $ Vertical=�6!   $��1��68   .+�5?      �� $
��Left=�6%   $��1��6@   $ 
Horizontal=�5@   -   $��5,0,0,0q�6F   $
	 Hand��6W   .+�5A      �� ��6(   �� $ DisplayName��� 5B      $ buddyStatus��6(   $��5,0,0,0q�6=   ��6N   �� $ Status�8  $ ({0})��5C      �� 5D      $��5,0,0,0q�6$   $��WordEllipsis=�6e   $��10(�6�   ���	#FF9A9C9D$
��Left=�6�   ��65   �� $ Properties.DisplayMessage� 6�   �� $ DisplayMessage�6�   5E      �� 5F      $��30��6   $��30��6'   $��UniformToFill=�63   $	��Top=�6v   $��2��6�   ��6K   �� *Properties.DisplayImage+6�   5G      5H       5I      �� 5J      $ Online��69    6   �� *Status+.a�5K      �� $ buddyStatus��6    � y�$ Hidden=�6L   5L      �� 5M      $ Offline��69    6   �� *Status+.a�5N      �� $ buddyStatus��6    � y�$ Hidden=�6L   5O      P� 5P       �@��AlternationIndex$ 0��6C   . �5Q      �� $ contactBorder��5R   !    � ��
 �����6>   5S      P� 5T       �@��AlternationIndex$ 1��6C   . �5U      �� $ contactBorder��5V   !    � ��
 �����6>   5W      P� 5X      $ contactBorder��6    �@J�IsMouseOver . . �5Y      �� $ contactBorder��6   8   � ��6N   5Z      5\      �� 5]   
   .R�5^      �  5_      �� 5`      $��* �6'   .+�5b      �� $ contactBorder��6   $
	 Hand��60   $��20��6?   #
 �  5c      ._�5d      �� $ 
Horizontal=�6!   $
	 Hand��6:   $��Center=�6H   $��10,0,0,0q�6c   .+�5e      A� $ ellipseStatus��6"   8��  69   �� 5f      $��11(�6F   ��6$   �� $ DisplayName�6F   �� 5g      $��5,0,0,0q�6$   $��WordEllipsis=�6e   $��10(�6�   ���	#FF9A9C9D$
��Left=�6�   ��65   �� $ Properties.DisplayMessage� 6�   �� $ DisplayMessage�6�   5h      5i      � 5j      $ popup��6   $ 0��5k      $
��Left=�60   $	��350��6A   $	��170��6M    . |�.  .  5j   '   �� $ contactBorder����5m      `� 5n      8  $  OneWay=�6P   .1�5o      �� $ contactBorder��6&   $ IsMouseOver�6B   $! OneWay=�6U   �� 5p      $ popup��6&   $ IsMouseOver�6:   $! OneWay=�6M   5q      .��5s      �� $��5q�6   
���   �$��1q�6<   ._�5t      �  5u      �� 5v   "   $
��Auto �60   �� 5w   "   $��* �60   �� 5x   "   $
��Auto �60    5z      �� 5{   "   $
��0.3* �63   �� 5|   "   $
��0.7* �63   .+�5~      ]� ���	#FFD6D9E5$��2��6?   .+�5   "   �� $
��Left=�6)   
�������8�� #��Z" 5�   )   $��75��5�   )   $��5q�67   ��5�   `   �� 5�   7   �� 5�   "   $
��Left=�6)   
�������8�� #��Z# 5�   )   $��75��5�   )   $��5q�67   ��5�   b   �� 5�   7   �� 5�   "   $��Right=�6)   
�������8�� #��Z$ 5�   )   $	��100��5�   )   $��5q�65   $��Right=�6@   ��5�   e   �� 5�   @   5�      �� 5�      
���   �$��0,1,0,1q�69   
�������$��Stretch=�6f   $��2��6�   $��1��6�   ._�5�   "   � $��0,5,0,0q�6'    5�   &   �� 5�   *   $��* �6;   �� 5�   *   $
��Auto �6;    5�   &   �� 5�   *   $
��Auto �68   �� 5�   *   $��* �68   .+�5�   &   �� $ 
Horizontal=�61   .+�5�   *   A� 8�� $��5,0,5,0q�6Y   �� 5�   *   
���   �$
��Bold"�6G   ��6Z   �� *DisplayName+�� 5�   *   
���   �$��5,0,0,0q�6G   $��10(�6X   ��6f   �� *Status+$ ({0})��5�   '   �� 5�   &   $��1��6,   $��2��6<   $��5q�6x   $��UniformToFill=�6�   $	��100��6�   $	��100��6�   ��6M   �� *Properties.DisplayImage+6�   �� 5�   &   $��1��63   $
��Left=�6@   $
��Auto=�6V   .��5�   *   �� $��10,0,0,0q�62   ���	#FF9A9C9D% . $��0q�6m   $& WrapWithOverflow=�6�   ��6�   �� *Properties.DisplayMessage+6�   5�   '   5�   #   5�      ]� 5�      
�������$��2��6;   $��2��6H   .+�5�   "   �� $��5,0,0,0q�6,   $��10(�6=   
���   ���6^   �� *Properties.MachineName+8  �� 5�   "   $��0,0,5,0q�6,   $��Right=�6=   $��Right=�6T   
���   �$��10(�6�   ��6�   �� *LastUpdated+8  5�      5�      5�      5�      5�       5�      P� 5�       �@��AlternationIndex$ 0��6C   . �5�      �� $ contactBorder��5�   !    � ��
 �����6>   5�      P� 5�       �@��AlternationIndex$ 1��6C   . �5�      �� $ contactBorder��5�   !    � ��
 �����6>   5�      P� 5�      $ contactBorder��6    �@J�IsMouseOver . . �5�      �� $ contactBorder��6   8   � ��6N   5�      5�        5�   
   8'   8(  6n   5�      .��5�      �� #��[ 6   ��6T   �� 5�      5�      