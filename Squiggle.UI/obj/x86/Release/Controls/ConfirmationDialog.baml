   M S B A M L   `   `   `  ����   Squiggle-    'Squiggle.UI.Controls.ConfirmationDialog   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$   �� � 
ResizeMode$ NoResize=� � SizeToContent$ WidthAndHeight=�$	��400��$	��100�� � ShowInTaskbar .   � WindowStartupLocation$ CenterOwner=� � WindowStyle$ SingleBorderWindow=�.��� $��5q� � RowDefinitions �� �� $
��Auto �.+��� -    ��Name$ message���� -    ��Name$ chkDoNotShow��$��Center=�$��1��   Confirmation_DoNotShow#��[  �� $	��0,5q�$��Right=�	 �� Orientation$	 
Horizontal=�$��1��.+��� -   
 ��Name$
 btnYes��$��Center=�$
��Auto�� �� 	IsDefault .   Confirmation_YesButton#��[ $��70���� -   $
 btnNo��$��Center=�$
��Auto�� �� IsCancel .   Confirmation_NoButton#��[ $��70��$��5,0,0,0q