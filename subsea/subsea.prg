  d � 25030  �� 18030 % � 18330 1 � 10030 > �� SCNCLR K �� XP, YP f �� $40000,FP:� 0,XP,YP u �� I�1 � CS � �: � $40000�2�I,FS(I) � : � I,XS(I),YS(I) � � � �� A$ � � I�1 � CS:XS(I)�XS(I)�HS(I):� � $� 1010 � .� !'� ****************************** 3!'� *** INITIALIZE SHARK LEVEL *** X!$'� ****************************** i!.'XP�172:YP�70 x!8'� I�1 � CS �!B': YS(I)��(�(1)�120)�90:XS(I)��(�(I)�280)�30 �!L': VS(I)�0:J��(�(1)�2) �!V': � J�0 � � �!`':  HS(I)��1:FS(I)�9 �!j': �:� � "t':  HS(I)�1:FS(I)�7 "~': � "�'� %"�'� G"PF� *************************** i"ZF� *** SETUP SPRITE MEMORY *** �"dF� *************************** �"nF�# 1,0:� RESERVE 8K IN BANK 4 �"xF�! 3,64�13,0,$40000:� SPREICHERBEREICH LEEREN �"�F� 19830 #�F� $D06C,0:� $D06D,0:� BIT 0-16 TO 0 FOR $40000 \#�F� $D06E,128�4:� SPRPTR16 (BIT7) AND BIT 2 TO 4 FOR $40000 b#�F� �#|G� *********************************** �#�G� *** INIT SPRITES FOR DIVE LEVEL *** �#�G� *********************************** �#�G� $40000,$1:� $40001,$10 $�G� 0,1,12,1,0,0,1 $$�G� I�1 � CS�1 M$�G: � $40000�2�I,$7:� $40000�2�I�1,$10 d$�G: � I,1,3,1,0,0,1 j$�G� p$�G� �$XM� ************************ �$bM� *** READ SPRITE DATA *** �$lM� ************************ �$vM� I�0 � 635 �$�M� D:� $40040�I,D �$�M� �$�M� (% N� *********************************** R%!N� *** SUBMARINE SPRITE DEFINITION *** |%"N� *********************************** �%%N� *** RIGHT FRAME 1 �%*N� 0,0,0,0,0,0,0,10,0 �%4N� 0,11,0,0,43,0,0,43,0 �%>N� 0,43,128,128,170,128,160,169,84 &HN� 34,169,85,42,170,149,10,170,170 <&RN� 41,153,154,41,153,154,170,170,171 b&\N� 138,170,175,2,170,172,2,171,252 �&fN� 2,191,240,0,170,128,0,0,0,0 �&zN� *** RIGHT FRAME 2 �&�N� 0,0,0,0,0,0,0,10,0 �&�N� 0,11,0,0,43,0,0,43,0 �&�N� 0,43,128,0,170,128,128,169,84 '�N� 162,169,85,42,170,149,10,170,170 D'�N� 41,153,154,169,153,154,138,170,171 i'�N� 10,170,175,2,170,172,2,171,252 �'�N� 2,191,240,0,170,128,0,0,0,0 �'�N� *** RIGHT FRAME 3 �'�N� 0,0,0,0,0,0,0,10,0 �'�N� 0,11,0,0,43,0,0,43,0 �'�N� 0,43,128,0,170,128,0,169,84 (�N� 2,169,85,170,170,149,10,170,170 F(O� 169,153,154,9,153,154,10,170,171 k(O� 10,170,175,2,170,172,2,171,252 �(O� 2,191,240,0,170,128,0,0,0,0 �(.O� *** LEFT FRAME 1 �(8O� 0,0,0,0,0,0,0,160,0 �(BO� 0,224,0,0,232,0,0,232,0 �(LO� 2,232,0,2,170,2,21,106,10 $)VO� 85,106,136,86,170,168,170,170,160 N)`O� 166,102,104,166,102,104,234,170,170 v)jO� 250,170,162,58,170,128,63,234,128 �)tO� 15,254,128,2,170,0,0,0,0,0 �)�O� *** LEFT FRAME 2 �)�O� 0,0,0,0,0,0,0,160,0 �)�O� 0,224,0,0,232,0,0,232,0 *�O� 2,232,0,2,170,0,21,106,2 -*�O� 85,106,138,86,170,168,170,170,160 W*�O� 166,102,104,166,102,106,234,170,162 *�O� 250,170,160,58,170,128,63,234,128 �*�O� 15,254,128,2,170,0,0,0,0,0 �*�O� *** LEFT FRAME 3 �*�O� 0,0,0,0,0,0,0,160,0 �*�O� 0,224,0,0,232,0,0,232,0 + P� 2,232,0,2,170,0,21,106,0 6+
P� 85,106,128,86,170,170,170,170,160 _+P� 166,102,106,166,102,96,234,170,160 �+P� 250,170,160,58,170,128,63,234,128 �+(P� 15,254,128,2,170,0,0,0,0,0 �+xP� ******************************* �+yP� *** SHARK SPRITE DEFINITION *** ,zP� ******************************* 2,}P� *** RIGHT FRAME 1 N,�P� 0,0,0,2,128,0,2,160,0 o,�P� 0,160,0,128,168,0,128,40,0 �,�P� 160,42,0,160,170,128,162,170,96 �,�P� 42,102,88,42,102,170,170,169,170 �,�P� 162,154,84,128,170,160,128,2,128  -�P� 0,10,160,0,8,32,0,8,32 -�P� 0,0,0,0,0,0,0,0,0,0 2-�P� *** RIGHT FRAME 2 N-�P� 0,0,0,2,128,0,2,160,0 m-�P� 0,160,0,32,168,0,32,40,0 �-�P� 32,42,0,32,170,128,34,170,96 �-�P� 42,102,88,42,102,170,42,169,170 �-Q� 34,154,84,32,170,160,32,2,128 �-Q� 0,10,160,0,8,32,0,32,8 .Q� 0,0,0,0,0,0,0,0,0,0 (.,Q� *** LEFT FRAME 1 E.6Q� 0,0,0,0,2,128,0,10,128 `.@Q� 0,10,0,0,42,2,0,40,2 �.JQ� 0,168,10,2,170,10,9,170,138 �.TQ� 37,153,168,170,153,168,170,106,170 �.^Q� 21,166,138,10,170,2,2,128,2 �.hQ� 10,160,0,8,32,0,8,32,0 /rQ� 0,0,0,0,0,0,0,0,0,0 /�Q� *** LEFT FRAME 2 8/�Q� 0,0,0,0,2,128,0,10,128 S/�Q� 0,10,0,0,42,8,0,40,8 s/�Q� 0,168,8,2,170,8,9,170,136 �/�Q� 37,153,168,170,153,168,170,106,168 �/�Q� 21,166,136,10,170,8,2,128,8 �/�Q� 10,160,0,8,32,0,32,8,0 �/�Q� 0,0,0,0,0,0,0,0,0,0 $0�a� **************************************** S0�a� *** INIT VARIABLES AND DEFINE ARRAYS *** �0�a� **************************************** �0�aXP�100:YP�100:FP�3 �0�aCS�4 �0�a� XS(CS):� YS(CS):� FS(CS):� HS(CS):� VS(CS) �0b�   