  d � 25030  �� 18030 % � 18330 = �� ***************** U �� *** MAIN LOOP *** m �� ***************** y � 17030 � � 5000 � ~� � �� ***************** � �� *** GAME LOOP *** � �� ***************** � �� $40000,FP:� 0,XP,YP � �FC�FC�1 !�� 6030 !��T 0 !�� 5030 4!p� ********************* P!z� *** HANDLE SHARKS *** l!�� ********************* {!�� I�1 � CS �!�: � YS(I) ��1 � (XS(I)��5 � XS(I)��339) � YS(I)��1:� I,XS(I),YS(I) �!�: � YS(I) ��1 � � 	"�:  � YS(I)��200 � YS(I)��70 � VS(I)��VS(I) 6"�:  � YS(I) ��1 � � �(FC, SS(I))� 0 � � b"�:   XS(I)�XS(I)�HS(I):YS(I)�YS(I)�VS(I) "�:   � �(XS(I),4)�0 � � �"�:    � FS(I)�9 � FS(I)�10:� � FS(I)�10 � FS(I)�9 �"�:    � FS(I)�7 � FS(I)�8:� � FS(I)�8 � FS(I)�7 �"�:   � �"�:  � #�:  � $40000�2�I,FS(I) .#�:  � I,XS(I),YS(I) <#�: �:� � P#�:  J��(�(1)�50) k#:  � J�0 � NS�I:� 6330 t#: � z#� �#$� �#�� ******************* �#�� *** SPAWN SHARK *** �#�� ******************* �#�YS(NS)��(�(1)�110)�90 �# J��(�(1)�2) $
� J�0 � � +$: HS(NS)��1:FS(NS)�9:XS(NS)�338 7$�:� � X$(: HS(NS)�1:FS(NS)�7:XS(NS)�6 _$2� x$<VS(NS)�0:J��(�(1)�3) �$F� J�0 � � �$P: VS(NS)��1 �$Z�:� � J�1 � � �$d: VS(NS)�1 �$n� �$sSS(NS)��(�(1)�3)�1 �$x� %hB� ****************************** (%rB� *** INITIALIZE SHARK LEVEL *** M%|B� ****************************** `%�BXP�172:YP�70:� z%�B� I�1 � CS:YS(I)��1:� �%�B� �%PF� *************************** �%ZF� *** SETUP SPRITE MEMORY *** �%dF� *************************** &nF�# 1,0:� RESERVE 8K IN BANK 4 :&xF�! 3,64�13,0,$40000:� SPREICHERBEREICH LEEREN F&�F� 19830 y&�F� $D06C,0:� $D06D,0:� BIT 0-16 TO 0 FOR $40000 �&�F� $D06E,128�4:� SPRPTR16 (BIT7) AND BIT 2 TO 4 FOR $40000 �&�F� �&|G� *********************************** '�G� *** INIT SPRITES FOR DIVE LEVEL *** ;'�G� *********************************** X'�G� $40000,$1:� $40001,$10 n'�G� 0,1,12,1,0,0,1 '�G� I�1 � CS�1 �'�G: � $40000�2�I,$7:� $40000�2�I�1,$10 �'�G: � I,1,3,1,0,0,1 �'�G� �'�G� �'XM� ************************ 	(bM� *** READ SPRITE DATA *** ((lM� ************************ 8(vM� I�0 � 635 M(�M� D:� $40040�I,D S(�M� Y(�M� �( N� *********************************** �(!N� *** SUBMARINE SPRITE DEFINITION *** �("N� *********************************** �(%N� *** RIGHT FRAME 1 )*N� 0,0,0,0,0,0,0,10,0 #)4N� 0,11,0,0,43,0,0,43,0 I)>N� 0,43,128,128,170,128,160,169,84 o)HN� 34,169,85,42,170,149,10,170,170 �)RN� 41,153,154,41,153,154,170,170,171 �)\N� 138,170,175,2,170,172,2,171,252 �)fN� 2,191,240,0,170,128,0,0,0,0 �)zN� *** RIGHT FRAME 2 *�N� 0,0,0,0,0,0,0,10,0 +*�N� 0,11,0,0,43,0,0,43,0 O*�N� 0,43,128,0,170,128,128,169,84 v*�N� 162,169,85,42,170,149,10,170,170 �*�N� 41,153,154,169,153,154,138,170,171 �*�N� 10,170,175,2,170,172,2,171,252 �*�N� 2,191,240,0,170,128,0,0,0,0 �*�N� *** RIGHT FRAME 3 +�N� 0,0,0,0,0,0,0,10,0 2+�N� 0,11,0,0,43,0,0,43,0 T+�N� 0,43,128,0,170,128,0,169,84 z+�N� 2,169,85,170,170,149,10,170,170 �+O� 169,153,154,9,153,154,10,170,171 �+O� 10,170,175,2,170,172,2,171,252 �+O� 2,191,240,0,170,128,0,0,0,0 �+.O� *** LEFT FRAME 1 ,8O� 0,0,0,0,0,0,0,160,0 7,BO� 0,224,0,0,232,0,0,232,0 W,LO� 2,232,0,2,170,2,21,106,10 ,VO� 85,106,136,86,170,168,170,170,160 �,`O� 166,102,104,166,102,104,234,170,170 �,jO� 250,170,162,58,170,128,63,234,128 �,tO� 15,254,128,2,170,0,0,0,0,0 	-�O� *** LEFT FRAME 2 #-�O� 0,0,0,0,0,0,0,160,0 A-�O� 0,224,0,0,232,0,0,232,0 `-�O� 2,232,0,2,170,0,21,106,2 �-�O� 85,106,138,86,170,168,170,170,160 �-�O� 166,102,104,166,102,106,234,170,162 �-�O� 250,170,160,58,170,128,63,234,128 �-�O� 15,254,128,2,170,0,0,0,0,0 .�O� *** LEFT FRAME 3 ,.�O� 0,0,0,0,0,0,0,160,0 J.�O� 0,224,0,0,232,0,0,232,0 i. P� 2,232,0,2,170,0,21,106,0 �.
P� 85,106,128,86,170,170,170,170,160 �.P� 166,102,106,166,102,96,234,170,160 �.P� 250,170,160,58,170,128,63,234,128 /(P� 15,254,128,2,170,0,0,0,0,0 )/xP� ******************************* O/yP� *** SHARK SPRITE DEFINITION *** u/zP� ******************************* �/}P� *** RIGHT FRAME 1 �/�P� 0,0,0,2,128,0,2,160,0 �/�P� 0,160,0,128,168,0,128,40,0 �/�P� 160,42,0,160,170,128,162,170,96 0�P� 42,102,88,42,102,170,170,169,170 >0�P� 162,154,84,128,170,160,128,2,128 [0�P� 0,10,160,0,8,32,0,8,32 u0�P� 0,0,0,0,0,0,0,0,0,0 �0�P� *** RIGHT FRAME 2 �0�P� 0,0,0,2,128,0,2,160,0 �0�P� 0,160,0,32,168,0,32,40,0 �0�P� 32,42,0,32,170,128,34,170,96 1�P� 42,102,88,42,102,170,42,169,170 51Q� 34,154,84,32,170,160,32,2,128 R1Q� 0,10,160,0,8,32,0,32,8 l1Q� 0,0,0,0,0,0,0,0,0,0 �1,Q� *** LEFT FRAME 1 �16Q� 0,0,0,0,2,128,0,10,128 �1@Q� 0,10,0,0,42,2,0,40,2 �1JQ� 0,168,10,2,170,10,9,170,138 2TQ� 37,153,168,170,153,168,170,106,170 (2^Q� 21,166,138,10,170,2,2,128,2 E2hQ� 10,160,0,8,32,0,8,32,0 _2rQ� 0,0,0,0,0,0,0,0,0,0 v2�Q� *** LEFT FRAME 2 �2�Q� 0,0,0,0,2,128,0,10,128 �2�Q� 0,10,0,0,42,8,0,40,8 �2�Q� 0,168,8,2,170,8,9,170,136 �2�Q� 37,153,168,170,153,168,170,106,168 3�Q� 21,166,136,10,170,8,2,128,8 63�Q� 10,160,0,8,32,0,32,8,0 P3�Q� 0,0,0,0,0,0,0,0,0,0 3�a� **************************************** �3�a� *** INIT VARIABLES AND DEFINE ARRAYS *** �3�a� **************************************** �3�aXP�100:YP�100:FP�3:FC�0 4�aCS�5 <4�a� XS(CS):� YS(CS):� FS(CS):� HS(CS):� VS(CS):� SS(CS) B4b�   