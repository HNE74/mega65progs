 ' d � 25030:� DECLARE VARS AND ARRAYS I �� 18030:� SETUP SPRITE MEMORY a �� 19830:� READ DATA � � 18330:� INIT SPRITES FOR SHARK LEVEL � �� ***************** � �� *** MAIN LOOP *** � �� ***************** � � 14030:� SHOW INTRO SCREEN !� 4030:� INIT GAME !� 8!$: � 16030:� DRAW SHARK LEVEL ARENA X!.: � 2030:� START LEVEL LOOP e!8� � SP�0 p!B� 1030 �!�� ****************** �!�� *** LEVEL LOOP *** �!�� ****************** �!�� �!�: � 17030:� INIT SHARK LEVEL �!: � 9030:� PLACE WASTE ": � 5030:� START GAME LOOP 0"� � SP�0 � GS�2 S" : � GS�3 � � 12530:� GAME OVER Y"*� q"�� ***************** �"�� *** INIT GAME *** �"�� ***************** �"�SP�3:SC�0:LV�1:NW�0:CS�1 �"�� I�1 � 6 �"�: YS(I)��1 �"�: � I,XS(I),YS(I) �"�� �"�� #�� ***************** .#�� *** GAME LOOP *** F#�� ***************** L#�� Z#�: FC�FC�1 w#�: � 6030:� HANDLE SHARKS �#�: � 7030:� CONTROL SUBMARINE �#�: � 8030:� UPDATE SPRITES �#�: � 5330:� DRAW GAME STATE �#�: � 10030:� PLAYER COLLISION CHECK $�: � 9230:� WASTE HANDLING '$�� � GS�0 <$�� GS�2 � � 12030 B$ � `$�� *********************** ~$�� *** DRAW GAME STATE *** �$�� *********************** �$��T 100:�A 7,0:� 5:� �(LV) �$��A 7,1:� 3:� �(SC) �$��A 35,0:� 7:� �(SP) %��A 35,1:� 13:� "    ":�A 35,1:� �(OX) *%�� �(FC,40)�0 � � s%: � �(2048�40�2)�193 � �! 3,40,194,2048�40�2:� �! 3,40,193,2048�40�2 z%� �%� �%p� ********************* �%z� *** HANDLE SHARKS *** �%�� ********************* �%�� I�1 � CS +&�: � YS(I) ��1 � (XS(I)��5 � XS(I)��339) � YS(I)��1:� I,XS(I),YS(I) B&�: � YS(I) ��1 � � �&�:  � YS(I)��200 � VS(I)��(�(�(0)�2)�1):� � YS(I)��70 � VS(I)��(�(0)�2)�1 �&�:  � YS(I) ��1 � � �(FC, SS(I))� 0 � � �&�:   XS(I)�XS(I)�HS(I):YS(I)�YS(I)�VS(I) '�:   � �(XS(I),4)�0 � � :'�:    � FS(I)�9 � FS(I)�10:� � FS(I)�10 � FS(I)�9 m'�:    � FS(I)�7 � FS(I)�8:� � FS(I)�8 � FS(I)�7 x'�:   � �'�:  � �'�: �:� � �':  J��(�(1)�50) �':  � J�0 � NS�I:� 6330 �': � �'$� �'.� �'�� ******************* (�� *** SPAWN SHARK *** "(�� ******************* <(�YS(NS)��(�(1)�110)�90 L(�J��(�(1)�2) [(�� J�0 � � �(�: HS(NS)��(�(�(0)�2)�1):FS(NS)�9:XS(NS)�338 �(��:� � �(�: HS(NS)��(�(0)�2)�1:FS(NS)�7:XS(NS)�6 �(�� �( VS(NS)�0:J��(�(1)�3) �(
� J�0 � � ): VS(NS)��(�(�(0)�2)�1) !)�:� � J�1 � � :)(: VS(NS)��(�(0)�2)�1 A)2� X)<SS(NS)��(�(1)�3)�1 ^)F� ~)X� ************************* �)b� *** CONTROL SUBMARINE *** �)l� ************************* �)vN��(2):HP�0:VP�0 �)�� (N � 15)��0 � �  *�: HP�DR(N � 15,0) *�: VP�DR(N � 15,1) *�� 6*�� HP��0 � VP��0 � � j*�: � �(FC,10)�0 � � 1, 2000, 5, 1, 1000, 400, 1 }*�: � HP��0 � � �*�:  � �(FC,3)�0 � � �*�:   FP�FP�1 �*�:   � HP�0 � FP�6 � FP�4:� � HP�0 � FP�3 � FP�1 �*�:  � �*�: �:� � +�:  � �(FC,3)�0 � � )+�:   FP�FP�1:� FP�4 � FP�1 ?+�:   � FP�7 � FP�4 I+�:  � R+�: � j+�: XP�XP�HP:YP�YP�VP �+: � YP�65 � YP�65:� � YP�230 � YP�230 �+: � YP�65 � SW�0 � OX�999 �+: � XP�24 � XP�24:� � XP�311 � XP�311 �+ �:� � VP�0 � � #,*: � �(FC,(10�(SW�1)))�0 � � YP�230 � YP�YP�1 *,4� 0,>� M,@� ********************** j,J� *** UPDATE SPRITES *** �,T� ********************** �,^� $40000,FP:� 0,XP,YP �,r� I�1 � CS �,|: � YS(I)��1 � � �,�:  � $40000�2�I,FS(I) �,�:  � I,XS(I),YS(I) -�: � -�� -�C1��(1):C2��(2) $-�� >-(#� ******************* X-2#� *** PLACE WASTE *** r-<#� ******************* }-F#YW�222 �-P#� �-Z#: XW��(�(1)�296)�24 �-d#: � I�0 � 3 �-n#:  � XW�20��RF(I)�8�24 � XW��RF(I)�8�8�3�24 � XW��1:I�3 �-x#: � .}#: � XW��24 � XW��290 � XW��1 .�#� � XW���1 7.�#� 7,XW,YW:� 7,1,5 =.�#� Z.�#� ********************** w.�#� *** WASTE HANDLING *** �.$� ********************** �.$� SW�0 � � �.$: � (C1 � 129)�129 � � �.$:   � 2, 8000, 8, 0, 4000, 100, 2 �."$:   � 7,0:� 0,1,5 /,$:   SW�1 /6$: �  /@$�:� � E/J$: � YP�65 � XP�160 � XP�200 � � j/O$:  � 2, 8000, 8, 1, 4000, 100, 2 x/T$:  � 9030 �/^$:  SW�0:SC�SC�OX:� 0,1,7 �/h$:  NW�NW�1:� NW�5 � GS�2 �/i$:  � I�1 � NW:�A 17�I,0 �/j$:   � "��" �/k$:  � �/r$: � �/|$� �/�$� "0'� ****************************** G0'� *** PLAYER COLLISION CHECK *** l0$'� ****************************** �0.'� (C1 � 1)�1 � � �08': � (C1 � 127)�127 � � �0B':  � 11030 �0L': � �0V'� �0`'� (C2 � 1)�1 � YP�100 � � �0j': � 11030 1t': � SW�1 � SW�0:� 9030 1~'� *1�'OX�OX�1:� OX��0 � � 11030 01�'� O1�*� ************************ n1+� *** PLAYER EXPLOSION *** �1+� ************************ �1+� 1,350,80,1,,4,3 �1+� $40000,$C:� $40001,$10 �1 +� I�1 � 30:� 0,1,I:�T 0:� �1*+� $40000,$D:� $40001,$10 24+� I�1 � 30:� 0,1,I:�T 0:� 82>+� $40000,$E:� $40001,$10 W2H+� I�1 � 30:� 0,1,I:�T 0:� t2\+� 0,0:� I�1 � 30:�T 0:� �2f+SP�SP�1:� SP�0 � GS�3:� GS�1 �2p+� �2�.� *********************** �2�.� ***  LEVEL COMPLETE *** �2�.� *********************** 3�.� 5330:� I�0 � 7:� I,0:� G3/�A 3,5 :� "���������������������������������" z3/�A 3,6 :� "}                               }" �3/�A 3,7 :� "}  YOU HAVE CLEARED THE LEVEL,  }" �3&/�A 3,8 :� "}                               }" 40/�A 3,9 :� "}            WELL DONE!         }" F4:/�A 3,10:� "}                               }" y4D/�A 3,11:� "} PRESS FIRE BUTTON TO PROCEED. }" �4N/�A 3,12:� "}                               }" �4X/�A 3,13:� "���������������������������������" �4b/N � �(2) 5l/� N��128 � � 12130 5v/� I�1 � 10:�T 0:� 5�/� 75�0� ***************** O5�0� *** GAME OVER *** g5�0� ***************** �5�0� 5330:� I�0 � 7:� I,0:� �5�0�A 3,5 :� "����������������������������������" �51�A 3,6 :� "}                               }" 61�A 3,7 :� "} YOU HAVE LOST ALL YOUR SUBS,  }" R61�A 3,8 :� "}                               }" �6$1�A 3,9 :� "}           GAME OVER!          }" �6.1�A 3,10:� "}                               }" �681� SH�SC � � 7B1SH�SC:�A 3,11:� "}        A NEW HIGHSCORE!       }" 7L1�:� � A7V1�A 3,11:� "}   SORRY, NO NEW HIGHSCORE.    }" H7`1� {7j1�A 3,12:� "}                               }" �7t1�A 3,13:� "���������������������������������" �7~1N � �(2) �7�1� N��128 � � 12670 �7�1� I�1 � 10:�T 0:� �7�1� 8�6� ************************* .8�6� *** SHOW INTRO SCREEN *** N8�6� ************************* _8�6�; 6:�< 14:� �8�6� "                                        "; �8�6� "  ������������   �����������             "; �8�6� "  �      �� �   � �� ���� �             "; (9�6� "  � ������� �   � �� �  � �             "; Z9 7� "  � �     � �   � �� �  ���             "; �9
7� "  �� ������� �   � �� �������            "; �97� "  �      �� �   � �� �������            "; �97� "  ������ �� �   � �� �    ��            "; #:(7� "  ������ �� ����� �� �������            "; U:27� "  ��������������������������            "; �:<7� "     ������������������������������"; �:F7� "           CREATED BY NOLTISOFT IN 2024 �      "; �:P7� "    �������������������������������     "; ";Z7� "            ���������������������������  "; T;d7� "            �      ��       ��       �  "; �;n7� "            � ������� �������� ����� �  "; �;x7� "            � �     � �      � �   � �  "; �;�7� "            � ������� �������� ����� �  "; <�7� "            �      ��       ��       �  "; N<�7� "            ������ �� �������� ����� �  "; �<�7� "            ������ �� �������� �   � �  "; �<�7� "            ��������������������   ���  "; �<�7� "    ���������������������������������"; =�7� "        � PRESS FIRE BUTTON TO CONTINUE! �"; J=�7� "        ����������������������������������" Z=�7� SH�0 � � x=�7: �A 28,3:� "�HIGHSCORE:" �=�7: �A 28,5:� "�";SH �=�7� �=�7J��(�(1)�5)�1 >�7� 15:� 18:� "O"��(J)�"T2AAAAAA$CDFAGGGGGGG$CEGAAAAAABCO"��(J�1)�"DO"��(J)�"CAGE.D.D" >�7N � �(2) >�7FC�FC�1 6>�7� �(FC,18000)�0 � � J>�7: J��(�(1)�5)�1 �>�7: � "O"��(J)�"T2AAAAAA$CDFAGGGGGGG$CEGAAAAAABCO"��(J�1)�"DO"��(J)�"CAGE.D.D" �>8� �>8� N��128 � � 14330 �>8�:� �>�:� ***************** �>�:� *** PLAY SONG *** ?�:� ***************** 0?�>� ****************************** U?�>� *** DRAW SHARK LEVEL ARENA *** z?�>� ****************************** �?�>� �?�>� "                ����������" �?�>� "                 �������" �?�>�A 1,0:� 5:� "LEVEL:" �?�>�A 1,1:� 3:� "SCORE:" @�>�A 30,0:� 7:� "SUBS:" 5@�>�A 28,1:� 13:� "OXYGEN:" O@�>�! 3,40,193,2048�40�2 l@�>�! 3,40,14,$FF80000�40�2 {@�>� I�0 � 39 �@?: C@&(I,24)�8:T@&(I,24)��(�(1)�3)�190 �@?� �@?� I�0 � 3 �@ ?: RF(I)��(�(1)�7)�10�I �@*?: � I�0 � � A4?:  � RF(I)�RF(I�1)��6 � 16160 A>?: � &AH?: RH��(�(1)�10)�1 7AR?: � J�1 � RH nA\?:  C@&(RF(I),24�J)�8:T@&(RF(I),24�J)��(�(1)�3)�190 �Af?:  C@&(RF(I)�1,24�J)�8:T@&(RF(I)�1,24�J)��(�(1)�3)�190 �Ap?:  C@&(RF(I)�2,24�J)�8:T@&(RF(I)�2,24�J)��(�(1)�3)�190 �Az?: � J �A�?� I �A�?� !BhB� ****************************** FBrB� *** INITIALIZE SHARK LEVEL *** kB|B� ****************************** |B�BXP�172:YP�65 �B�BGS�0:OX�999:SW�0 �B�B� NW�5 � � �B�B: � CS�6 � CS�CS�1 �B�B: NW�0:LV�LV�1 �B�B� �B�B� I�1 � CS �B�B: YS(I)��1 C�B: � I,XS(I),YS(I):� I,1 C�B� /C�B� $40000,FP:� 0,XP,YP DC�B� 0,1,7,0,0,0,1 dC�BC1��(1):C2��(2):C1�0:C2�0 jC�B� �CPF� *************************** �CZF� *** SETUP SPRITE MEMORY *** �CdF� *************************** �CnF� 65381: � 40 COLUMN SCREEN DxF�# 1,0:� RESERVE 8K IN BANK 4 DD�F�! 3,64�13,0,$40000:� SPREICHERBEREICH LEEREN wD�F� $D06C,0:� $D06D,0:� BIT 0-16 TO 0 FOR $40000 �D�F� $D06E,128�4:� SPRPTR16 (BIT7) AND BIT 2 TO 4 FOR $40000 �D�F� �D|G� **************************************************** 1E�G� *** INIT SPRITES FOR SHARK LEVEL, REDEFINE CHARS *** lE�G� **************************************************** �E�G� $40000,$1:� $40001,$10 �E�G� 0,1,12,0,0,0,1 �E�G� I�1 � 6 �E�G: � $40000�2�I,$7:� $40000�2�I�1,$10 �E�G: � I,1,3,0,0,0,1 �E�G� F�G� $4000E,$B:� $4000F,$10 %F�G� 7,1,7,0,0,0,1 1F�G� 1,12 \F�G�� 190,219,254,181,111,187,238,187,247 �F�G�� 191,91,238,181,127,246,221,239,117 �FH�� 192,189,106,255,213,110,245,191,118 �FH�� 193,51,204,0,51,204,0,51,204 �FH�� 194,204,51,0,204,51,0,204,51 �F&H� GXM� ***************** /GbM� *** READ DATA *** GGlM� ***************** UGvM� I�0 � 8 mGwM� DR(I,0):� DR(I,1) sGxM� �GM� I�0 � 895 �G�M� D:� $40040�I,D �G�M� �G�M� �G�M� *********************************** �G�M� *** PLAYER DIRECTION DEFINITION *** "H�M� *********************************** RH�M� 0,0,0,-1,1,-1,1,0,1,1,0,1,-1,1,-1,0,-1,-1 |H N� *********************************** �H!N� *** SUBMARINE SPRITE DEFINITION *** �H"N� *********************************** �H%N� *** RIGHT FRAME 1 I*N� 0,0,0,0,0,0,0,10,0 I4N� 0,11,0,0,43,0,0,43,0 BI>N� 0,43,128,128,170,128,160,169,84 hIHN� 34,169,85,42,170,149,10,170,170 �IRN� 41,153,154,41,153,154,170,170,171 �I\N� 138,170,175,2,170,172,2,171,252 �IfN� 2,191,240,0,170,128,0,0,0,0 �IzN� *** RIGHT FRAME 2 	J�N� 0,0,0,0,0,0,0,10,0 $J�N� 0,11,0,0,43,0,0,43,0 HJ�N� 0,43,128,0,170,128,128,169,84 oJ�N� 162,169,85,42,170,149,10,170,170 �J�N� 41,153,154,169,153,154,138,170,171 �J�N� 10,170,175,2,170,172,2,171,252 �J�N� 2,191,240,0,170,128,0,0,0,0 �J�N� *** RIGHT FRAME 3 K�N� 0,0,0,0,0,0,0,10,0 +K�N� 0,11,0,0,43,0,0,43,0 MK�N� 0,43,128,0,170,128,0,169,84 sK�N� 2,169,85,170,170,149,10,170,170 �KO� 169,153,154,9,153,154,10,170,171 �KO� 10,170,175,2,170,172,2,171,252 �KO� 2,191,240,0,170,128,0,0,0,0 �K.O� *** LEFT FRAME 1 L8O� 0,0,0,0,0,0,0,160,0 0LBO� 0,224,0,0,232,0,0,232,0 PLLO� 2,232,0,2,170,2,21,106,10 xLVO� 85,106,136,86,170,168,170,170,160 �L`O� 166,102,104,166,102,104,234,170,170 �LjO� 250,170,162,58,170,128,63,234,128 �LtO� 15,254,128,2,170,0,0,0,0,0 M�O� *** LEFT FRAME 2 M�O� 0,0,0,0,0,0,0,160,0 :M�O� 0,224,0,0,232,0,0,232,0 YM�O� 2,232,0,2,170,0,21,106,2 �M�O� 85,106,138,86,170,168,170,170,160 �M�O� 166,102,104,166,102,106,234,170,162 �M�O� 250,170,160,58,170,128,63,234,128 �M�O� 15,254,128,2,170,0,0,0,0,0 N�O� *** LEFT FRAME 3 %N�O� 0,0,0,0,0,0,0,160,0 CN�O� 0,224,0,0,232,0,0,232,0 bN P� 2,232,0,2,170,0,21,106,0 �N
P� 85,106,128,86,170,170,170,170,160 �NP� 166,102,106,166,102,96,234,170,160 �NP� 250,170,160,58,170,128,63,234,128 �N(P� 15,254,128,2,170,0,0,0,0,0 "OxP� ******************************* HOyP� *** SHARK SPRITE DEFINITION *** nOzP� ******************************* �O}P� *** RIGHT FRAME 1 �O�P� 0,0,0,2,128,0,2,160,0 �O�P� 0,160,0,128,168,0,128,40,0 �O�P� 160,42,0,160,170,128,162,170,96 P�P� 42,102,88,42,102,170,170,169,170 7P�P� 162,154,84,128,170,160,128,2,128 TP�P� 0,10,160,0,8,32,0,8,32 nP�P� 0,0,0,0,0,0,0,0,0,0 �P�P� *** RIGHT FRAME 2 �P�P� 0,0,0,2,128,0,2,160,0 �P�P� 0,160,0,32,168,0,32,40,0 �P�P� 32,42,0,32,170,128,34,170,96 
Q�P� 42,102,88,42,102,170,42,169,170 .QQ� 34,154,84,32,170,160,32,2,128 KQQ� 0,10,160,0,8,32,0,32,8 eQQ� 0,0,0,0,0,0,0,0,0,0 |Q,Q� *** LEFT FRAME 1 �Q6Q� 0,0,0,0,2,128,0,10,128 �Q@Q� 0,10,0,0,42,2,0,40,2 �QJQ� 0,168,10,2,170,10,9,170,138 �QTQ� 37,153,168,170,153,168,170,106,170 !R^Q� 21,166,138,10,170,2,2,128,2 >RhQ� 10,160,0,8,32,0,8,32,0 XRrQ� 0,0,0,0,0,0,0,0,0,0 oR�Q� *** LEFT FRAME 2 �R�Q� 0,0,0,0,2,128,0,10,128 �R�Q� 0,10,0,0,42,8,0,40,8 �R�Q� 0,168,8,2,170,8,9,170,136 �R�Q� 37,153,168,170,153,168,170,106,168 S�Q� 21,166,136,10,170,8,2,128,8 /S�Q� 10,160,0,8,32,0,32,8,0 IS�Q� 0,0,0,0,0,0,0,0,0,0 tSR� ************************************ �SR� *** NUKE WASTE SPRITE DEFINITION *** �SR� ************************************ �S&R� 0,0,0,0,0,0,0,0,0 �S0R� 0,0,0,0,0,0,0,0,0 T:R� 0,0,0,0,0,0,0,0,0 0TDR� 0,0,0,0,170,0,2,150,128 STNR� 2,85,128,2,150,128,2,170,128 wTXR� 3,235,192,2,190,128,2,170,128 �TbR� 3,235,192,2,190,128,0,170,0,0 �TlR� *********************************** �TvR� *** EXPLOSION SPRITE DEFINITION *** U�R� *********************************** 5U�R� *** EXPLOSION FRAME 1 MU�R� 0,0,0,0,0,0,2,0,0 gU�R� 0,0,8,0,34,0,2,0,32 �U�R� 0,136,0,8,0,0,0,2,32 �U�R� 8,128,0,0,8,136,0,0,0 �U�R� 8,130,0,0,0,0,2,32,136 �U�R� 8,0,0,0,130,32,0,0,0 �U�R� 0,32,128,0,0,0,0,0,0,0 V�R� *** EXPLOSION FRAME 2 'V�R� 0,0,0,0,0,0,0,0,0 ?V�R� 0,0,0,0,2,0,2,0,0 ZVS� 0,136,0,0,0,0,0,2,32 vVS� 8,128,0,0,8,128,0,0,0 �VS� 8,130,0,0,0,0,2,32,128 �V S� 0,0,0,0,2,0,0,0,0 �V*S� 0,0,0,0,0,0,0,0,0,0 �V>S� *** EXPLOSION FRAME 3 �VHS� 0,0,0,0,0,0,0,0,0 WRS� 0,0,0,0,0,0,0,0,0 )W\S� 0,0,0,0,0,0,0,2,0 CWfS� 0,128,0,0,8,0,0,0,0 ^WpS� 0,130,0,0,0,0,0,32,0 vWzS� 0,0,0,0,0,0,0,0,0 �W�S� 0,0,0,0,0,0,0,0,0,0 �W�a� **************************************** �W�a� *** INIT VARIABLES AND DEFINE ARRAYS *** X�a� **************************************** HX�aXP�100:YP�100:FP�3:FC�0:HP�0:VP�0:GS�0 yX�aCS�1:XW�0:YW�0:SW�0:NW�0:SC�0:C1�0:C2�0:SH�0 �X�aLV�1:SP�3:OX�999 �X�a� XS(6):� YS(6):� FS(6):� HS(6):� VS(6):� SS(6) �X�a� DR(8,1):� RF(3) �Xb�   