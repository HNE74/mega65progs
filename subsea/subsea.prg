 ' d � 25030:� DECLARE VARS AND ARRAYS I �� 18030:� SETUP SPRITE MEMORY a �� 19830:� READ DATA � � 18330:� INIT SPRITES FOR SHARK LEVEL � �� ***************** � �� *** MAIN LOOP *** � �� ***************** � �� 14000:� SHOW INTRO SCREEN !� 17030:� INIT SHARK LEVEL ,!� 9030:� PLACE WASTE I!� 5000:� START GAME LOOP O!~� g!�� ***************** !�� *** GAME LOOP *** �!�� ***************** �!�FC�FC�1 �!�� 6030 �!�� 7030 �!�� 8030 �!�� 5030 �!p� ********************* "z� *** HANDLE SHARKS *** #"�� ********************* 2"�� I�1 � CS z"�: � YS(I) ��1 � (XS(I)��5 � XS(I)��339) � YS(I)��1:� I,XS(I),YS(I) �"�: � YS(I) ��1 � � �"�:  � YS(I)��200 � VS(I)��(�(�(0)�2)�1):� � YS(I)��70 � VS(I)��(�(0)�2)�1 #�:  � YS(I) ��1 � � �(FC, SS(I))� 0 � � 7#�:   XS(I)�XS(I)�HS(I):YS(I)�YS(I)�VS(I) T#�:   � �(XS(I),4)�0 � � �#�:    � FS(I)�9 � FS(I)�10:� � FS(I)�10 � FS(I)�9 �#�:    � FS(I)�7 � FS(I)�8:� � FS(I)�8 � FS(I)�7 �#�:   � �#�:  � �#�: �:� � �#:  J��(�(1)�50) $:  � J�0 � NS�I:� 6330 $: � $$� #$.� =$�� ******************* W$�� *** SPAWN SHARK *** q$�� ******************* �$�YS(NS)��(�(1)�110)�90 �$�J��(�(1)�2) �$�� J�0 � � �$�: HS(NS)��(�(�(0)�2)�1):FS(NS)�9:XS(NS)�338 �$��:� � %�: HS(NS)��(�(0)�2)�1:FS(NS)�7:XS(NS)�6 %�� 1% VS(NS)�0:J��(�(1)�3) @%
� J�0 � � \%: VS(NS)��(�(�(0)�2)�1) p%�:� � J�1 � � �%(: VS(NS)��(�(0)�2)�1 �%2� �%<SS(NS)��(�(1)�3)�1 �%F� 9030:� �%X� ************************* �%b� *** CONTROL SUBMARINE *** &l� ************************* )&vN��(2):HP�0:VP�0 @&�� (N � 15)��0 � � V&�: HP�DR(N � 15,0) l&�: VP�DR(N � 15,1) s&�� �&�� HP��0 � VP��0 � � �&�: � HP��0 � � �&�:  FP�FP�1 �&�:  � HP�0 � FP�6 � FP�4:� � HP�0 � FP�3 � FP�1 �&�: �:� � '�:  FP�FP�1:� FP�4 � FP�1 !'�:  � FP�7 � FP�4 *'�: � B'�: XP�XP�HP:YP�YP�VP l': � YP�65 � YP�65:� � YP�230 � YP�230 �': � XP�24 � XP�24:� � XP�311 � XP�311 �'�:� � VP�0 � � �' : � �(FC,10)�0 � � YP�230 � YP�YP�1 �'*� �'4� �'@� ********************** (J� *** UPDATE SPRITES *** 8(T� ********************** A(^�T 0 \(h� $40000,FP:� 0,XP,YP k(r� I�1 � CS �(|: � YS(I)��1 � � �(�:  � $40000�2�I,FS(I) �(�:  � I,XS(I),YS(I) �(�: � �(�� �(�� �((#� ******************* �(2#� *** PLACE WASTE *** )<#� ******************* !)F#YW�222 ')P#� ?)Z#: XW��(�(1)�296)�24 O)d#: � I�0 � 3 �)n#:  � XW�20��RF(I)�8�24 � XW��RF(I)�8�8�3�24 � XW��1:I�3 �)x#: � �)�#� � XW���1 �)�#� 7,XW,YW �)�#� �)�6� ************************* �)�6� *** SHOW INTRO SCREEN *** *�6� ************************* *�6� #*�6� H*�>� ****************************** m*�>� *** DRAW SHARK LEVEL ARENA *** �*�>� ****************************** �*�>� �*�>� "                ���������" �*�>� "                 ������" �*�>� I�0 � 39 +�>: C@&(I,2)�14:T@&(I,2)�85 ++�>: C@&(I,3)�14:T@&(I,3)�73 O+�>: C@&(I,24)�7:T@&(I,24)�81:�230 U+�>� c+�>� I�0 � 3 ~+�>: RF(I)��(�(1)�7)�10�I �+?: � I�0 � � �+?:  � RF(I)�RF(I�1)��6 � 16120 �+?: � �+ ?: RH��(�(1)�10)�1 �+*?: � J�1 � RH ,4?:  C@&(RF(I),24�J)�7:T@&(RF(I),24�J)�81 =,>?:  C@&(RF(I)�1,24�J)�7:T@&(RF(I)�1,24�J)�81 m,H?:  C@&(RF(I)�2,24�J)�7:T@&(RF(I)�2,24�J)�81 w,R?: � J ,\?� I �,f?� �,hB� ****************************** �,rB� *** INITIALIZE SHARK LEVEL *** �,|B� ****************************** -�BXP�172:YP�65:� 16030 '-�B� I�1 � CS:YS(I)��1:� B-�B� $40000,FP:� 0,XP,YP H-�B� j-PF� *************************** �-ZF� *** SETUP SPRITE MEMORY *** �-dF� *************************** �-nF� 65381: � 40 COLUMN SCREEN �-xF�# 1,0:� RESERVE 8K IN BANK 4 ".�F�! 3,64�13,0,$40000:� SPREICHERBEREICH LEEREN U.�F� $D06C,0:� $D06D,0:� BIT 0-16 TO 0 FOR $40000 �.�F� $D06E,128�4:� SPRPTR16 (BIT7) AND BIT 2 TO 4 FOR $40000 �.�F� �.|G� *********************************** �.�G� *** INIT SPRITES FOR SHARK LEVEL *** /�G� *********************************** 5/�G� $40000,$1:� $40001,$10 K/�G� 0,1,12,1,0,0,1 Z/�G� I�1 � CS �/�G: � $40000�2�I,$7:� $40000�2�I�1,$10 �/�G: � I,1,3,1,0,0,1 �/�G� �/�G� $4000E,$B:� $4000F,$10 �/�G� 7,1,7,1,0,0,1 �/�G� �/XM� ***************** 0bM� *** READ DATA ***  0lM� ***************** .0vM� I�0 � 8 F0wM� DR(I,0):� DR(I,1) L0xM� \0M� I�0 � 702 q0�M� D:� $40040�I,D w0�M� }0�M� �0�M� *********************************** �0�M� *** PLAYER DIRECTION DEFINITION *** �0�M� *********************************** +1�M� 0,0,0,-1,1,-1,1,0,1,1,0,1,-1,1,-1,0,-1,-1 U1 N� *********************************** 1!N� *** SUBMARINE SPRITE DEFINITION *** �1"N� *********************************** �1%N� *** RIGHT FRAME 1 �1*N� 0,0,0,0,0,0,0,10,0 �14N� 0,11,0,0,43,0,0,43,0 2>N� 0,43,128,128,170,128,160,169,84 A2HN� 34,169,85,42,170,149,10,170,170 i2RN� 41,153,154,41,153,154,170,170,171 �2\N� 138,170,175,2,170,172,2,171,252 �2fN� 2,191,240,0,170,128,0,0,0,0 �2zN� *** RIGHT FRAME 2 �2�N� 0,0,0,0,0,0,0,10,0 �2�N� 0,11,0,0,43,0,0,43,0 !3�N� 0,43,128,0,170,128,128,169,84 H3�N� 162,169,85,42,170,149,10,170,170 q3�N� 41,153,154,169,153,154,138,170,171 �3�N� 10,170,175,2,170,172,2,171,252 �3�N� 2,191,240,0,170,128,0,0,0,0 �3�N� *** RIGHT FRAME 3 �3�N� 0,0,0,0,0,0,0,10,0 4�N� 0,11,0,0,43,0,0,43,0 &4�N� 0,43,128,0,170,128,0,169,84 L4�N� 2,169,85,170,170,149,10,170,170 s4O� 169,153,154,9,153,154,10,170,171 �4O� 10,170,175,2,170,172,2,171,252 �4O� 2,191,240,0,170,128,0,0,0,0 �4.O� *** LEFT FRAME 1 �48O� 0,0,0,0,0,0,0,160,0 	5BO� 0,224,0,0,232,0,0,232,0 )5LO� 2,232,0,2,170,2,21,106,10 Q5VO� 85,106,136,86,170,168,170,170,160 {5`O� 166,102,104,166,102,104,234,170,170 �5jO� 250,170,162,58,170,128,63,234,128 �5tO� 15,254,128,2,170,0,0,0,0,0 �5�O� *** LEFT FRAME 2 �5�O� 0,0,0,0,0,0,0,160,0 6�O� 0,224,0,0,232,0,0,232,0 26�O� 2,232,0,2,170,0,21,106,2 Z6�O� 85,106,138,86,170,168,170,170,160 �6�O� 166,102,104,166,102,106,234,170,162 �6�O� 250,170,160,58,170,128,63,234,128 �6�O� 15,254,128,2,170,0,0,0,0,0 �6�O� *** LEFT FRAME 3 �6�O� 0,0,0,0,0,0,0,160,0 7�O� 0,224,0,0,232,0,0,232,0 ;7 P� 2,232,0,2,170,0,21,106,0 c7
P� 85,106,128,86,170,170,170,170,160 �7P� 166,102,106,166,102,96,234,170,160 �7P� 250,170,160,58,170,128,63,234,128 �7(P� 15,254,128,2,170,0,0,0,0,0 �7xP� ******************************* !8yP� *** SHARK SPRITE DEFINITION *** G8zP� ******************************* _8}P� *** RIGHT FRAME 1 {8�P� 0,0,0,2,128,0,2,160,0 �8�P� 0,160,0,128,168,0,128,40,0 �8�P� 160,42,0,160,170,128,162,170,96 �8�P� 42,102,88,42,102,170,170,169,170 9�P� 162,154,84,128,170,160,128,2,128 -9�P� 0,10,160,0,8,32,0,8,32 G9�P� 0,0,0,0,0,0,0,0,0,0 _9�P� *** RIGHT FRAME 2 {9�P� 0,0,0,2,128,0,2,160,0 �9�P� 0,160,0,32,168,0,32,40,0 �9�P� 32,42,0,32,170,128,34,170,96 �9�P� 42,102,88,42,102,170,42,169,170 :Q� 34,154,84,32,170,160,32,2,128 $:Q� 0,10,160,0,8,32,0,32,8 >:Q� 0,0,0,0,0,0,0,0,0,0 U:,Q� *** LEFT FRAME 1 r:6Q� 0,0,0,0,2,128,0,10,128 �:@Q� 0,10,0,0,42,2,0,40,2 �:JQ� 0,168,10,2,170,10,9,170,138 �:TQ� 37,153,168,170,153,168,170,106,170 �:^Q� 21,166,138,10,170,2,2,128,2 ;hQ� 10,160,0,8,32,0,8,32,0 1;rQ� 0,0,0,0,0,0,0,0,0,0 H;�Q� *** LEFT FRAME 2 e;�Q� 0,0,0,0,2,128,0,10,128 �;�Q� 0,10,0,0,42,8,0,40,8 �;�Q� 0,168,8,2,170,8,9,170,136 �;�Q� 37,153,168,170,153,168,170,106,168 �;�Q� 21,166,136,10,170,8,2,128,8 <�Q� 10,160,0,8,32,0,32,8,0 "<�Q� 0,0,0,0,0,0,0,0,0,0 M<R� ************************************ x<R� *** NUKE WASTE SPRITE DEFINITION *** �<R� ************************************ �<&R� 0,0,0,0,0,0,0,0,0 �<0R� 0,0,0,0,0,0,0,0,0 �<:R� 0,0,0,0,0,0,0,0,0 	=DR� 0,0,0,0,170,0,2,150,128 ,=NR� 2,85,128,2,150,128,2,170,128 P=XR� 3,235,192,2,190,128,2,170,128 t=bR� 3,235,192,2,190,128,0,170,0,0 �=�a� **************************************** �=�a� *** INIT VARIABLES AND DEFINE ARRAYS *** >�a� **************************************** '>�aXP�100:YP�100:FP�3:FC�0:HP�0:VP�0 D>�aCS�6:XW�0:YW�0:SW�0:NW�0 ~>�a� XS(CS):� YS(CS):� FS(CS):� HS(CS):� VS(CS):� SS(CS) �>�a� DR(8,1):� RF(3) �>b�   