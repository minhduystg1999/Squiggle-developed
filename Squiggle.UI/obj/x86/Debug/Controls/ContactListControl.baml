   M S B A M L   `   `   `  ����C  ?Squiggle, Version=3.4.4.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Squiggle.UI.ControlsSquiggle.UI.Controls  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      I2clr-namespace:System.Collections;assembly=mscorlibSystem.Collections 5      ?$clr-namespace:Squiggle.UI.ConvertersSquiggle.UI.Converters  5      9!clr-namespace:Squiggle.UI.HelpersSquiggle.UI.Helpers  5      ;"clr-namespace:Squiggle.UI.ControlsSquiggle.UI.Controls  5	      J FSquiggle.Client, Version=3.4.4.0, Culture=neutral, PublicKeyToken=nullJ6clr-namespace:Squiggle.Client;assembly=Squiggle.ClientSquiggle.Client 5
      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R8clr-namespace:System.ComponentModel;assembly=WindowsBaseSystem.ComponentModel 5      -    'Squiggle.UI.Controls.ContactListControl   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      7controls"clr-namespace:Squiggle.UI.Controls     5      6sys&clr-namespace:System;assembly=mscorlib     5      Ccoll2clr-namespace:System.Collections;assembly=mscorlib     5      ;
converters$clr-namespace:Squiggle.UI.Converters     5      5helpers!clr-namespace:Squiggle.UI.Helpers     5      4local"clr-namespace:Squiggle.UI.Controls     5	      Gchat6clr-namespace:Squiggle.Client;assembly=Squiggle.Client     5
      Hscm8clr-namespace:System.ComponentModel;assembly=WindowsBase     5      -   5        $	��200��5      $	��400��6     � 	Resources  5       �� MergedDictionaries �� Source   Key �� Source,   &Squiggle.UI.Converters.StatusConverter �� 
TargetType �� Property �� Value �� 
TargetType J� SnapsToDevicePixels	 �� CornerRadius
 �� Padding  newExpanderStyle
 � Tag � ContextMenu # MainWindow_SendBroadcastMessage  MainWindow_StartGroupChat*   $Squiggle.UI.Controls.TextBlockBugFix   Text2 �� StringFormat �� Path/   )Squiggle.UI.Converters.TitleCaseConverter   Instance �� 	Converter6   0Squiggle.UI.Converters.ContactListGroupConverter   Instance �� EndPoint �� 
StartPoint � Color � Offset � MappingMode S� 
MethodName S� 
ObjectType)  #Squiggle.UI.Helpers.SquiggleUtility�� 5   
    5      �� 5      $! ..\Resources\Expanders.xaml?�6%   �� 5      �� 5      -   5        buddiesCollection   5   +   �� *	Buddies+6`     5      statusConverter  61   �� 5      ContactInfoToolTipStyle  " _�6<   .�5      ��  �@J�SnapsToDevicePixels . 6@   �� 5       � �� 5      �� 5   "   " _�62   .R�5   &   �� ���#111111$��1q�6C    . ._�5   *   �� $��windowFrame��6L   $
��Auto��61   $
��Auto��6>   ���#999999$��1q�6u    . $	 0��6�   ���#525252
���   �$��Verdana)�6�   $��11(�6  $��0q�6  $
 3q�6)  ._�5   .   �� 5   +   5   '   5   #   5       5!      �� 5#      groupTemplate  .R�5$      9� -   5        #���  5%       5&      �� *Name+ 5*      �� 5+   "   .@�5,   &   m� -   5        #��[ 5,   /    6i   �� *Items+6   m� 5-   &   -   5        #��[ 5-   /    6c   �� *Items+6y   5.   #   ��50      �� 51   "   $��11(�6,   $
��Bold"�6:    52      `� 53      $ {0} ({1}/{2})��6+   .1�54   "   �� $
 Name�6*   # Z 66   �� 55   "   $ Items�6*   # Z 67   �� 56   "   $ 	ItemCount�6*   57      59   #   .��5;      �� 5<      5=      �� 5>      ContactInfoBackground  $ 0.5,1&�6H   $ 0.5,0&�6Y   .��5?      � $ 	#FFFCFCFD��6'   $
 0.04Q�69   � 5@      $ 	#FFE5E5F1��6'   $
 0.99Q�69   5A      �� 5B      HeaderBackground  $ 0.5,1&�6C   $ 0.5,0&�6T   .��5C      � $ 	#FFFCFCFC��6'   $ 0.087Q�69   � 5D      $ 	#FFECECEC��6'   $ 0.478Q�69   5E      �� 5F      ToolbarBackground  $ 0.5,1&�6D   $ 0.5,0&�6U   $ RelativeToBoundingBox=�6h   .��5G      � $ 	#FFEEF6FA��6'   $ 0Q�69   � 5H      $ 	#FFE4F1F7��6'   $	 0.9Q�69   � 5I      $ 	#FFE4F1F6��6'   $ 1Q�69   5J      S� 5K      $ GetChangableStatuses��6)   "  5L      AvailableUserStatus  5N      5O      %    5Q       J� CommandBindings 5S      )  #System.Windows.Input.CommandBinding  5T   
   -   5        *   $Squiggle.UI.Controls.ContactListItem   ChatCommand   Command# Z 5T      6P     5U   
   -   5           EmailCommand# Z 5U      6Q     5V   
   -   5           SendFileCommand# Z 5V      6T   .��5X      �  � RowDefinitions 5Y   
   �� 5Z      $
