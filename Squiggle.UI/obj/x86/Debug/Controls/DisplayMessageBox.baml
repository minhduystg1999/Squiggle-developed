   M S B A M L   `   `   `  ����C  ?Squiggle, Version=3.4.4.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:Squiggle.UI.ConvertersSquiggle.UI.Converters  5      ,    &Squiggle.UI.Controls.DisplayMessageBox   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      9
converters$clr-namespace:Squiggle.UI.Converters    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          >�Name$  UserControl1��5   <    � 	Resources 5      4  .Squiggle.UI.Converters.DisplayMessageConverter   displayMessageConverter��%   &	          5   
   6-   5      .��5      � .+�5	   
   ��  J� Opacity$ 9Q�6   $��5q�6    �� Padding$ 5,0,2,0q�6(    �� CornerRadius$ 3��6:   $��22��6K   ._�5
      � .+�5      �� -   5         ��Name$ 
txbMessage��5   C    � Cursor$
 Hand��6   
������ 
���������6i   ��  �� ElementName$ UserControl1�� �� Path$( "SelfUser.Properties.DisplayMessage�	 �� 	Converter#	 [  ��6.  }� 6]  �� 5      -   5        
 ��Name$
 
txtMessage��5   H   
������ $��0q�64    �� 	MaxLength$	 150��6\   $y�Hidden=�6�   ��6m   �� $ UserControl1��$( "SelfUser.Properties.DisplayMessage�6�   5      5      5      5      