   M S B A M L   `   `   `  ����F  BKailleraNET, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:KailleraNETKailleraNET  5   	       KailleraNET.ChatWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   +localclr-namespace:KailleraNET     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   i   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6�   -   5          � Title$
  Chat��5   	   
�������$	��290��6�   $	��394��6�    � DataContext 6)   �� .��5      � -   5        $��grid1��5      $
��Auto��6   $
��Auto��6&    � RowDefinitions 5   
   �� 5      $
��290* �6   �� 5	      $	��36* �6    � ColumnDefinitions 5   
   �� 5      $
��538* �6   �� 5      $
��Auto �6   .+�5   
   �� -   5        $��richTextBox1��5      $��Stretch=�6*    �� 
IsReadOnly . " �� VerticalScrollBarVisibility$ Visible=�6X   $��0,0,0,1q�6~   $��50��6�   $��50��6�   ���	#FFF2F2F2|�.  6�   �� 5   
   -   5        $��textBox1��5   >   $
��Auto��6   $��Stretch=�6    $��Stretch=�6N   $��0,0,0,-2q�6j   $��1��6|   6�   �� 5   
   -   5        $��listBox1��5   0   $��Stretch=�6   $��Stretch=�6@   $��1��6\   $��82��6l   
�������$��2��6�    �� SelectionMode$ Extended=�6�    � ContextMenu 5      �� 5      .@�5      m� -   5        $��Add to Buddy List��5      6:   m� 5      -   5        $��Send Private Message��5      6=   5      5      �� 5   
   -   5        $��gridSplitter1��5   @   $
��Auto��6   $
��Left=�6%   $��Stretch=�6U   $��2��6q    �� ShowsPreview . $��1��6�   $��2��6�   5      	 � 	Resources	 5      %  KailleraNET.ShowCurrGameCommand   ShowCurrGameCommand-  'KailleraNET.ShowServerChatWindowCommand  ShowServerChatWindowCommand(  "KailleraNET.ShowUsersWindowCommand  ShowUsersWindowCommand%  KailleraNET.ShowGameListCommand  ShowGameListCommand(  "KailleraNET.BeginDisconnectCommand  BeginDisconnectCommand"  KailleraNET.LeaveGameCommand  LeaveGameCommand��%�   &	        &	      &	 .     &	 E     &	 \     &	 s       5   
   5        5   
   5         5!   
   5"        5#   
   5$        5%   
   5&        5'   
   5(      5)      
 J� InputBindings
 5+      �� 5,   
   
 �� Key$ Q��6    �� 	Modifiers$ Controlf�6    �� Command# [ 61   �� 5-   
   $ U��6   $ Controlf�6   # [ 61   �� 5.   
   $ D��6   $ Controlf�6   # [ 61   52      