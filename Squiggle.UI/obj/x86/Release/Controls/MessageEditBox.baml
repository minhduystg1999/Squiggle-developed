   M S B A M L   `   `   `  ����   Squiggle)    #Squiggle.UI.Controls.MessageEditBox   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � 	Resources     BorderStyle �� 
TargetType �� Property �� Value �� Triggers �� Binding �� Value  	TextStyle  ButtonStyle��%g  &	        &	 �     &	 �    7���� " ��.���  � �� �	#FFBFCBD8��  � ��$ 1q���  �@��CornerRadius$ 3����  � ��$ Stretch=���  � ��# � �� ��  �� *
EditMode+ True.a���  � ��
 ������� " ��.���  � ��$ 2,2,0,2q���  � ��$ 0q���  � �� Z� ��  � ��$ 0q���  � ��$ Stretch=���  � ��$ Stretch=� ��  �� *
EditMode+ True.a���  � ��
 ������� " ��.���  � ��8   ��  � ��$ 60����  � ��$ 10q���  � ��$
 Bold"���  � ��
 � �����  � ��$ 1q�.���� #��[  ._�� |�.  � ColumnDefinitions �� $��* ��� $��80 �.+��� -    ��Name$ 
txtMessage��	 J� 	AllowDrop	 . $��0��#��[ 
 �� AcceptsReturn
 . " �� VerticalScrollBarVisibility$
 Auto=� �� TextWrapping$
 Wrap=����� *	Message+ �� UpdateSourceTrigger$ PropertyChanged=��� -    ��Name$ btnSend��$��1��{�.  $��Right=�$��60��$��1��  ChatWindow_SendButton#���     ChatWindow_SendButtonToolTip � ToolTip# �  #��[ 