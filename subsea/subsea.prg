 ' d � 25030:� DECLARE VARS AND ARRAYS I �� 18030:� SETUP SPRITE MEMORY a �� 19830:� READ DATA � � 18330:� INIT SPRITES FOR SHARK LEVEL � �� ***************** � �� *** MAIN LOOP *** � �� ***************** � �� 14000:� SHOW INTRO SCREEN !� 17030:� INIT SHARK LEVEL 1!� 2030:� START LEVEL LOOP J!�� ****************** c!�� *** LEVEL LOOP *** |!�� ****************** �!�� 9030:� PLACE WASTE �!�� 5030:� START GAME LOOP �!~� �!�� ***************** �!�� *** GAME LOOP ***  "�� ***************** "�FC�FC�1 "�� 6030 ""�� 7030 -"�� 8030 8"�� 9230 C"�� 5030 _"p� ********************* {"z� *** HANDLE SHARKS *** �"�� ********************* �"�� I�1 � CS �"�: � YS(I) ��1 � (XS(I)��5 � XS(I)��339) � YS(I)��1:� I,XS(I),YS(I) #�: � YS(I) ��1 � � R#�:  � YS(I)��200 � VS(I)��(�(�(0)�2)�1):� � YS(I)��70 � VS(I)��(�(0)�2)�1 #�:  � YS(I) ��1 � � �(FC, SS(I))� 0 � � �#�:   XS(I)�XS(I)�HS(I):YS(I)�YS(I)�VS(I) �#�:   � �(XS(I),4)�0 � � �#�:    � FS(I)�9 � FS(I)�10:� � FS(I)�10 � FS(I)�9 0$�:    � FS(I)�7 � FS(I)�8:� � FS(I)�8 � FS(I)�7 ;$�:   � E$�:  � S$�: �:� � g$:  J��(�(1)�50) �$:  � J�0 � NS�I:� 6330 �$: � �$$� �$.� �$�� ******************* �$�� *** SPAWN SHARK *** �$�� ******************* �$�YS(NS)��(�(1)�110)�90 %�J��(�(1)�2) %�� J�0 � � N%�: HS(NS)��(�(�(0)�2)�1):FS(NS)�9:XS(NS)�338 Z%��:� � �%�: HS(NS)��(�(0)�2)�1:FS(NS)�7:XS(NS)�6 �%�� �% VS(NS)�0:J��(�(1)�3) �%
� J�0 � � �%: VS(NS)��(�(�(0)�2)�1) �%�:� � J�1 � � �%(: VS(NS)��(�(0)�2)�1 &2� &<SS(NS)��(�(1)�3)�1 !&F� A&X� ************************* a&b� *** CONTROL SUBMARINE *** �&l� ************************* �&vN��(2):HP�0:VP�0 �&�� (N � 15)��0 � � �&�: HP�DR(N � 15,0) �&�: VP�DR(N � 15,1) �&�� �&�� HP��0 � VP��0 � � '�: � HP��0 � � '�:  FP�FP�1 N'�:  � HP�0 � FP�6 � FP�4:� � HP�0 � FP�3 � FP�1 \'�: �:� � y'�:  FP�FP�1:� FP�4 � FP�1 �'�:  � FP�7 � FP�4 �'�: � �'�: XP�XP�HP:YP�YP�VP �': � YP�65 � YP�65:� � YP�230 � YP�230 (: � XP�24 � XP�24:� � XP�311 � XP�311 (�:� � VP�0 � � A( : � �(FC,10)�0 � � YP�230 � YP�YP�1 H(*� N(4� k(@� ********************** �(J� *** UPDATE SPRITES *** �(T� ********************** �(^�T 0 �(h� $40000,FP:� 0,XP,YP �(r� I�1 � CS �(|: � YS(I)��1 � � )�:  � $40000�2�I,FS(I)  )�:  � I,XS(I),YS(I) ))�: � /)�� 5)�� O)(#� ******************* i)2#� *** PLACE WASTE *** �)<#� ******************* �)F#YW�222 �)P#� �)Z#: XW��(�(1)�296)�24 �)d#: � I�0 � 3 �)n#:  � XW�20��RF(I)�8�24 � XW��RF(I)�8�8�3�24 � XW��1:I�3  *x#: � *�#� � XW���1 *�#� 7,XW,YW $*�#� A*�#� ********************** ^*�#� *** WASTE HANDLING *** {*$� ********************** �*$� SW�0 � � �*$:  � �(1)�129 � � �*"$:   � 7,0 �*,$:   SW�1 �*6$: � �*@$�:� � �*J$: � YP�65 � XP�180 � XP�200 � � +^$:  � 9030 +h$:  � 7,1 !+m$:  SW�0 *+r$: � 1+|$� 7+�$� W+�6� ************************* w+�6� *** SHOW INTRO SCREEN *** �+�6� ************************* �+�6� �+�6� �+�>� ****************************** �+�>� *** DRAW SHARK LEVEL ARENA *** ,�>� ****************************** ,�>� >,�>� "                ���������" `,�>� "                 ������" o,�>� I�0 � 39 �,�>: C@&(I,2)�14:T@&(I,2)�85 �,�>: C@&(I,3)�14:T@&(I,3)�73 �,�>: C@&(I,24)�7:T@&(I,24)�81:�230 �,�>� �,�>� I�0 � 3 �,�>: RF(I)��(�(1)�7)�10�I -?: � I�0 � � 1-?:  � RF(I)�RF(I�1)��6 � 16120 :-?: � P- ?: RH��(�(1)�10)�1 a-*?: � J�1 � RH �-4?:  C@&(RF(I),24�J)�7:T@&(RF(I),24�J)�81 �->?:  C@&(RF(I)�1,24�J)�7:T@&(RF(I)�1,24�J)�81 �-H?:  C@&(RF(I)�2,24�J)�7:T@&(RF(I)�2,24�J)�81 �-R?: � J �-\?� I .f?� *.hB� ****************************** O.rB� *** INITIALIZE SHARK LEVEL *** t.|B� ****************************** �.�BXP�172:YP�65:� 16030 �.�B� I�1 � CS:YS(I)��1:� �.�B� $40000,FP:� 0,XP,YP �.�B� �.PF� *************************** /ZF� *** SETUP SPRITE MEMORY *** ./dF� *************************** N/nF� 65381: � 40 COLUMN SCREEN p/xF�# 1,0:� RESERVE 8K IN BANK 4 �/�F�! 3,64�13,0,$40000:� SPREICHERBEREICH LEEREN �/�F� $D06C,0:� $D06D,0:� BIT 0-16 TO 0 FOR $40000 0�F� $D06E,128�4:� SPRPTR16 (BIT7) AND BIT 2 TO 4 FOR $40000 0�F� C0|G� *********************************** n0�G� *** INIT SPRITES FOR SHARK LEVEL *** �0�G� *********************************** �0�G� $40000,$1:� $40001,$10 �0�G� 0,1,12,1,0,0,1 �0�G� I�1 � CS 1�G: � $40000�2�I,$7:� $40000�2�I�1,$10 1�G: � I,1,3,1,0,0,1  1�G� =1�G� $4000E,$B:� $4000F,$10 R1�G� 7,1,7,1,0,0,1 X1�G� p1XM� ***************** �1bM� *** READ DATA *** �1lM� ***************** �1vM� I�0 � 8 �1wM� DR(I,0):� DR(I,1) �1xM� �1M� I�0 � 702 �1�M� D:� $40040�I,D �1�M� �1�M� '2�M� *********************************** Q2�M� *** PLAYER DIRECTION DEFINITION *** {2�M� *********************************** �2�M� 0,0,0,-1,1,-1,1,0,1,1,0,1,-1,1,-1,0,-1,-1 �2 N� *********************************** �2!N� *** SUBMARINE SPRITE DEFINITION *** )3"N� *********************************** A3%N� *** RIGHT FRAME 1 Z3*N� 0,0,0,0,0,0,0,10,0 u34N� 0,11,0,0,43,0,0,43,0 �3>N� 0,43,128,128,170,128,160,169,84 �3HN� 34,169,85,42,170,149,10,170,170 �3RN� 41,153,154,41,153,154,170,170,171 4\N� 138,170,175,2,170,172,2,171,252 14fN� 2,191,240,0,170,128,0,0,0,0 I4zN� *** RIGHT FRAME 2 b4�N� 0,0,0,0,0,0,0,10,0 }4�N� 0,11,0,0,43,0,0,43,0 �4�N� 0,43,128,0,170,128,128,169,84 �4�N� 162,169,85,42,170,149,10,170,170 �4�N� 41,153,154,169,153,154,138,170,171 5�N� 10,170,175,2,170,172,2,171,252 85�N� 2,191,240,0,170,128,0,0,0,0 P5�N� *** RIGHT FRAME 3 i5�N� 0,0,0,0,0,0,0,10,0 �5�N� 0,11,0,0,43,0,0,43,0 �5�N� 0,43,128,0,170,128,0,169,84 �5�N� 2,169,85,170,170,149,10,170,170 �5O� 169,153,154,9,153,154,10,170,171 6O� 10,170,175,2,170,172,2,171,252 :6O� 2,191,240,0,170,128,0,0,0,0 Q6.O� *** LEFT FRAME 1 k68O� 0,0,0,0,0,0,0,160,0 �6BO� 0,224,0,0,232,0,0,232,0 �6LO� 2,232,0,2,170,2,21,106,10 �6VO� 85,106,136,86,170,168,170,170,160 �6`O� 166,102,104,166,102,104,234,170,170 #7jO� 250,170,162,58,170,128,63,234,128 D7tO� 15,254,128,2,170,0,0,0,0,0 [7�O� *** LEFT FRAME 2 u7�O� 0,0,0,0,0,0,0,160,0 �7�O� 0,224,0,0,232,0,0,232,0 �7�O� 2,232,0,2,170,0,21,106,2 �7�O� 85,106,138,86,170,168,170,170,160 8�O� 166,102,104,166,102,106,234,170,162 ,8�O� 250,170,160,58,170,128,63,234,128 M8�O� 15,254,128,2,170,0,0,0,0,0 d8�O� *** LEFT FRAME 3 ~8�O� 0,0,0,0,0,0,0,160,0 �8�O� 0,224,0,0,232,0,0,232,0 �8 P� 2,232,0,2,170,0,21,106,0 �8
P� 85,106,128,86,170,170,170,170,160 9P� 166,102,106,166,102,96,234,170,160 49P� 250,170,160,58,170,128,63,234,128 U9(P� 15,254,128,2,170,0,0,0,0,0 {9xP� ******************************* �9yP� *** SHARK SPRITE DEFINITION *** �9zP� ******************************* �9}P� *** RIGHT FRAME 1 �9�P� 0,0,0,2,128,0,2,160,0 :�P� 0,160,0,128,168,0,128,40,0 B:�P� 160,42,0,160,170,128,162,170,96 i:�P� 42,102,88,42,102,170,170,169,170 �:�P� 162,154,84,128,170,160,128,2,128 �:�P� 0,10,160,0,8,32,0,8,32 �:�P� 0,0,0,0,0,0,0,0,0,0 �:�P� *** RIGHT FRAME 2 �:�P� 0,0,0,2,128,0,2,160,0 ;�P� 0,160,0,32,168,0,32,40,0 =;�P� 32,42,0,32,170,128,34,170,96 c;�P� 42,102,88,42,102,170,42,169,170 �;Q� 34,154,84,32,170,160,32,2,128 �;Q� 0,10,160,0,8,32,0,32,8 �;Q� 0,0,0,0,0,0,0,0,0,0 �;,Q� *** LEFT FRAME 1 �;6Q� 0,0,0,0,2,128,0,10,128 <@Q� 0,10,0,0,42,2,0,40,2 /<JQ� 0,168,10,2,170,10,9,170,138 X<TQ� 37,153,168,170,153,168,170,106,170 z<^Q� 21,166,138,10,170,2,2,128,2 �<hQ� 10,160,0,8,32,0,8,32,0 �<rQ� 0,0,0,0,0,0,0,0,0,0 �<�Q� *** LEFT FRAME 2 �<�Q� 0,0,0,0,2,128,0,10,128  =�Q� 0,10,0,0,42,8,0,40,8  =�Q� 0,168,8,2,170,8,9,170,136 I=�Q� 37,153,168,170,153,168,170,106,168 k=�Q� 21,166,136,10,170,8,2,128,8 �=�Q� 10,160,0,8,32,0,32,8,0 �=�Q� 0,0,0,0,0,0,0,0,0,0 �=R� ************************************ �=R� *** NUKE WASTE SPRITE DEFINITION *** #>R� ************************************ ;>&R� 0,0,0,0,0,0,0,0,0 S>0R� 0,0,0,0,0,0,0,0,0 k>:R� 0,0,0,0,0,0,0,0,0 �>DR� 0,0,0,0,170,0,2,150,128 �>NR� 2,85,128,2,150,128,2,170,128 �>XR� 3,235,192,2,190,128,2,170,128 �>bR� 3,235,192,2,190,128,0,170,0,0 #?�a� **************************************** R?�a� *** INIT VARIABLES AND DEFINE ARRAYS *** �?�a� **************************************** �?�aXP�100:YP�100:FP�3:FC�0:HP�0:VP�0 �?�aCS�6:XW�0:YW�0:SW�0:NW�0 �?�a� XS(CS):� YS(CS):� FS(CS):� HS(CS):� VS(CS):� SS(CS) @�a� DR(8,1):� RF(3) @b�   