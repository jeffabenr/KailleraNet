   M S B A M L   `   `   `  ����F  BKailleraNET, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:KailleraNETKailleraNET  5   	   %    KailleraNET.Windows.UsersWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   +localclr-namespace:KailleraNET     5   	   -   5          � Title$  Users��5   	   $	��572��6   $	��195��6$    � 	Resources 5      (  "KailleraNET.BeginDisconnectCommand   BeginDisconnectCommand  ContainerStyle �� 
TargetType �� Property �� Value 9� 
IsExpanded��%�   &	        &	        5   
   5	      �� 5
   
   " ��6'   .�5      ��  � �� 5      �� 5      .R�5      9�  . ��6#   �� *Name+.��5      �� 5      5      5      5      5      .��5      �  � RowDefinitions 5   
   �� 5      $	��23* �6   �� 5      $
��510* �6   .+�5   
   o� -   5        $��	usersMenu��5   9   $��23��6   $��Stretch=�6   $	��Top=�6J   $
��Auto��6b   $��2��6o   .@�5      m� $��_File��6   .@�5      m� $��_Disconnect��6    m� Command# [  60   5      5       5!      �� 5"   
   -   5        $��	usersList��5"   K   $��1��6   $
��Auto��6   $��Stretch=�6-   $��Stretch=�6\   $
��Auto��6x    �� SelectionMode$ Extended=�6�   ��6�   �� 	 �� 
GroupStyle	 5#      (  "System.Windows.Controls.GroupStyle  5$      
   ContainerStyle#
 [ 6   6Q   ��5&      �� 5'      .R�5(      �� ��6    �� *Name+5)      5*       � ContextMenu 5,      �� 5-      .@�5.      m� -   5        $ ��Add/Remove from Buddy List��5.      5/      m� 50      -   5        $��Send Private Message��50      6O   51      53      54      55      