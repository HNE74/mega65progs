 ' d � 25030:� DECLARE VARS AND ARRAYS I �� 18030:� SETUP SPRITE MEMORY a �� 19830:� READ DATA � � 18330:� INIT SPRITES FOR SHARK LEVEL � �� ***************** � �� *** MAIN LOOP *** � �� ***************** � �� 14000:� SHOW INTRO SCREEN !� 17030:� INIT SHARK LEVEL 0!� 5000:� START GAME LOOP 6!~� N!�� ***************** f!�� *** GAME LOOP *** ~!�� ***************** �!�FC�FC�1 �!�� 6030 �!�� 7030 �!�� 8030 �!�� 5030 �!p� ********************* �!z� *** HANDLE SHARKS *** 
"�� ********************* "�� I�1 � CS a"�: � YS(I) ��1 � (XS(I)��5 � XS(I)��339) � YS(I)��1:� I,XS(I),YS(I) x"�: � YS(I) ��1 � � �"�:  � YS(I)��200 � VS(I)��(�(�(0)�2)�1):� � YS(I)��70 � VS(I)��(�(0)�2)�1 �"�:  � YS(I) ��1 � � �(FC, SS(I))� 0 � � #�:   XS(I)�XS(I)�HS(I):YS(I)�YS(I)�VS(I) ;#�:   � �(XS(I),4)�0 � � p#�:    � FS(I)�9 � FS(I)�10:� � FS(I)�10 � FS(I)�9 �#�:    � FS(I)�7 � FS(I)�8:� � FS(I)�8 � FS(I)�7 �#�:   � �#�:  � �#�: �:� � �#:  J��(�(1)�50) �#:  � J�0 � NS�I:� 6330 �#: � $$� 
$.� $$�� ******************* >$�� *** SPAWN SHARK *** X$�� ******************* r$�YS(NS)��(�(1)�110)�90 �$�J��(�(1)�2) �$�� J�0 � � �$�: HS(NS)��(�(�(0)�2)�1):FS(NS)�9:XS(NS)�338 �$��:� � �$�: HS(NS)��(�(0)�2)�1:FS(NS)�7:XS(NS)�6 �$�� % VS(NS)�0:J��(�(1)�3) '%
� J�0 � � C%: VS(NS)��(�(�(0)�2)�1) W%�:� � J�1 � � p%(: VS(NS)��(�(0)�2)�1 w%2� �%<SS(NS)��(�(1)�3)�1 �%F� �%X� ************************* �%b� *** CONTROL SUBMARINE *** �%l� ************************* 	&vN��(2):HP�0:VP�0  &�� (N � 15)��0 � � 6&�: HP�DR(N � 15,0) L&�: VP�DR(N � 15,1) S&�� l&�� HP��0 � VP��0 � � &�: � HP��0 � � �&�:  FP�FP�1 �&�:  � HP�0 � FP�6 � FP�4:� � HP�0 � FP�3 � FP�1 �&�: �:� � �&�:  FP�FP�1:� FP�4 � FP�1 '�:  � FP�7 � FP�4 
'�: � "'�: XP�XP�HP:YP�YP�VP L': � YP�65 � YP�65:� � YP�220 � YP�220 v': � XP�24 � XP�24:� � XP�311 � XP�311 �'�:� � VP�0 � � �' : � �(FC,10)�0 � � YP�220 � YP�YP�1 �'*� �'4� �'@� ********************** �'J� *** UPDATE SPRITES *** (T� ********************** !(^�T 0 <(h� $40000,FP:� 0,XP,YP K(r� I�1 � CS a(|: � YS(I)��1 � � {(�:  � $40000�2�I,FS(I) �(�:  � I,XS(I),YS(I) �(�: � �(�� �(�� �(�6� ************************* �(�6� *** SHOW INTRO SCREEN *** )�6� ************************* )�6� )�6� 9)�>� ****************************** ^)�>� *** DRAW SHARK LEVEL ARENA *** �)�>� ****************************** �)�>� �)�>� "                ���������" �)�>� "                 ������" �)�>� I�0 � 39 �)�>: C@&(I,2)�14:T@&(I,2)�85 *�>: C@&(I,3)�14:T@&(I,3)�73 <*�>: C@&(I,24)�7:T@&(I,24)�230 B*�>� H*�>� m*hB� ****************************** �*rB� *** INITIALIZE SHARK LEVEL *** �*|B� ****************************** �*�BXP�172:YP�65:� 16030 �*�B� I�1 � CS:YS(I)��1:� +�B� $40000,FP:� 0,XP,YP +�B� -+PF� *************************** O+ZF� *** SETUP SPRITE MEMORY *** q+dF� *************************** �+nF� 65381: � 40 COLUMN SCREEN �+xF�# 1,0:� RESERVE 8K IN BANK 4 �+�F�! 3,64�13,0,$40000:� SPREICHERBEREICH LEEREN ,�F� $D06C,0:� $D06D,0:� BIT 0-16 TO 0 FOR $40000 V,�F� $D06E,128�4:� SPRPTR16 (BIT7) AND BIT 2 TO 4 FOR $40000 \,�F� �,|G� *********************************** �,�G� *** INIT SPRITES FOR SHARK LEVEL *** �,�G� *********************************** �,�G� $40000,$1:� $40001,$10 -�G� 0,1,12,1,0,0,1 -�G� I�1 � CS�1 H-�G: � $40000�2�I,$7:� $40000�2�I�1,$10 _-�G: � I,1,3,1,0,0,1 e-�G� k-�G� �-XM� ***************** �-bM� *** READ DATA *** �-lM� ***************** �-vM� I�0 � 8 �-wM� DR(I,0):� DR(I,1) �-xM� �-M� I�0 � 635 .�M� D:� $40040�I,D 
.�M� .�M� :.�M� *********************************** d.�M� *** PLAYER DIRECTION DEFINITION *** �.�M� *********************************** �.�M� 0,0,0,-1,1,-1,1,0,1,1,0,1,-1,1,-1,0,-1,-1 �. N� *********************************** /!N� *** SUBMARINE SPRITE DEFINITION *** </"N� *********************************** T/%N� *** RIGHT FRAME 1 m/*N� 0,0,0,0,0,0,0,10,0 �/4N� 0,11,0,0,43,0,0,43,0 �/>N� 0,43,128,128,170,128,160,169,84 �/HN� 34,169,85,42,170,149,10,170,170 �/RN� 41,153,154,41,153,154,170,170,171 "0\N� 138,170,175,2,170,172,2,171,252 D0fN� 2,191,240,0,170,128,0,0,0,0 \0zN� *** RIGHT FRAME 2 u0�N� 0,0,0,0,0,0,0,10,0 �0�N� 0,11,0,0,43,0,0,43,0 �0�N� 0,43,128,0,170,128,128,169,84 �0�N� 162,169,85,42,170,149,10,170,170 1�N� 41,153,154,169,153,154,138,170,171 )1�N� 10,170,175,2,170,172,2,171,252 K1�N� 2,191,240,0,170,128,0,0,0,0 c1�N� *** RIGHT FRAME 3 |1�N� 0,0,0,0,0,0,0,10,0 �1�N� 0,11,0,0,43,0,0,43,0 �1�N� 0,43,128,0,170,128,0,169,84 �1�N� 2,169,85,170,170,149,10,170,170 2O� 169,153,154,9,153,154,10,170,171 +2O� 10,170,175,2,170,172,2,171,252 M2O� 2,191,240,0,170,128,0,0,0,0 d2.O� *** LEFT FRAME 1 ~28O� 0,0,0,0,0,0,0,160,0 �2BO� 0,224,0,0,232,0,0,232,0 �2LO� 2,232,0,2,170,2,21,106,10 �2VO� 85,106,136,86,170,168,170,170,160 3`O� 166,102,104,166,102,104,234,170,170 63jO� 250,170,162,58,170,128,63,234,128 W3tO� 15,254,128,2,170,0,0,0,0,0 n3�O� *** LEFT FRAME 2 �3�O� 0,0,0,0,0,0,0,160,0 �3�O� 0,224,0,0,232,0,0,232,0 �3�O� 2,232,0,2,170,0,21,106,2 �3�O� 85,106,138,86,170,168,170,170,160 4�O� 166,102,104,166,102,106,234,170,162 ?4�O� 250,170,160,58,170,128,63,234,128 `4�O� 15,254,128,2,170,0,0,0,0,0 w4�O� *** LEFT FRAME 3 �4�O� 0,0,0,0,0,0,0,160,0 �4�O� 0,224,0,0,232,0,0,232,0 �4 P� 2,232,0,2,170,0,21,106,0 �4
P� 85,106,128,86,170,170,170,170,160 5P� 166,102,106,166,102,96,234,170,160 G5P� 250,170,160,58,170,128,63,234,128 h5(P� 15,254,128,2,170,0,0,0,0,0 �5xP� ******************************* �5yP� *** SHARK SPRITE DEFINITION *** �5zP� ******************************* �5}P� *** RIGHT FRAME 1 6�P� 0,0,0,2,128,0,2,160,0 /6�P� 0,160,0,128,168,0,128,40,0 U6�P� 160,42,0,160,170,128,162,170,96 |6�P� 42,102,88,42,102,170,170,169,170 �6�P� 162,154,84,128,170,160,128,2,128 �6�P� 0,10,160,0,8,32,0,8,32 �6�P� 0,0,0,0,0,0,0,0,0,0 �6�P� *** RIGHT FRAME 2 7�P� 0,0,0,2,128,0,2,160,0 -7�P� 0,160,0,32,168,0,32,40,0 P7�P� 32,42,0,32,170,128,34,170,96 v7�P� 42,102,88,42,102,170,42,169,170 �7Q� 34,154,84,32,170,160,32,2,128 �7Q� 0,10,160,0,8,32,0,32,8 �7Q� 0,0,0,0,0,0,0,0,0,0 �7,Q� *** LEFT FRAME 1 86Q� 0,0,0,0,2,128,0,10,128  8@Q� 0,10,0,0,42,2,0,40,2 B8JQ� 0,168,10,2,170,10,9,170,138 k8TQ� 37,153,168,170,153,168,170,106,170 �8^Q� 21,166,138,10,170,2,2,128,2 �8hQ� 10,160,0,8,32,0,8,32,0 �8rQ� 0,0,0,0,0,0,0,0,0,0 �8�Q� *** LEFT FRAME 2 �8�Q� 0,0,0,0,2,128,0,10,128 9�Q� 0,10,0,0,42,8,0,40,8 39�Q� 0,168,8,2,170,8,9,170,136 \9�Q� 37,153,168,170,153,168,170,106,168 ~9�Q� 21,166,136,10,170,8,2,128,8 �9�Q� 10,160,0,8,32,0,32,8,0 �9�Q� 0,0,0,0,0,0,0,0,0,0 �9�a� **************************************** :�a� *** INIT VARIABLES AND DEFINE ARRAYS *** B:�a� **************************************** h:�aXP�100:YP�100:FP�3:FC�0:HP�0:VP�0 q:�aCS�5 �:�a� XS(CS):� YS(CS):� FS(CS):� HS(CS):� VS(CS):� SS(CS) �:�a� DR(8,1) �:b�   