��Auto �6   �� 5[      $��* �6   .+�5]   
   ��   HeaderBackground#��[ 6   ._�5^      �   � DataContext  6   �� $ LoggedInUser�! � ColumnDefinitions! 5_      �� 5`      $
��Auto �6'   �� 5a      $��* �6'    5c      �� 5d      $��10 �6$   �� 5e      $
��Auto �6$   �� 5f      $
��Auto �6$   �� 5g      $
��Auto �6$   �� 5h      $��0.20* �6$   .+�5j      �� $��5,-5,0,0q�6   $��60��6,   $��60��6:   $��1��6I   $��2��6V   $	��Top=�6�   ��6g   �� *Properties.DisplayImage+��5k      �� 5l      " ��6    .�5m      ��  � ��$ 0,0,5,0q�67   " �� Triggers" 5n      �� 5o   "   # �� Binding# 6.   �� *Properties.DisplayImage+$ �� Value$ 6Z   Z� .a�5p   &   ��  � ��$ 0q�6?   5q   #   5s      5u      �� 5v      -	   5        % ��Name$% signedInView��5v   /   $��7,-5,0,0q�6   $��1��6E   $��1��6R   & �� Orientation$& 
Horizontal=�6b   $
��Left=�6{   .+�5x      �� -
   5        ' ��Name$' txtLoggedInUser��5x   �   $��0,0,5,0q�6    $��Center=�61   
���   �$��16(�6|   $
��Left=�6�   ��6L   �� *DisplayName+6�   �� 5y      $��1��6    $��Center=�60     ComboBoxStyle#���  6K   $	��100��6s   
�������|�.  ( �� SelectedValue( 6   �� $ Status���5{      -  'System.Windows.Data.CompositeCollection  5|      �� 5}   "   ) �� 
Collection) 66   ��   AvailableUserStatus* �� Source#* [ �� 5~   "   {�.  6,   �� 5   "   -   5          MainWindow_TrayMenu_SignOut#���  5�   \   5�      ��5�      �� 5�      .R�5�   "   �� #��[ 6-   5�      ��5�      �� 5�      .R�5�   "   �� ��63   ��   statusConverter# [ 5�      5�      5�      ,	   &Squiggle.UI.Controls.DisplayMessageBox	  5�      $��0,-5,0,0q�6E   $��Bottom=�6W   $��2��6r   $��1��6   $
��Auto��6�     6-   �� + 	  SelfUser+ 6�   �� -
   'Squiggle.UI.Controls.UpdateNotification
  5�      $��3��6.   $��2��6�     6;   �� *DataContext+, �� RelativeSource, �� - �� AncestorType$- UserControlL�6�   �� 5�      -   5        $��Do not disturb��5�      $��4��64   . d� 	IsChecked$. FalseY�5�   W   $��3��6i   $��0.2,0.2,-5,-0.2q�6y   5�      5�      � 5�   
   $��1��6   ! 5�      �� 5�      $��5* �6#   �� 5�      $	��19* �6#   �� 5�      $	��20* �6#   �� 5�      $	��56* �6#    5�      �� 5�      $
��Auto �6    �� 5�      .+�5�      ]� $��30��6   $��4��6$   $��	0,0,0,0.4q�68    5�      �� 5�      ��5�      �� 5�      $ 0.5,1&�6*   $ 0.5,0&�6;   .��5�      � $ 	#FFF9F9F9��6'   $ 0.111Q�69   � 5�      $ 	#FFE4E4E4��6'   $ 0.593Q�69   5�      .+�5�      �� -   5        $��/Images/info.png��5�      / � Cursor$
/ Hand��62   $��18��6@   $��18��6K   $��5,0,0,0q�6W   $
��Left=�6h   6~   (   "Squiggle.UI.Controls.FilterTextBox  5�      (   "Squiggle.UI.Controls.FilterTextBox0   FilterChanged$!0 FilterTextBox_FilterChanged��6)   $	��Top=�6U   $��25��6m   $��5,2,5,2q�6y   5�      �� 5�      |�.  $
��Auto=�6-   $��Hidden=�6P   $��4��6w   $��
0,30,0,0.2q�6�   $��2��6�   .��5�      �� .+�5�      �� |�.  $��5q�65   1 �� AlternationCount$1 2��5�   #     5�   @   �� ��5�   #   ��  	 buddiesCollection#* [	 ��5�      �� 5�      .R�5�   "     *   $Squiggle.UI.Controls.ContactListItem2   Drop2 
Buddy_Drop6L   3   DragOver3 Buddy_DragOver6^   4   MouseLeftButtonUp4 Buddy_Click6x   5 J� 	AllowDrop5 .  5�   &   �� 5�   *   .@�5�   .   m� -   5         
 Buddy_StartChat#��[
 5�   7    6a   �� 6q   m� 5�   .   -   5          Buddy_Ignore#��[ 5�   7    6^   �� 6n   m� 5�   .   -   5          Buddy_SendFile#��[ 5�   7    6`   �� 6p   m� 5�   .   -   5          Buddy_SendEmail#��[ 5�   7    6a   �� 6q   5�   +   5�   #   5�      6 �� 
GroupStyle6 5�      (  "System.Windows.Controls.GroupStyle  5�      7   ContainerStyle7 5�   "   �� 5�   &   " ��6,   .�5�   *   ��  � ��  groupTemplate# [ 6E   5�   '   5�      5�      5�      5�      5�      5�      5�      