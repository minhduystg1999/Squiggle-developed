   M S B A M L   `   `   `  ����C  ?Squiggle, Version=3.4.4.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Squiggle.UI.ControlsSquiggle.UI.Controls  5      ,    &Squiggle.UI.Controls.ChatClientControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      7controls"clr-namespace:Squiggle.UI.Controls     5      $	��200��5      $	��400��6   .��5      � '  !System.Windows.VisualStateManager    VisualStateGroups  5   
   %  System.Windows.VisualStateGroup  5         Name$ Common��6      States. 5	         System.Windows.VisualState     Name$ OnlineState��6      
Storyboard. 5
      �� .��5      W�  W� From$ 0X�6*   	 W� To$ 1X�63    g� Duration$ 	0:00:00.2D�6:    �� 
TargetName$ ContactList��6O   	 �� TargetProperty$	 (UIElement.Opacity)�6s   W� 5      $ 1X�6*   $ 0X�63   $ 	0:00:00.3D�6:   $ SignIn��6O   $	 (UIElement.Opacity)�6n   T� 5      
 g� 	BeginTime$
 00:00:00X�68   $ ContactList��6M   $	 (UIElement.Visibility)�6q   ..�5      i�  R� KeyTime$ 00:00:00��65     System.Windows.Visibility   Visible R� Value# Z 6H   5      T� 5      $
 00:00:00X�68   $ SignIn��6M   $	 (UIElement.Visibility)�5   !   ..�5      i� $ 00:00:01��65      Hidden# Z 6H   5      5      5        5      $ OfflineState��6   . 5      �� .��5      W� $ 1X�6*   $ 0X�63   $ 	0:00:00.3D�6:   $ ContactList��6O   $	 (UIElement.Opacity)�6s   W� 5      $ 0X�6*   $ 1X�63   $ 	0:00:00.2D�6:   $ SignIn��6O   $	 (UIElement.Opacity)�6n   T� 5      $
 00:00:00X�68   $ SignIn��6M   $	 (UIElement.Visibility)�6l   ..�5      i� $ 00:00:00��65   # Z 6H   5      T� 5      $
 00:00:00X�68   $ ContactList��6M   $	 (UIElement.Visibility)�5   !   ..�5      i� $ 00:00:01��65   # Z 6H   5       5!      5"      5#       � RowDefinitions 5%   
   �� 5&      $��* �6   .+�5(   
   (   "Squiggle.UI.Controls.SignInControl  -   5          Name$ SignIn��5(   !    J� Opacity$ 1Q�61   $
��Auto��6=   $
��Auto��6J   -   'Squiggle.UI.Controls.ContactListControl  5)   
   -   5          Name$ ContactList��5)   &   $
��Auto��6;   $
��Auto��6H   $y�Hidden=�6V   5*      5+      