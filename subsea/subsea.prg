  d � 25030  �� 18030 % � 18330 = �� ***************** U �� *** MAIN LOOP *** m �� ***************** y � 17030 � � 5000 � ~� � �� ***************** � �� *** GAME LOOP *** � �� ***************** � �FC�FC�1 � �� 6030 � �� 7030 � �� 8030 
!�� 5030 &!p� ********************* B!z� *** HANDLE SHARKS *** ^!�� ********************* m!�� I�1 � CS �!�: � YS(I) ��1 � (XS(I)��5 � XS(I)��339) � YS(I)��1:� I,XS(I),YS(I) �!�: � YS(I) ��1 � � "�:  � YS(I)��200 � VS(I)��1:� � YS(I)��70 � VS(I)�1 0"�:  � YS(I) ��1 � � �(FC, SS(I))� 0 � � \"�:   XS(I)�XS(I)�HS(I):YS(I)�YS(I)�VS(I) y"�:   � �(XS(I),4)�0 � � �"�:    � FS(I)�9 � FS(I)�10:� � FS(I)�10 � FS(I)�9 �"�:    � FS(I)�7 � FS(I)�8:� � FS(I)�8 � FS(I)�7 �"�:   � �"�:  � #�: �:� � #:  J��(�(1)�50) 3#:  � J�0 � NS�I:� 6330 <#: � B#$� H#.� b#�� ******************* |#�� *** SPAWN SHARK *** �#�� ******************* �#�YS(NS)��(�(1)�110)�90 �#�J��(�(1)�2) �#�� J�0 � � �#�: HS(NS)��1:FS(NS)�9:XS(NS)�338 �#��:� �  $�: HS(NS)�1:FS(NS)�7:XS(NS)�6 '$�� @$ VS(NS)�0:J��(�(1)�3) O$
� J�0 � � _$: VS(NS)��1 s$�:� � J�1 � � �$(: VS(NS)�1 �$2� �$<SS(NS)��(�(1)�3)�1 �$F� �$X� ************************* �$b� *** CONTROL SUBMARINE *** %l� ************************* %vN��(2):HP�0:VP�0 2%�� (N � 15)��0 � � H%�: HP�DR(N � 15,0) ^%�: VP�DR(N � 15,1) e%�� ~%�� HP��0 � VP��0 � � �%�: � HP��0 � � �%�:  FP�FP�1 �%�:  � HP�0 � FP�6 � FP�4:� � HP�0 � FP�3 � FP�1 �%�: � �%�: XP�XP�HP:YP�YP�VP �%�� &�� &@� ********************** ;&J� *** UPDATE SPRITES *** X&T� ********************** a&^�T 0 |&h� $40000,FP:� 0,XP,YP �&r� I�1 � CS �&|: � YS(I)��1 � � �&�:  � $40000�2�I,FS(I) �&�:  � I,XS(I),YS(I) �&�: � �&�� �&�� 'hB� ****************************** 2'rB� *** INITIALIZE SHARK LEVEL *** W'|B� ****************************** j'�BXP�172:YP�70:� �'�B� I�1 � CS:YS(I)��1:� �'�B� $40000,FP:� 0,XP,YP �'�B� �'PF� *************************** �'ZF� *** SETUP SPRITE MEMORY *** (dF� *************************** -(nF�# 1,0:� RESERVE 8K IN BANK 4 _(xF�! 3,64�13,0,$40000:� SPREICHERBEREICH LEEREN k(�F� 19830 �(�F� $D06C,0:� $D06D,0:� BIT 0-16 TO 0 FOR $40000 �(�F� $D06E,128�4:� SPRPTR16 (BIT7) AND BIT 2 TO 4 FOR $40000 �(�F� )|G� *********************************** 6)�G� *** INIT SPRITES FOR DIVE LEVEL *** `)�G� *********************************** })�G� $40000,$1:� $40001,$10 �)�G� 0,1,12,1,0,0,1 �)�G� I�1 � CS�1 �)�G: � $40000�2�I,$7:� $40000�2�I�1,$10 �)�G: � I,1,3,1,0,0,1 �)�G� �)�G� *XM� *****************  *bM� *** READ DATA *** 8*lM� ***************** F*vM� I�0 � 8 ^*wM� DR(I,0):� DR(I,1) d*xM� t*M� I�0 � 635 �*�M� D:� $40040�I,D �*�M� �*�M� �*�M� *********************************** �*�M� *** PLAYER DIRECTION DEFINITION *** +�M� *********************************** C+�M� 0,0,0,-1,1,-1,1,0,1,1,0,1,-1,1,-1,0,-1,-1 m+ N� *********************************** �+!N� *** SUBMARINE SPRITE DEFINITION *** �+"N� *********************************** �+%N� *** RIGHT FRAME 1 �+*N� 0,0,0,0,0,0,0,10,0 ,4N� 0,11,0,0,43,0,0,43,0 3,>N� 0,43,128,128,170,128,160,169,84 Y,HN� 34,169,85,42,170,149,10,170,170 �,RN� 41,153,154,41,153,154,170,170,171 �,\N� 138,170,175,2,170,172,2,171,252 �,fN� 2,191,240,0,170,128,0,0,0,0 �,zN� *** RIGHT FRAME 2 �,�N� 0,0,0,0,0,0,0,10,0 -�N� 0,11,0,0,43,0,0,43,0 9-�N� 0,43,128,0,170,128,128,169,84 `-�N� 162,169,85,42,170,149,10,170,170 �-�N� 41,153,154,169,153,154,138,170,171 �-�N� 10,170,175,2,170,172,2,171,252 �-�N� 2,191,240,0,170,128,0,0,0,0 �-�N� *** RIGHT FRAME 3 .�N� 0,0,0,0,0,0,0,10,0 .�N� 0,11,0,0,43,0,0,43,0 >.�N� 0,43,128,0,170,128,0,169,84 d.�N� 2,169,85,170,170,149,10,170,170 �.O� 169,153,154,9,153,154,10,170,171 �.O� 10,170,175,2,170,172,2,171,252 �.O� 2,191,240,0,170,128,0,0,0,0 �..O� *** LEFT FRAME 1 /8O� 0,0,0,0,0,0,0,160,0 !/BO� 0,224,0,0,232,0,0,232,0 A/LO� 2,232,0,2,170,2,21,106,10 i/VO� 85,106,136,86,170,168,170,170,160 �/`O� 166,102,104,166,102,104,234,170,170 �/jO� 250,170,162,58,170,128,63,234,128 �/tO� 15,254,128,2,170,0,0,0,0,0 �/�O� *** LEFT FRAME 2 0�O� 0,0,0,0,0,0,0,160,0 +0�O� 0,224,0,0,232,0,0,232,0 J0�O� 2,232,0,2,170,0,21,106,2 r0�O� 85,106,138,86,170,168,170,170,160 �0�O� 166,102,104,166,102,106,234,170,162 �0�O� 250,170,160,58,170,128,63,234,128 �0�O� 15,254,128,2,170,0,0,0,0,0 �0�O� *** LEFT FRAME 3 1�O� 0,0,0,0,0,0,0,160,0 41�O� 0,224,0,0,232,0,0,232,0 S1 P� 2,232,0,2,170,0,21,106,0 {1
P� 85,106,128,86,170,170,170,170,160 �1P� 166,102,106,166,102,96,234,170,160 �1P� 250,170,160,58,170,128,63,234,128 �1(P� 15,254,128,2,170,0,0,0,0,0 2xP� ******************************* 92yP� *** SHARK SPRITE DEFINITION *** _2zP� ******************************* w2}P� *** RIGHT FRAME 1 �2�P� 0,0,0,2,128,0,2,160,0 �2�P� 0,160,0,128,168,0,128,40,0 �2�P� 160,42,0,160,170,128,162,170,96 3�P� 42,102,88,42,102,170,170,169,170 (3�P� 162,154,84,128,170,160,128,2,128 E3�P� 0,10,160,0,8,32,0,8,32 _3�P� 0,0,0,0,0,0,0,0,0,0 w3�P� *** RIGHT FRAME 2 �3�P� 0,0,0,2,128,0,2,160,0 �3�P� 0,160,0,32,168,0,32,40,0 �3�P� 32,42,0,32,170,128,34,170,96 �3�P� 42,102,88,42,102,170,42,169,170 4Q� 34,154,84,32,170,160,32,2,128 <4Q� 0,10,160,0,8,32,0,32,8 V4Q� 0,0,0,0,0,0,0,0,0,0 m4,Q� *** LEFT FRAME 1 �46Q� 0,0,0,0,2,128,0,10,128 �4@Q� 0,10,0,0,42,2,0,40,2 �4JQ� 0,168,10,2,170,10,9,170,138 �4TQ� 37,153,168,170,153,168,170,106,170 5^Q� 21,166,138,10,170,2,2,128,2 /5hQ� 10,160,0,8,32,0,8,32,0 I5rQ� 0,0,0,0,0,0,0,0,0,0 `5�Q� *** LEFT FRAME 2 }5�Q� 0,0,0,0,2,128,0,10,128 �5�Q� 0,10,0,0,42,8,0,40,8 �5�Q� 0,168,8,2,170,8,9,170,136 �5�Q� 37,153,168,170,153,168,170,106,168 6�Q� 21,166,136,10,170,8,2,128,8  6�Q� 10,160,0,8,32,0,32,8,0 :6�Q� 0,0,0,0,0,0,0,0,0,0 i6�a� **************************************** �6�a� *** INIT VARIABLES AND DEFINE ARRAYS *** �6�a� **************************************** �6�aXP�100:YP�100:FP�3:FC�0:HP�0:VP�0 �6�aCS�5 07�a� XS(CS):� YS(CS):� FS(CS):� HS(CS):� VS(CS):� SS(CS) >7�a� DR(8,1) D7b�   