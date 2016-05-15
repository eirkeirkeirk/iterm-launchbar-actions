FasdUAS 1.101.10   ��   ��    k             l     ��  ��      LaunchBar Action Script     � 	 	 0   L a u n c h B a r   A c t i o n   S c r i p t   
  
 l     ��  ��    : 4 Opens a folder/directory/path in a new tab in iTerm     �   h   O p e n s   a   f o l d e r / d i r e c t o r y / p a t h   i n   a   n e w   t a b   i n   i T e r m      l     ��  ��    [ U TODO: if iTerm is not running, the app starts but then immediately kills the session     �   �   T O D O :   i f   i T e r m   i s   n o t   r u n n i n g ,   t h e   a p p   s t a r t s   b u t   t h e n   i m m e d i a t e l y   k i l l s   t h e   s e s s i o n      l     ��������  ��  ��        l     ��  ��    : 4 when you pass in an arbitrary string from LaunchBar     �   h   w h e n   y o u   p a s s   i n   a n   a r b i t r a r y   s t r i n g   f r o m   L a u n c h B a r      i         I      �� ���� 0 handle_string      ��   o      ���� 0 _string  ��  ��    k      ! !  " # " l     �� $ %��   $ &   prepend spaces with backslashes    % � & & @   p r e p e n d   s p a c e s   w i t h   b a c k s l a s h e s #  ' ( ' l     �� ) *��   ) V P	set _string to (do shell script "echo \"" & _string & "\" | sed 's/ /\\\\ /g'")    * � + + � 	 s e t   _ s t r i n g   t o   ( d o   s h e l l   s c r i p t   " e c h o   \ " "   &   _ s t r i n g   &   " \ "   |   s e d   ' s /   / \ \ \ \   / g ' " ) (  , - , l     �� . /��   . ] W sed does not support lookbehind, so replace double backslashes with single backslashes    / � 0 0 �   s e d   d o e s   n o t   s u p p o r t   l o o k b e h i n d ,   s o   r e p l a c e   d o u b l e   b a c k s l a s h e s   w i t h   s i n g l e   b a c k s l a s h e s -  1 2 1 l     �� 3 4��   3 c ] you might end up with double backslashes if the user already escaped spaces with a backslash    4 � 5 5 �   y o u   m i g h t   e n d   u p   w i t h   d o u b l e   b a c k s l a s h e s   i f   t h e   u s e r   a l r e a d y   e s c a p e d   s p a c e s   w i t h   a   b a c k s l a s h 2  6 7 6 l     �� 8 9��   8 [ U	set _string to (do shell script "echo \"" & _string & "\" | sed 's/(\\\\)+/\\\\/g'")    9 � : : � 	 s e t   _ s t r i n g   t o   ( d o   s h e l l   s c r i p t   " e c h o   \ " "   &   _ s t r i n g   &   " \ "   |   s e d   ' s / ( \ \ \ \ ) + / \ \ \ \ / g ' " ) 7  ; < ; r     
 = > = b      ? @ ? m      A A � B B  c d   @ I    �� C���� 0 escapespaces escapeSpaces C  D�� D o    ���� 0 _string  ��  ��   > o      ���� 0 command   <  E�� E I    �� F���� 0 
runcommand 
runCommand F  G�� G o    ���� 0 command  ��  ��  ��     H I H l     ��������  ��  ��   I  J K J l     �� L M��   L 9 3 when you pass in a folder reference from LaunchBar    M � N N f   w h e n   y o u   p a s s   i n   a   f o l d e r   r e f e r e n c e   f r o m   L a u n c h B a r K  O P O i     Q R Q I     �� S��
�� .aevtodocnull  �    alis S l      T���� T o      ���� 	0 _path  ��  ��  ��   R k      U U  V W V l     �� X Y��   X B < we get the quoted form of _string to handle spaces in paths    Y � Z Z x   w e   g e t   t h e   q u o t e d   f o r m   o f   _ s t r i n g   t o   h a n d l e   s p a c e s   i n   p a t h s W  [ \ [ r      ] ^ ] n      _ ` _ 1    ��
�� 
psxp ` o     ���� 	0 _path   ^ o      ���� 	0 _path   \  a b a l   �� c d��   c R L	set _path to (do shell script "echo \"" & _path & "\" | sed 's/ /\\\\ /g'")    d � e e � 	 s e t   _ p a t h   t o   ( d o   s h e l l   s c r i p t   " e c h o   \ " "   &   _ p a t h   &   " \ "   |   s e d   ' s /   / \ \ \ \   / g ' " ) b  f g f r     h i h b     j k j m     l l � m m  c d   k I    �� n���� 0 escapespaces escapeSpaces n  o�� o o    	���� 	0 _path  ��  ��   i o      ���� 0 command   g  p�� p I    �� q���� 0 
runcommand 
runCommand q  r�� r o    ���� 0 command  ��  ��  ��   P  s t s l     ��������  ��  ��   t  u v u i     w x w I      �� y���� 0 escapespaces escapeSpaces y  z�� z o      ���� 0 _string  ��  ��   x k      { {  | } | l     �� ~ ��   ~ 0 * insert backslashes in front of all spaces     � � � T   i n s e r t   b a c k s l a s h e s   i n   f r o n t   o f   a l l   s p a c e s }  � � � r      � � � l    	 ����� � I    	�� ���
�� .sysoexecTEXT���     TEXT � b      � � � b      � � � m      � � � � �  e c h o   " � o    ���� 0 _string   � m     � � � � � & "   |   s e d   ' s /   / \ \   / g '��  ��  ��   � o      ���� 0 _string   �  � � � l   �� � ���   � ] W sed does not support lookbehind, so replace double backslashes with single backslashes    � � � � �   s e d   d o e s   n o t   s u p p o r t   l o o k b e h i n d ,   s o   r e p l a c e   d o u b l e   b a c k s l a s h e s   w i t h   s i n g l e   b a c k s l a s h e s �  � � � l   �� � ���   � e _ (you might end up with double backslashes if the user already escaped spaces with a backslash)    � � � � �   ( y o u   m i g h t   e n d   u p   w i t h   d o u b l e   b a c k s l a s h e s   i f   t h e   u s e r   a l r e a d y   e s c a p e d   s p a c e s   w i t h   a   b a c k s l a s h ) �  � � � r     � � � l    ����� � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b     � � � m     � � � � �  e c h o   " � o    ���� 0 _string   � m     � � � � � , "   |   s e d   ' s / ( \ \ ) + / \ \ / g '��  ��  ��   � o      ���� 0 _string   �  ��� � L     � � o    ���� 0 _string  ��   v  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 
runcommand 
runCommand �  ��� � o      ���� 0 command  ��  ��   � O     K � � � k    J � �  � � � l   �� � ���   � 9 3 If iTerm already has a window, then make a new tab    � � � � f   I f   i T e r m   a l r e a d y   h a s   a   w i n d o w ,   t h e n   m a k e   a   n e w   t a b �  � � � l   �� � ���   � @ : otherwise we need to make a new window to run the command    � � � � t   o t h e r w i s e   w e   n e e d   t o   m a k e   a   n e w   w i n d o w   t o   r u n   t h e   c o m m a n d �  � � � Z    D � ��� � � I   �� ���
�� .coredoexnull���     obj  � l    ����� � 1    ��
�� 
Crwn��  ��  ��   � O    + � � � k    * � �  � � � r     � � � l    ����� � I   ������
�� .Itrmntwnnull���     obj ��  ��  ��  ��   � o      ���� 0 newtab newTab �  ��� � O    * � � � I  " )���� �
�� .Itrmsntxnull���     obj ��   � �� ���
�� 
Text � o   $ %���� 0 command  ��   � 1    ��
�� 
Wcsn��   � 1    ��
�� 
Crwn��   � k   . D � �  � � � r   . 5 � � � l  . 3 ����� � I  . 3������
�� .Itrmnwwnnull��� ��� null��  ��  ��  ��   � o      ���� 0 	newwindow 	newWindow �  ��� � O   6 D � � � I  < C���� �
�� .Itrmsntxnull���     obj ��   � �� ���
�� 
Text � o   > ?���� 0 command  ��   � n   6 9 � � � 1   7 9��
�� 
Wcsn � o   6 7���� 0 	newwindow 	newWindow��   �  ��� � I  E J������
�� .miscactvnull��� ��� null��  ��  ��   � m      � ��                                                                                  ITRM  alis    F  Lapalapa HD                �u�H+  ��7	iTerm.app                                                      !��E{        ����  	                Applications    �u�      �E�v    ��7  #Lapalapa HD:Applications: iTerm.app    	 i T e r m . a p p    L a p a l a p a   H D  Applications/iTerm.app  / ��   �  ��� � l     ��������  ��  ��  ��       �� � � � � ���   � ����~�}�� 0 handle_string  
� .aevtodocnull  �    alis�~ 0 escapespaces escapeSpaces�} 0 
runcommand 
runCommand � �| �{�z � ��y�| 0 handle_string  �{ �x ��x  �  �w�w 0 _string  �z   � �v�u�v 0 _string  �u 0 command   �  A�t�s�t 0 escapespaces escapeSpaces�s 0 
runcommand 
runCommand�y �*�k+ %E�O*�k+  � �r R�q�p � ��o
�r .aevtodocnull  �    alis�q 	0 _path  �p   � �n�m�n 	0 _path  �m 0 command   � �l l�k�j
�l 
psxp�k 0 escapespaces escapeSpaces�j 0 
runcommand 
runCommand�o ��,E�O�*�k+ %E�O*�k+  � �i x�h�g � ��f�i 0 escapespaces escapeSpaces�h �e ��e  �  �d�d 0 _string  �g   � �c�c 0 _string   �  � ��b � �
�b .sysoexecTEXT���     TEXT�f �%�%j E�O�%�%j E�O� � �a ��`�_ � ��^�a 0 
runcommand 
runCommand�` �] ��]  �  �\�\ 0 command  �_   � �[�Z�Y�[ 0 command  �Z 0 newtab newTab�Y 0 	newwindow 	newWindow � 	 ��X�W�V�U�T�S�R�Q
�X 
Crwn
�W .coredoexnull���     obj 
�V .Itrmntwnnull���     obj 
�U 
Wcsn
�T 
Text
�S .Itrmsntxnull���     obj 
�R .Itrmnwwnnull��� ��� null
�Q .miscactvnull��� ��� null�^ L� H*�,j  "*�, *j E�O*�, 	*�l UUY *j E�O��, 	*�l UO*j U ascr  ��ޭ