   M S B A M L   `   `   `  ����  Squiggle)    #Squiggle.UI.Controls.MessageEditBox   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � 	Resources  5         BorderStyle �� 
TargetType �� Property �� Value �� Triggers �� Binding �� Value  	TextStyle  ButtonStyle��%   &	        &	 d    &	 �    7���� 5   
   " ��6$   .�5      ��  � �� �	#FFBFCBD86,   �� 5       � ��$ 1q�60   �� 5       �@��CornerRadius$ 3��6-   �� 5	       � ��$ Stretch=�64   �� 5
       � ��# � ��6+    5      �� 5       6   �� *
EditMode+ True6;   .a�5      ��  � ��
 �����63   5      5      �� 5   
   " ��6"   .�5      ��  � ��$ 2,2,0,2q�6'   �� 5       � ��$ 0q�60   �� 5       � �� 6,   Z� �� 5       � ��$ 0q�60   �� 5       � ��$ Stretch=�64   �� 5       � ��$ Stretch=�62    5      �� 5       6   �� *
EditMode+ True6;   .a�5      ��  � ��
 �����63   5      5      �� 5    
   " ��6$   .�5!      ��  � ��8   6+   �� 5"       � ��$ 60��6&   �� 5#       � ��$ 10q�6'   �� 5$       � ��$
 Bold"�6+   �� 5%       � ��
 � ���6,   �� 5&       � ��$ 1q�60   5'      5(      .��5*   
   �� #��[  6   ._�5+   
   � |�.  � ColumnDefinitions 5,      �� 5-      $��* �6#   �� 5.      $��80 �6#   .+�50      �� -   5         ��Name$ 
txtMessage��50   '   	 J� 	AllowDrop	 . $��0��51      #��[ 6#   
 �� AcceptsReturn
 . " �� VerticalScrollBarVisibility$
 Auto=�52   *    �� TextWrapping$
 Wrap=�53   e   ��50   ;   �� *	Message+ �� UpdateSourceTrigger$ PropertyChanged=�53   e   �� 54      -   5         ��Name$ btnSend��54   "   $��1��6   {�.  $��Right=�6E   $��60��6a   $��1��6m     ChatWindow_SendButton#���  55         ChatWindow_SendButtonToolTip � ToolTip# �  6G   #��[ 56   	   6.   57      58      5:      