   M S B A M L   `   `   `  ����J  FWpfApplication3, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication3WpfApplication3  5   	        WpfApplication3.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WpfApplication3     5   	   -   5          � Title$  Task Planner��5	   	   $	��500��6   $	��750��6+    � 
ResizeMode$ CanResizeWithGrip=�6N   $	��500��6n   $	��750��6~    � 	Resources 5
         tasksViewSource��%   &	        �� 5   
   6   5      .��5      �  � DataContext# [  6    � ColumnDefinitions 5   
   �� 5      $
��420* �6   6.    � RowDefinitions 5   
   �� 5      $	��32* �6   $��32��6)   6:   �� 5      $
��252* �6   6,   �� 5      $	��35* �6   $��35��6)   6:   .+�5   
   �� -   5         ��Name$ closeButton��5      $��Close��6&   $��74��66   $��Right=�6A   $	��Top=�6]   $��0,3,10,0q�6�   $��22��6�   $��Center=�6�   $��2��6�   �� 5   
   -   5        $ newTaskButton��5      $��New Task��6(   $��74��6;   $
��Left=�6F   $	��Top=�6a   $��10,3,0,0q�6�   $��22��6�   $��Center=�6�   $��2��6�   �� 5   
   -   5        $ addContainerButton��5      $��Add Container��6-   $��90��6E   $	��Top=�6P   $��21��6�   $��Center=�6�   $
��Left=�6�   $��
273,10,0,0q�6�   $��0��6�   �� 5   
   -   5        $ deleteContainerButton��5      $��Delete Container��60   $	��100��6K   $	��Top=�6W   $��21��6�   $��Center=�6�   $
��Left=�6�   $��
368,10,0,0q�6�   $��0��6�   �� 5   
   -   5        $ DeleteTaskButton��5      $��Delete Task��6+   $��74��6A   $	��Top=�6L   $��89,3,0,0q�6�   $��22��6�   $��Center=�6�   $��2��6�   $
��Left=�6�   �� 5   
   -   5        $ DeleteRelationButton��5      $ ��Delete Task From Container��6/   $	��154��6T   $	��Top=�6`   $��	301,3,0,0q�6�   $��22��6�   $��Center=�6�   $��2��6�   $
��Left=�6�   �� 5   
   -   5        $ addRelationButton��5      $��Edit Container��6,   $��83��6E   $	��Top=�6P   $��	213,3,0,0q�6�   $��22��6�   $��Center=�6�   $��2��6�   $
��Left=�6�   &   System.Windows.Controls.DataGrid  5   
   -	   5          Name$ tasksDataGrid��5         AutoGenerateColumns .  	   EnableRowVirtualization	 . 
   RowDetailsVisibilityMode$
 VisibleWhenSelected=�6�   $��1��6�   $��10q�6�      CanUserAddRows .     CanUserDeleteRows .  ��6�   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -
   5        taskNameColumn��,  &System.Windows.Controls.DataGridColumn   Header$ 	Task Name��5   Z      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6m      MinWidth$	 200Q�6w   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *
TaskName+   EditingElementStyle 5       �� 5!       �� 
TargetType" ��6    .�5"      ��  �� Property �@��	MaxLength �� Value$	 500��6:   5#      5%        5&      -   5        taskPriorityColumn��$ Priority��5&   �   $ 50 6�   $ 50Q�6�    6B   �� *TaskPriority+ �� UpdateSourceTrigger$ 	LostFocus=�   	CellStyle 5'      �� 5(      *  $System.Windows.Controls.DataGridCell"  6    .�5)      ��  � �� 5*   "   �� 5+   &    �� 
TargetType"  66   .R�5,   *   � #��z��6/   .+�5-   .   �� $��Center=�6?   $��Center=�5.   +   5/   +   50   '   52      �� 53       � ��$ Center=�54      55      57      4  .System.Windows.Controls.DataGridTemplateColumn  58      -   5        DeadLineDateColumn��$ Deadline Date��58   F   $	 125 6]   $	 125Q�6i      CanUserSort .  59      �� 5:      "  6    .�5;      ��  � �� 5<   "   �� 5=   &   "  66   .R�5>   *   � #��z��6/   .+�5?   .   �� $��Center=�6?   $��Center=�5@   +   5A   +   5B   '   5D      �� 5E       � ��$ Center=�5F      5G         CellTemplate 5I      �� 5J      .R�5K      �� ��6(   �� *DeadLineDate+ �� StringFormat$ 
dd/MM/yyyy��5L         CellEditingTemplate 5N      �� 5O      .R�5P      (  "System.Windows.Controls.DatePicker  $	��125��6�      SelectedDate 6)   �� *DeadLineDate+ �� Mode$ TwoWay=� �� NotifyOnValidationError .   �� ValidatesOnExceptions  . 6�   5Q      5S      4	  .System.Windows.Controls.DataGridCheckBoxColumn	  5T      -   5        validationStatusColumn��$ Validation Status��5T   n   $	 100 6�   $	 100Q�6�    6I   �� *ValidationStatus+ 5U      �� 5V      "  6    .�5W      ��  � �� 5X   "   �� 5Y   &   "  66   .R�5Z   *   � #��z��6/   .+�5[   .   �� $��Center=�6?   $��Center=�5\   +   5]   +   5^   '   5`      �� 5a       � ��$ Center=�5b      5c      5e      5g      �� 5h   
   -   5        ! ��Name$! ContainerDropdown��5h      $
��Left=�6.   $��10,0,0,1q�6I   $��Bottom=�6[   $	��198��6v   " �� SelectedIndex$" 0��6�   $��21��6�   .@�5i      �� -   5        $
��cdi1��5i      .��6'   Inbox6.   �� 5j      -   5        $
��cdi2��5j      .��6'   High priority tasks6<   �� 5k      -   5        $
��cdi3��5k      .��6'   Today's tasks66   5l      �� 5m   
   -   5        # ��Name$# 	searchBox��5m      $��Right=�6%   $��21��6A   $��	0,10,10,0q�6M   $ �� TextWrapping$
$ Wrap=�6`   $��Search��6t   $	��Top=�6�   $	��179��6�   $��Center=�6�   6�   �� 5n   
   -   5        $ searchGoButton��5n      $��Go��6)   $��25��66   $	��Top=�6A   $��21��6v   $��Center=�6�   $��Right=�6�   $��	0,10,10,0q�6�   $��0��6�   �� 5o   
   -   5        % ��Name$% 
taskNumber��5o      $
��Left=�6(   $��
213,13,0,0q�6C   $
��Wrap=�6W   $	��Top=�6k   $��55��6�   & �� TextAlignment$& Center=�6�   ' � UseLayoutRounding' . �� 6�   $�60 Task��6�   �� 6�   $�(��6�   �� 6�   $�s��6�   �� 6�   $�)��6�   6  5p      5q      