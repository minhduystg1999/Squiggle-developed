   M S B A M L   `   `   `  ����  Squiggle-    'Squiggle.UI.Controls.ConfirmationDialog   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$   ��5   	    � 
ResizeMode$ NoResize=�6    � SizeToContent$ WidthAndHeight=�6(   $	��400��5   	   $	��100��6    � ShowInTaskbar .   � WindowStartupLocation$ CenterOwner=�5       � WindowStyle$ SingleBorderWindow=�5   	   .��5      � $��5q�6    � RowDefinitions 5	   
   �� 5
      �� 5      $
��Auto �6   .+�5   
   �� -   5         ��Name$ message��5      �� 5   
   -   5         ��Name$ chkDoNotShow��5      $��Center=�6)   $��1��6D      Confirmation_DoNotShow#��[  6Q   �� 5   
   $	��0,5q�6   $��Right=�6"   	 �� Orientation$	 
Horizontal=�6>   $��1��6W   .+�5      �� -   5        
 ��Name$
 btnYes��5      $��Center=�6%   $
��Auto��6@    �� 	IsDefault .   Confirmation_YesButton#��[ 6_   $��70��6�   6�   �� 5      -   5        $
 btnNo��5      $��Center=�6$   $
��Auto��6?    �� IsCancel .   Confirmation_NoButton#��[ 6]   $��70��6�   $��5,0,0,0q�6�   6�   5      5      5      