FasdUAS 1.101.10   ��   ��    k             l     ��  ��      LaunchBar Action Script     � 	 	 0   L a u n c h B a r   A c t i o n   S c r i p t   
  
 l     ��  ��    : 4 Opens a folder/directory/path in a new tab in iTerm     �   h   O p e n s   a   f o l d e r / d i r e c t o r y / p a t h   i n   a   n e w   t a b   i n   i T e r m      l     ��������  ��  ��        i         I      �� ���� 0 handle_string     ��  o      ���� 0 _string  ��  ��    k            r     
    b         m        �    c d    I    ��  ���� 0 escapespaces escapeSpaces    !�� ! o    ���� 0 _string  ��  ��    o      ���� 0 command     "�� " I    �� #���� 0 
runcommand 
runCommand #  $�� $ o    ���� 0 command  ��  ��  ��     % & % l     ��������  ��  ��   &  ' ( ' i     ) * ) I     �� +��
�� .aevtodocnull  �    alis + l      ,���� , o      ���� 	0 _path  ��  ��  ��   * k      - -  . / . r      0 1 0 n      2 3 2 1    ��
�� 
psxp 3 o     ���� 	0 _path   1 o      ���� 	0 _path   /  4 5 4 r     6 7 6 b     8 9 8 m     : : � ; ;  c d   9 I    �� <���� 0 escapespaces escapeSpaces <  =�� = o    	���� 	0 _path  ��  ��   7 o      ���� 0 command   5  >�� > I    �� ?���� 0 
runcommand 
runCommand ?  @�� @ o    ���� 0 command  ��  ��  ��   (  A B A l     ��������  ��  ��   B  C D C i     E F E I      �� G���� 0 escapespaces escapeSpaces G  H�� H o      ���� 0 _string  ��  ��   F k      I I  J K J l     �� L M��   L 0 * insert backslashes in front of all spaces    M � N N T   i n s e r t   b a c k s l a s h e s   i n   f r o n t   o f   a l l   s p a c e s K  O P O r      Q R Q l    	 S���� S I    	�� T��
�� .sysoexecTEXT���     TEXT T b      U V U b      W X W m      Y Y � Z Z  e c h o   " X o    ���� 0 _string   V m     [ [ � \ \ & "   |   s e d   ' s /   / \ \   / g '��  ��  ��   R o      ���� 0 _string   P  ] ^ ] l   �� _ `��   _ ] W sed does not support lookbehind, so replace double backslashes with single backslashes    ` � a a �   s e d   d o e s   n o t   s u p p o r t   l o o k b e h i n d ,   s o   r e p l a c e   d o u b l e   b a c k s l a s h e s   w i t h   s i n g l e   b a c k s l a s h e s ^  b c b l   �� d e��   d e _ (you might end up with double backslashes if the user already escaped spaces with a backslash)    e � f f �   ( y o u   m i g h t   e n d   u p   w i t h   d o u b l e   b a c k s l a s h e s   i f   t h e   u s e r   a l r e a d y   e s c a p e d   s p a c e s   w i t h   a   b a c k s l a s h ) c  g h g r     i j i l    k���� k I   �� l��
�� .sysoexecTEXT���     TEXT l b     m n m b     o p o m     q q � r r  e c h o   " p o    ���� 0 _string   n m     s s � t t , "   |   s e d   ' s / ( \ \ ) + / \ \ / g '��  ��  ��   j o      ���� 0 _string   h  u�� u L     v v o    ���� 0 _string  ��   D  w x w l     ��������  ��  ��   x  y z y i     { | { I      �� }���� 0 
runcommand 
runCommand }  ~�� ~ o      ���� 0 command  ��  ��   | O       �  k     � �  � � � r     � � � l   	 ����� � I   	������
�� .Itrmnwwnnull��� ��� null��  ��  ��  ��   � o      ���� 0 	newwindow 	newWindow �  ��� � O     � � � I   ���� �
�� .Itrmsntxnull���     obj ��   � �� ���
�� 
Text � o    ���� 0 command  ��   � n     � � � 1    ��
�� 
Wcsn � 4   �� �
�� 
cwin � m    ���� ��   � m      � ��                                                                                  ITRM  alis    F  Lapalapa HD                �u�H+  ��7	iTerm.app                                                      !��E{        ����  	                Applications    �u�      �E�v    ��7  #Lapalapa HD:Applications: iTerm.app    	 i T e r m . a p p    L a p a l a p a   H D  Applications/iTerm.app  / ��   z  ��� � l     ��������  ��  ��  ��       �� � � � � ���   � ���������� 0 handle_string  
�� .aevtodocnull  �    alis�� 0 escapespaces escapeSpaces�� 0 
runcommand 
runCommand � �� ���� � ����� 0 handle_string  �� �� ���  �  ���� 0 _string  ��   � ������ 0 _string  �� 0 command   �  ������ 0 escapespaces escapeSpaces�� 0 
runcommand 
runCommand�� �*�k+ %E�O*�k+  � �� *���� � ���
�� .aevtodocnull  �    alis�� 	0 _path  ��   � ������ 	0 _path  �� 0 command   � �� :����
�� 
psxp�� 0 escapespaces escapeSpaces�� 0 
runcommand 
runCommand�� ��,E�O�*�k+ %E�O*�k+  � �� F���� � ����� 0 escapespaces escapeSpaces�� �� ���  �  ���� 0 _string  ��   � ���� 0 _string   �  Y [�� q s
�� .sysoexecTEXT���     TEXT�� �%�%j E�O�%�%j E�O� � �� |���� � ����� 0 
runcommand 
runCommand�� �� ���  �  �� 0 command  ��   � �~�}�~ 0 command  �} 0 	newwindow 	newWindow �  ��|�{�z�y�x
�| .Itrmnwwnnull��� ��� null
�{ 
cwin
�z 
Wcsn
�y 
Text
�x .Itrmsntxnull���     obj �� � *j E�O*�k/�, 	*�l UU ascr  ��ޭ