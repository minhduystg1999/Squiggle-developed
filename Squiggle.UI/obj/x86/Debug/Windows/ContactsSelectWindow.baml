   M S B A M L   `   `   `  ����C  ?Squiggle, Version=3.4.4.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:Squiggle.UI.StickyWindowSquiggle.UI.StickyWindow  5      ?$clr-namespace:Squiggle.UI.ConvertersSquiggle.UI.Converters  5   	   J FSquiggle.Client, Version=3.4.4.0, Culture=neutral, PublicKeyToken=nullJ6clr-namespace:Squiggle.Client;assembly=Squiggle.ClientSquiggle.Client 5   	   ;"clr-namespace:Squiggle.UI.ControlsSquiggle.UI.Controls  5   	   .    (Squiggle.UI.Windows.ContactsSelectWindow   5      1sticky&clr-namespace:Squiggle.UI.StickyWindow  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ;
converters$clr-namespace:Squiggle.UI.Converters     5   	   Gchat6clr-namespace:Squiggle.Client;assembly=Squiggle.Client     5   	   7controls"clr-namespace:Squiggle.UI.Controls     5   	   -   5        /   )Squiggle.UI.StickyWindow.StickyWindowBase   Name$  contactSelectControl��5	   "   /   )Squiggle.UI.StickyWindow.StickyWindowBase   KeyDown$ Window_KeyDown��5   =    � Icon$) #/Squiggle;component/Images/Chat.ico��5   	   $	��500��5	   	   $	��360��6    � WindowStartupLocation$ CenterOwner=�6@    � ShowInTaskbar .   � 	Resources 5
         buddiesCollection �� Source0   *Squiggle.UI.Converters.StatusIconConverter  statusIconConverter,   &Squiggle.UI.Converters.StatusConverter  statusConverter  visibilityConverter �� DataType  Squiggle.Client.Buddy ��Name	 �� Padding
 � Cursor
 � Tag � ToolTip  BuddyToolTip � ColumnDefinitions � RowDefinitions ��Name �� ElementName �� Path �� 	Converter �� Orientation ��Name �� StringFormat �� Triggers �� Value �� Binding �� 
TargetName �� Property �� Value P� Property P� Value P� 
SourceName �� EndPoint  �� 
StartPoint! � Color" � Offset��%�  &	        &	 ?     &	 R     &	 e     (�� x     5      *, +)7  7  7  7  �� 5   
   -   5         5      �� *	Buddies+6T     5   
   6)     5   
   6%   �� 5   
   6'   �� 5   
   "  6   .R�5      �� $ contactBorder��6   -   5        $	 1q�5   ,   $

 Hand��68    5      ��  5      _� 5      8��  6   ._�5      � $��5q�6    5      �� 5      $
��Auto �6+   �� 5      $��30 �6+   �� 5      $��* �6+    5      �� 5      $
��Auto �6(   �� 5      $��0.01* �6(   .+�5      �� $ chkSelection��6/   -   5        $��0��5      $��0,0,10,0q�6�    6E   �� y�6�   �� $ contactSelectControl��$ AllowMultiSelect�8  �� 5       $��1��6   $��20��6,   $��20��67   $	��Top=�6�   ��6C   �� $ Status�8  6�   �� 5!      $ Vertical=�6!   $��2��68   .+�5"      �� $
��Left=�6%   $ 
Horizontal=�6@   $��5,0,0,0q�6Y   $

 Hand��6j   .+�5#      �� ��6(   �� $ DisplayName��� 5$      $ buddyStatus��6(   $��5,0,0,0q�6=   ��6N   �� $ Status�8  $ ({0})��5%      �� 5&      $��5,0,0,0q�6$   $��WordEllipsis=�6e   $��10(�6�   ���	#FF9A9C9D$
��Left=�6�   ��65   �� $ Properties.DisplayMessage� 6�   �� $ DisplayMessage�6�   5'      5(      5)       5*      �� 5+      $ Online��69    6   �� *Status+.a�5,      �� $ buddyStatus��6    � y�$ Hidden=�6L   5-      �� 5.      $ Offline��69    6   �� *Status+.a�5/      �� $ buddyStatus��6    � y�$ Hidden=�6L   50      P� 51       �@��AlternationIndex$ 0��6C   . �52      �� $ contactBorder��53   !    � ��
 �����6>   54      P� 55       �@��AlternationIndex$ 1��6C   . �56      �� $ contactBorder��57   !    � ��
 �����6>   58      P� 59      $ contactBorder��6    �@J�IsMouseOver . . �5:      �� $ contactBorder��6    � �� 5;      �� 5<      $ 0.5,1&�62   $  0.5,0&�6C   .��5=   "   � $! 	#FFF0F0F0��6/   $" 0.061Q�6A   � 5>   "   $! 	#FFE3E4E4��6/   $" 0.939Q�6A   5?      5A      5B      5D      5E      .��5F      � -   5        # �Name$# 
LayoutRoot��5F      $��10q�6     flowDirection#��[ 6+    5G   
   �� 5H      $
��Auto �6   �� 5I      $
��Auto �6   �� 5J      $��* �6   �� 5K      $
��Auto �6   .+�5M   
   �� -   5        $ 
txtMessage��5M       $  ContactSelectWindow_SingleSelect#��[ 6(   $��10,0,0,0q�6a   (   "Squiggle.UI.Controls.FilterTextBox  5N   
   (   "Squiggle.UI.Controls.FilterTextBox$   FilterChanged$!$ FilterTextBox_FilterChanged��6!   $	��Top=�6M   $��1��6e   $
��Auto��6s   $��Stretch=�6�   $��10q�6�   $��25��6�   �� 5O   
   $��2��6   |�.  $
��Auto=�66   $��Hidden=�6Y   .��5P      �� |�.  $��5q�6-   % �� AlternationCount$% 2��6�   & � DataContext& 68   �� ��6P   �� ' �� Source#' [  6�   5Q      � 5R   
   $��3��6   .+�5S      �� $��Right=�6   $ 
Horizontal=�65   .+�5T      �� -   5          Global_OKButton#��[ 5T      ( �� 	IsDefault( . $��70��6U   y�6m   �� $ contactSelectControl��$ AllowMultiSelect�# [ �� 5U      -   5        ) �� IsCancel) .   Global_CancelButton#��[ 5U   )   $��70��6X   $��5,0,0,0q�6c   6t   5V      5W      5X      5Y      