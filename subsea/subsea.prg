  d � 25030  �� 18030 % � 18330 = �� ***************** U �� *** MAIN LOOP *** m �� ***************** y � 17030 � � 5000 � ~� � �� ***************** � �� *** GAME LOOP *** � �� ***************** � �� $40000,FP:� 0,XP,YP � �� 6030 !��� A$ !�� 5030 )!p� ********************* E!z� *** HANDLE SHARKS *** a!�� ********************* p!�� I�1 � CS �!�: � YS(I) ��1 � (XS(I)��5 � XS(I)��339) � YS(I)��1:� I,XS(I),YS(I) �!�: � YS(I) ��1 � � �!�:  XS(I)�XS(I)�HS(I):YS(I)�YS(I)�VS(I) "�:  � �(XS(I),4)�0 � � J"�:   � FS(I)�9 � FS(I)�10:� � FS(I)�10 � FS(I)�9 |"�:   � FS(I)�7 � FS(I)�8:� � FS(I)�8 � FS(I)�7 �"�:  � �"�:  � $40000�2�I,FS(I) �"�:  � I,XS(I),YS(I) �"�: �:� � �"�:  J��(�(1)�50) �":  � J�0 � NS�I:� 6330 �": � #� 
#$� $#�� ******************* >#�� *** SPAWN SHARK *** X#�� ******************* r#�YS(NS)��(�(1)�120)�90 �# J��(�(1)�2) �#
� J�0 � � �#: HS(NS)��1:FS(NS)�9:XS(NS)�338 �#�:� � �#(: HS(NS)�1:FS(NS)�7:XS(NS)�6 �#2� $<VS(NS)�0:J��(�(1)�3) $F� J�0 � � !$P: VS(NS)��1 5$Z�:� � J�1 � � D$d: VS(NS)�1 K$n� Q$x� v$hB� ****************************** �$rB� *** INITIALIZE SHARK LEVEL *** �$|B� ****************************** �$�BXP�172:YP�70:� �$�B� I�1 � CS:YS(I)��1:� �$�B� %PF� *************************** 7%ZF� *** SETUP SPRITE MEMORY *** Y%dF� *************************** {%nF�# 1,0:� RESERVE 8K IN BANK 4 �%xF�! 3,64�13,0,$40000:� SPREICHERBEREICH LEEREN �%�F� 19830 �%�F� $D06C,0:� $D06D,0:� BIT 0-16 TO 0 FOR $40000 *&�F� $D06E,128�4:� SPRPTR16 (BIT7) AND BIT 2 TO 4 FOR $40000 0&�F� Z&|G� *********************************** �&�G� *** INIT SPRITES FOR DIVE LEVEL *** �&�G� *********************************** �&�G� $40000,$1:� $40001,$10 �&�G� 0,1,12,1,0,0,1 �&�G� I�1 � CS�1 '�G: � $40000�2�I,$7:� $40000�2�I�1,$10 2'�G: � I,1,3,1,0,0,1 8'�G� >'�G� ]'XM� ************************ |'bM� *** READ SPRITE DATA *** �'lM� ************************ �'vM� I�0 � 635 �'�M� D:� $40040�I,D �'�M� �'�M� �' N� ***********************************  (!N� *** SUBMARINE SPRITE DEFINITION *** J("N� *********************************** b(%N� *** RIGHT FRAME 1 {(*N� 0,0,0,0,0,0,0,10,0 �(4N� 0,11,0,0,43,0,0,43,0 �(>N� 0,43,128,128,170,128,160,169,84 �(HN� 34,169,85,42,170,149,10,170,170 
)RN� 41,153,154,41,153,154,170,170,171 0)\N� 138,170,175,2,170,172,2,171,252 R)fN� 2,191,240,0,170,128,0,0,0,0 j)zN� *** RIGHT FRAME 2 �)�N� 0,0,0,0,0,0,0,10,0 �)�N� 0,11,0,0,43,0,0,43,0 �)�N� 0,43,128,0,170,128,128,169,84 �)�N� 162,169,85,42,170,149,10,170,170 *�N� 41,153,154,169,153,154,138,170,171 7*�N� 10,170,175,2,170,172,2,171,252 Y*�N� 2,191,240,0,170,128,0,0,0,0 q*�N� *** RIGHT FRAME 3 �*�N� 0,0,0,0,0,0,0,10,0 �*�N� 0,11,0,0,43,0,0,43,0 �*�N� 0,43,128,0,170,128,0,169,84 �*�N� 2,169,85,170,170,149,10,170,170 +O� 169,153,154,9,153,154,10,170,171 9+O� 10,170,175,2,170,172,2,171,252 [+O� 2,191,240,0,170,128,0,0,0,0 r+.O� *** LEFT FRAME 1 �+8O� 0,0,0,0,0,0,0,160,0 �+BO� 0,224,0,0,232,0,0,232,0 �+LO� 2,232,0,2,170,2,21,106,10 �+VO� 85,106,136,86,170,168,170,170,160 ,`O� 166,102,104,166,102,104,234,170,170 D,jO� 250,170,162,58,170,128,63,234,128 e,tO� 15,254,128,2,170,0,0,0,0,0 |,�O� *** LEFT FRAME 2 �,�O� 0,0,0,0,0,0,0,160,0 �,�O� 0,224,0,0,232,0,0,232,0 �,�O� 2,232,0,2,170,0,21,106,2 �,�O� 85,106,138,86,170,168,170,170,160 %-�O� 166,102,104,166,102,106,234,170,162 M-�O� 250,170,160,58,170,128,63,234,128 n-�O� 15,254,128,2,170,0,0,0,0,0 �-�O� *** LEFT FRAME 3 �-�O� 0,0,0,0,0,0,0,160,0 �-�O� 0,224,0,0,232,0,0,232,0 �- P� 2,232,0,2,170,0,21,106,0 .
P� 85,106,128,86,170,170,170,170,160 -.P� 166,102,106,166,102,96,234,170,160 U.P� 250,170,160,58,170,128,63,234,128 v.(P� 15,254,128,2,170,0,0,0,0,0 �.xP� ******************************* �.yP� *** SHARK SPRITE DEFINITION *** �.zP� *******************************  /}P� *** RIGHT FRAME 1 /�P� 0,0,0,2,128,0,2,160,0 =/�P� 0,160,0,128,168,0,128,40,0 c/�P� 160,42,0,160,170,128,162,170,96 �/�P� 42,102,88,42,102,170,170,169,170 �/�P� 162,154,84,128,170,160,128,2,128 �/�P� 0,10,160,0,8,32,0,8,32 �/�P� 0,0,0,0,0,0,0,0,0,0  0�P� *** RIGHT FRAME 2 0�P� 0,0,0,2,128,0,2,160,0 ;0�P� 0,160,0,32,168,0,32,40,0 ^0�P� 32,42,0,32,170,128,34,170,96 �0�P� 42,102,88,42,102,170,42,169,170 �0Q� 34,154,84,32,170,160,32,2,128 �0Q� 0,10,160,0,8,32,0,32,8 �0Q� 0,0,0,0,0,0,0,0,0,0 �0,Q� *** LEFT FRAME 1 16Q� 0,0,0,0,2,128,0,10,128 .1@Q� 0,10,0,0,42,2,0,40,2 P1JQ� 0,168,10,2,170,10,9,170,138 y1TQ� 37,153,168,170,153,168,170,106,170 �1^Q� 21,166,138,10,170,2,2,128,2 �1hQ� 10,160,0,8,32,0,8,32,0 �1rQ� 0,0,0,0,0,0,0,0,0,0 �1�Q� *** LEFT FRAME 2 2�Q� 0,0,0,0,2,128,0,10,128 !2�Q� 0,10,0,0,42,8,0,40,8 A2�Q� 0,168,8,2,170,8,9,170,136 j2�Q� 37,153,168,170,153,168,170,106,168 �2�Q� 21,166,136,10,170,8,2,128,8 �2�Q� 10,160,0,8,32,0,32,8,0 �2�Q� 0,0,0,0,0,0,0,0,0,0 �2�a� **************************************** !3�a� *** INIT VARIABLES AND DEFINE ARRAYS *** P3�a� **************************************** g3�aXP�100:YP�100:FP�3 p3�aCS�5 �3�a� XS(CS):� YS(CS):� FS(CS):� HS(CS):� VS(CS) �3b�   