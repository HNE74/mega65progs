 ' d � 25030:� DECLARE VARS AND ARRAYS I �� 18030:� SETUP SPRITE MEMORY a �� 19830:� READ DATA � � 18330:� INIT SPRITES FOR SHARK LEVEL � �� ***************** � �� *** MAIN LOOP *** � �� ***************** � � 14030:� SHOW INTRO SCREEN !� 4030:� INIT GAME !� 8!$: � 16030:� DRAW SHARK LEVEL ARENA X!.: � 2030:� START LEVEL LOOP e!8� � SP�0 p!B� 1030 �!�� ****************** �!�� *** LEVEL LOOP *** �!�� ****************** �!�� �!�: � 17030:� INIT SHARK LEVEL �!: � 9030:� PLACE WASTE ": � 5030:� START GAME LOOP 0"� � SP�0 � GS�2 S" : � GS�3 � � 12530:� GAME OVER Y"*� q"�� ***************** �"�� *** INIT GAME *** �"�� ***************** �"�SP�3:SC�0:LV�1:NW�0:CS�1:K�1 �"�� I�1 � 5 �"�: YS(I)��1 �"�: � I,XS(I),YS(I) �"�� #�XC��1:YC��1:� 6,XC,YC ,#TC�0:HC�0:TT�400 2#� J#�� ***************** b#�� *** GAME LOOP *** z#�� ***************** �#�� �#�: FC�FC�1 �#�: � 6030:� HANDLE SHARKS �#�: � 6530:� HANDLE CRAB �#�: � 7030:� CONTROL SUBMARINE $�: � 8030:� UPDATE SPRITES $$�: � 5330:� DRAW GAME STATE K$�: � 10030:� PLAYER COLLISION CHECK i$�: � 9230:� WASTE HANDLING v$�� � GS�0 �$�� GS�2 � � 12030 �$ � �$�� *********************** �$�� *** DRAW GAME STATE *** �$�� *********************** 	%��T 100:�A 7,0:� 5:� �(LV)  %��A 7,1:� 3:� �(SC) 8%��A 35,0:� 7:� �(SP) S%�� OX�200 � � 10:� � 13 x%��A 35,1:� "    ":�A 35,1:� �(OX) �%� �(FC,40)�0 � � �%: � �(2048�40�2)�193 � �! 3,40,194,2048�40�2:� �! 3,40,193,2048�40�2 �%� �%"� &p� ********************* &z� *** HANDLE SHARKS *** 9&�� ********************* H&�� I�1 � CS �&�: � YS(I) ��1 � (XS(I)��5 � XS(I)��339) � YS(I)��1:� I,XS(I),YS(I) �&�: � YS(I) ��1 � � �&�:  � YS(I)��200 � VS(I)��(�(�(0)�K)�1):� � YS(I)��90 � VS(I)��(�(0)�K)�1 !'�:  � YS(I) ��1 � � �(FC, SS(I))� 0 � � N'�:   � �(�(1)�LV)�1�3 � �(FC,200)�0 � � �'�:     � XS(I)�XP � HS(I)�0 � HS(I)��HS(I):FS(I)�FS(I)�2:� � XS(I)�XP � HS(I)�0 � HS(I)��HS(I):FS(I)�FS(I)�2 �'�:   � �'�:   XS(I)�XS(I)�HS(I):YS(I)�YS(I)�VS(I) (�:   � �(XS(I),4)�0 � � G(�:    � FS(I)�9 � FS(I)�10:� � FS(I)�10 � FS(I)�9 z(�:    � FS(I)�7 � FS(I)�8:� � FS(I)�8 � FS(I)�7 �(�:   � �(�:  � �(�: �:� � �(:  J��(�(1)�50) �(:  � J�0 � NS�I:� 6330 �(: � �($� �(.� �(�� ******************* )�� *** SPAWN SHARK *** /)�� ******************* I)�YS(NS)��(�(1)�110)�90 Y)�J��(�(1)�2) h)�� J�0 � � �)�: HS(NS)��(�(�(0)�K)�1):FS(NS)�9:XS(NS)�338 �)��:� � �)�: HS(NS)��(�(0)�K)�1:FS(NS)�7:XS(NS)�6 �)�� �) VS(NS)�0:J��(�(1)�3) �)
� J�0 � � *: VS(NS)��(�(�(0)�K)�1) .*�:� � J�1 � � G*(: VS(NS)��(�(0)�K)�1 N*2� e*<SS(NS)��(�(1)�3)�1 k*F� �*d� ******************** �*n� *** CONTROL CRAB *** �*x� ******************** �*�� YC��1 � � �*�: TC�TC�1 �*�: � SW�0 � TC�TT � � !+�:  � XW��200 � XC�0:HC�2:� XC�340:HC��2 N+�:  YC�221:� 3, 4000, 30, 1, 2000, 500, 1 W+�: � ^+�� ~+�� YC��222 � �(FC,5)�0 � � �+�: YC�YC�1:� YC��240 � YC��1:XC��1 �+�� �+�� YC��1 � � �(FC,5)�0 � XC�XC�HC �+�� �+X� ************************* ,b� *** CONTROL SUBMARINE *** 7,l� ************************* L,vN��(2):HP�0:VP�0 c,�� (N � 15)��0 � � y,�: HP�DR(N � 15,0) �,�: VP�DR(N � 15,1) �,�� �,�� HP��0 � VP��0 � � �,�: � �(FC,9)�0 � � 1, 2000, 3, 1, 1000, 400, 1 �,�: � HP��0 � � -�:  � �(FC,3)�0 � � -�:   FP�FP�1 R-�:   � HP�0 � FP�6 � FP�4:� � HP�0 � FP�3 � FP�1 \-�:  � j-�: �:� � �-�:  � �(FC,3)�0 � � �-�:   FP�FP�1:� FP�4 � FP�1 �-�:   � FP�7 � FP�4 �-�:  � �-�: � �-�: XP�XP�HP:YP�YP�VP .: � YP�65 � YP�65:� � YP�230 � YP�230 &.: � YP�65 � SW�0 � � R.:  � OX�999 � OX�OX�5:� OX�999 � OX�999 [.: � �.: � XP�24 � XP�24:� � XP�311 � XP�311 �. �:� � VP�0 � � �.*: � �(FC,(10�(SW�1)))�0 � � YP�230 � YP�YP�1 �.4�: �.>� �.@� ********************** /J� *** UPDATE SPRITES *** 1/T� ********************** L/^� $40000,FP:� 0,XP,YP [/r� I�1 � CS q/|: � YS(I)��1 � � �/�:  � $40000�2�I,FS(I) �/�:  � I,XS(I),YS(I) �/�: � �/�� �/�� YC��1 � � �(FC,5)�0 � �:�A 0,6 0�: � �($4000C)�$F � � $4000C,$10:� � $4000C,$F 0�: � $4000D,$10 /0�: � 6,XC,YC 60�� L0�C1��(1):C2��(2) R0�� l0(#� ******************* �02#� *** PLACE WASTE *** �0<#� ******************* �0F#YW�222 �0P#� �0Z#: XW��(�(1)�296)�24 �0d#: � I�0 � 3 1n#:  � XW�20��RF(I)�8�24 � XW��RF(I)�8�8�3�24 � XW��1:I�3 1x#: � >1}#: � XW��24 � XW��290 � XW��1 M1�#� � XW���1 e1�#� 7,XW,YW:� 7,1,5 k1�#� �1�#� ********************** �1�#� *** WASTE HANDLING *** �1$� ********************** �1$� SW�0 � � �1$: � (C1 � 129)�129 � � 2"$:   � 2, 8000, 20, 0, 4000, 100, 2 -2,$:   � 7,0:� 0,1,5 P26$:   SW�1:� YC��1 � YC�222:HC�0 c2;$:   � 6,XC,YC l2@$: � x2J$�:� � �2T$: � YP�65 � XP�160 � XP�200 � � �2^$:  � 2, 8000, 8, 1, 4000, 100, 2 �2h$:  � 9030 �2r$:  SW�0:SC�SC�OX:� 0,1,7 3|$:  NW�NW�1:� NW�5 � GS�2 '3�$:  � I�1 � NW:�A 17�I,0 63�$:   � "��" ?3�$:  � K3�$:  TC�0 T3�$: � [3�$� a3�$� �3'� ************************ �3'� ***  COLLISION CHECK *** �3$'� **********+************* �3.'� (C1 � 1)�1 � � �38': � (C1 � 127)�127 � � �3B':  � 11030 4L': � 4V'� )4W'� (C1 � 192)�192 � � 74X': � 11030 >4Y'� ]4`'� (C2 � 1)�1 � YP�100 � � k4j': � 11030 �4t': � SW�1 � SW�0:� 9030 �4~'� �4�'OX�OX�1:� OX�200 � �(FC,20)�0 � � 2,4000,10,0,3000,100,2 �4�'� OX��0 � � 11030 �4�'� 5�*� ************************ %5+� *** PLAYER EXPLOSION *** D5+� ************************ Z5+� 1,350,80,1,,4,3 w5+� $40000,$C:� $40001,$10 �5 +� I�1 � 30:� 0,1,I:�T 0:� �5*+� $40000,$D:� $40001,$10 �54+� I�1 � 30:� 0,1,I:�T 0:� �5>+� $40000,$E:� $40001,$10 6H+� I�1 � 30:� 0,1,I:�T 0:� +6\+� 0,0:� I�1 � 30:�T 0:� L6f+SP�SP�1:� SP�0 � GS�3:� GS�1 R6p+� p6�.� *********************** �6�.� ***  LEVEL COMPLETE *** �6�.� *********************** �6�.� 5330:� I�0 � 7:� I,0:� �6/�A 3,5 :� "���������������������������������" 17/�A 3,6 :� "}                               }" d7/�A 3,7 :� "}  YOU HAVE CLEARED THE LEVEL,  }" �7&/�A 3,8 :� "}                               }" �70/�A 3,9 :� "}            WELL DONE!         }" �7:/�A 3,10:� "}                               }" 08D/�A 3,11:� "} PRESS FIRE BUTTON TO PROCEED. }" c8N/�A 3,12:� "}                               }" �8X/�A 3,13:� "���������������������������������" �8]/� 15:� 25:� "O4T2$CDEFGHC" �8b/N � �(2) �8l/� N��128 � � 12130 �8v/� I�1 � 10:�T 0:� �8�/�:� 9�0� ***************** *9�0� *** GAME OVER *** B9�0� ***************** `9�0� 5330:� I�0 � 7:� I,0:� �9�0�A 3,5 :� "����������������������������������" �91�A 3,6 :� "}                               }" �91�A 3,7 :� "} YOU HAVE LOST ALL YOUR SUBS,  }" -:1�A 3,8 :� "}                               }" `:$1�A 3,9 :� "}           GAME OVER!          }" �:.1�A 3,10:� "}                               }" �:81� SH�SC � � �:B1SH�SC:�A 3,11:� "}        A NEW HIGHSCORE!       }" �:L1�:� � ;V1�A 3,11:� "}   SORRY, NO NEW HIGHSCORE.    }" #;`1� V;j1�A 3,12:� "}                               }" �;t1�A 3,13:� "���������������������������������" �;y1� 15:� 25:� "O4T2CHAGFED$C$C" �;~1N � �(2) �;�1� N��128 � � 12670 �;�1� I�1 � 10:�T 0:� �;�1� <�6� ************************* -<�6� *** SHOW INTRO SCREEN *** M<�6� ************************* ^<�6�; 6:�< 14:� �<�6� "                                        "; �<�6� "  ������������   �����������             "; �<�6� "  �      �� �   � �� ���� �             "; '=�6� "  � ������� �   � �� �  � �             "; Y= 7� "  � �     � �   � �� �  ���             "; �=
7� "  �� ������� �   � �� �������            "; �=7� "  �      �� �   � �� �������            "; �=7� "  ������ �� �   � �� �    ��            "; ">(7� "  ������ �� ����� �� �������            "; T>27� "  ��������������������������            "; �><7� "     ������������������������������"; �>F7� "           CREATED BY NOLTISOFT IN 2024 �      "; �>P7� "    �������������������������������     "; !?Z7� "            ���������������������������  "; S?d7� "            �      ��       ��       �  "; �?n7� "            � ������� �������� ����� �  "; �?x7� "            � �     � �      � �   � �  "; �?�7� "            � ������� �������� ����� �  "; @�7� "            �      ��       ��       �  "; M@�7� "            ������ �� �������� ����� �  "; @�7� "            ������ �� �������� �   � �  "; �@�7� "            ��������������������   ���  "; �@�7� "    ���������������������������������"; A�7� "        � PRESS FIRE BUTTON TO CONTINUE! �"; IA�7� "        ����������������������������������" YA�7� SH�0 � � wA�7: �A 28,3:� "�HIGHSCORE:" �A�7: �A 28,5:� "�";SH �A�7� �A�7J��(�(1)�3)�2:FC�0 B8� 15:� 25:� "O"��(J)�"T2AAAA.A.A$CDFAGGGGG.G.G$CEGAAAA.A.ABCO"��(J�1)�"DO"��(J)�"CAGE.D.D" B8N � �(2) &B8FC�FC�1 @B"8� �(FC,25000)�0 � � TB,8: J��(�(1)�3)�2 �B68: � 15:� 25:� "O"��(J)�"T2AAAA.A.A$CDFAGGGGG.G.G$CEGAAAA.A.ABCO"��(J�1)�"DO"��(J)�"CAGE.D.D" �B@8� �BJ8� N��128 � � 14350 �BT8�:� C�>� ****************************** (C�>� *** DRAW SHARK LEVEL ARENA *** MC�>� ****************************** SC�>� zC�>� "                ����������" �C�>� "                 �������" �C�>�A 1,0:� 5:� "LEVEL:" �C�>�A 1,1:� 3:� "SCORE:" �C�>�A 30,0:� 7:� "SUBS:" D�>�A 28,1:� 13:� "OXYGEN:" "D�>�! 3,40,193,2048�40�2 ?D�>�! 3,40,14,$FF80000�40�2 ND�>� I�0 � 39 xD?: C@&(I,24)�8:T@&(I,24)��(�(1)�3)�190 ~D?� �D?� I�0 � 3 �D ?: RF(I)��(�(1)�7)�10�I �D*?: � I�0 � � �D4?:  � RF(I)�RF(I�1)��6 � 16160 �D>?: � �DH?: RH��(�(1)�10)�1 
ER?: � J�1 � RH AE\?:  C@&(RF(I),24�J)�8:T@&(RF(I),24�J)��(�(1)�3)�190 |Ef?:  C@&(RF(I)�1,24�J)�8:T@&(RF(I)�1,24�J)��(�(1)�3)�190 �Ep?:  C@&(RF(I)�2,24�J)�8:T@&(RF(I)�2,24�J)��(�(1)�3)�190 �Ez?: � J �E�?� I �E�?� �EhB� ****************************** FrB� *** INITIALIZE SHARK LEVEL *** >F|B� ****************************** OF�BXP�172:YP�65 dF�BGS�0:OX�999:SW�0 tF�B� NW�5 � � �F�B: LV�LV�1:NW�0:TT�TT�50:� TT�100 � TT�100 �F�B: � CS�5 � �(LV�1,2)�0 � CS�CS�1 �F�B� �F�B� I�1 � CS �F�B: YS(I)��1 G�B: � I,XS(I),YS(I):� I,1 G�B� ,G�B� $40000,FP:� 0,XP,YP AG�B� 0,1,7,0,0,0,1 pGCXC��1:TC�0:YC��1:HC�0:� 6,XC,YC:� 6,1,10 �GCC1��(1):C2��(2):C1�0:C2�0 �GC� LV�4 � K�0:� � LV�8 � K�1:� K�2 �G&C� �GPF� ***************************  HZF� *** SETUP SPRITE MEMORY *** "HdF� *************************** BHnF� 65381: � 40 COLUMN SCREEN dHxF�# 1,0:� RESERVE 8K IN BANK 4 �H�F�! 3,64�13,0,$40000:� SPREICHERBEREICH LEEREN �H�F� $D06C,0:� $D06D,0:� BIT 0-16 TO 0 FOR $40000 I�F� $D06E,128�4:� SPRPTR16 (BIT7) AND BIT 2 TO 4 FOR $40000 I�F� HI|G� **************************************************** �I�G� *** INIT SPRITES FOR SHARK LEVEL, REDEFINE CHARS *** �I�G� **************************************************** �I�G� $40000,$1:� $40001,$10 �I�G� 0,1,12,0,0,0,1 �I�G� I�1 � 5 (J�G: � $40000�2�I,$7:� $40000�2�I�1,$10 ?J�G: � I,1,3,0,0,0,1 EJ�G� bJ�G� $4000C,$F:� $4000D,$10 xJ�G� 6,1,10,0,0,0,1 �J�G� $4000E,$B:� $4000F,$10 �J�G� 7,1,7,0,0,0,1 �J�G� 1,12 �J�G�� 190,219,254,181,111,187,238,187,247 K�G�� 191,91,238,181,127,246,221,239,117 6KH�� 192,189,106,255,213,110,245,191,118 ZKH�� 193,51,204,0,51,204,0,51,204 ~KH�� 194,204,51,0,204,51,0,204,51 �K&H� �KXM� ***************** �KbM� *** READ DATA *** �KlM� ***************** �KvM� I�0 � 8 �KwM� DR(I,0):� DR(I,1) �KxM� 	LM� I�0 � 1023 L�M� D:� $40040�I,D $L�M� *L�M� TL�M� *********************************** ~L�M� *** PLAYER DIRECTION DEFINITION *** �L�M� *********************************** �L�M� 0,0,0,-1,1,-1,1,0,1,1,0,1,-1,1,-1,0,-1,-1 M N� *********************************** ,M!N� *** SUBMARINE SPRITE DEFINITION *** VM"N� *********************************** nM%N� *** RIGHT FRAME 1 �M*N� 0,0,0,0,0,0,0,10,0 �M4N� 0,11,0,0,43,0,0,43,0 �M>N� 0,43,128,128,170,128,160,169,84 �MHN� 34,169,85,42,170,149,10,170,170 NRN� 41,153,154,41,153,154,170,170,171 <N\N� 138,170,175,2,170,172,2,171,252 ^NfN� 2,191,240,0,170,128,0,0,0,0 vNzN� *** RIGHT FRAME 2 �N�N� 0,0,0,0,0,0,0,10,0 �N�N� 0,11,0,0,43,0,0,43,0 �N�N� 0,43,128,0,170,128,128,169,84 �N�N� 162,169,85,42,170,149,10,170,170 O�N� 41,153,154,169,153,154,138,170,171 CO�N� 10,170,175,2,170,172,2,171,252 eO�N� 2,191,240,0,170,128,0,0,0,0 }O�N� *** RIGHT FRAME 3 �O�N� 0,0,0,0,0,0,0,10,0 �O�N� 0,11,0,0,43,0,0,43,0 �O�N� 0,43,128,0,170,128,0,169,84 �O�N� 2,169,85,170,170,149,10,170,170  PO� 169,153,154,9,153,154,10,170,171 EPO� 10,170,175,2,170,172,2,171,252 gPO� 2,191,240,0,170,128,0,0,0,0 ~P.O� *** LEFT FRAME 1 �P8O� 0,0,0,0,0,0,0,160,0 �PBO� 0,224,0,0,232,0,0,232,0 �PLO� 2,232,0,2,170,2,21,106,10 �PVO� 85,106,136,86,170,168,170,170,160 (Q`O� 166,102,104,166,102,104,234,170,170 PQjO� 250,170,162,58,170,128,63,234,128 qQtO� 15,254,128,2,170,0,0,0,0,0 �Q�O� *** LEFT FRAME 2 �Q�O� 0,0,0,0,0,0,0,160,0 �Q�O� 0,224,0,0,232,0,0,232,0 �Q�O� 2,232,0,2,170,0,21,106,2 R�O� 85,106,138,86,170,168,170,170,160 1R�O� 166,102,104,166,102,106,234,170,162 YR�O� 250,170,160,58,170,128,63,234,128 zR�O� 15,254,128,2,170,0,0,0,0,0 �R�O� *** LEFT FRAME 3 �R�O� 0,0,0,0,0,0,0,160,0 �R�O� 0,224,0,0,232,0,0,232,0 �R P� 2,232,0,2,170,0,21,106,0 S
P� 85,106,128,86,170,170,170,170,160 9SP� 166,102,106,166,102,96,234,170,160 aSP� 250,170,160,58,170,128,63,234,128 �S(P� 15,254,128,2,170,0,0,0,0,0 �SxP� ******************************* �SyP� *** SHARK SPRITE DEFINITION *** �SzP� ******************************* T}P� *** RIGHT FRAME 1 (T�P� 0,0,0,2,128,0,2,160,0 IT�P� 0,160,0,128,168,0,128,40,0 oT�P� 160,42,0,160,170,128,162,170,96 �T�P� 42,102,88,42,102,170,170,169,170 �T�P� 162,154,84,128,170,160,128,2,128 �T�P� 0,10,160,0,8,32,0,8,32 �T�P� 0,0,0,0,0,0,0,0,0,0 U�P� *** RIGHT FRAME 2 (U�P� 0,0,0,2,128,0,2,160,0 GU�P� 0,160,0,32,168,0,32,40,0 jU�P� 32,42,0,32,170,128,34,170,96 �U�P� 42,102,88,42,102,170,42,169,170 �UQ� 34,154,84,32,170,160,32,2,128 �UQ� 0,10,160,0,8,32,0,32,8 �UQ� 0,0,0,0,0,0,0,0,0,0 V,Q� *** LEFT FRAME 1 V6Q� 0,0,0,0,2,128,0,10,128 :V@Q� 0,10,0,0,42,2,0,40,2 \VJQ� 0,168,10,2,170,10,9,170,138 �VTQ� 37,153,168,170,153,168,170,106,170 �V^Q� 21,166,138,10,170,2,2,128,2 �VhQ� 10,160,0,8,32,0,8,32,0 �VrQ� 0,0,0,0,0,0,0,0,0,0 �V�Q� *** LEFT FRAME 2 W�Q� 0,0,0,0,2,128,0,10,128 -W�Q� 0,10,0,0,42,8,0,40,8 MW�Q� 0,168,8,2,170,8,9,170,136 vW�Q� 37,153,168,170,153,168,170,106,168 �W�Q� 21,166,136,10,170,8,2,128,8 �W�Q� 10,160,0,8,32,0,32,8,0 �W�Q� 0,0,0,0,0,0,0,0,0,0 �WR� ************************************ %XR� *** NUKE WASTE SPRITE DEFINITION *** PXR� ************************************ hX&R� 0,0,0,0,0,0,0,0,0 �X0R� 0,0,0,0,0,0,0,0,0 �X:R� 0,0,0,0,0,0,0,0,0 �XDR� 0,0,0,0,170,0,2,150,128 �XNR� 2,85,128,2,150,128,2,170,128 �XXR� 3,235,192,2,190,128,2,170,128 !YbR� 3,235,192,2,190,128,0,170,0,0 KYlR� *********************************** uYvR� *** EXPLOSION SPRITE DEFINITION *** �Y�R� *********************************** �Y�R� *** EXPLOSION FRAME 1 �Y�R� 0,0,0,0,0,0,2,0,0 �Y�R� 0,0,8,0,34,0,2,0,32 Z�R� 0,136,0,8,0,0,0,2,32 $Z�R� 8,128,0,0,8,136,0,0,0 AZ�R� 8,130,0,0,0,0,2,32,136 \Z�R� 8,0,0,0,130,32,0,0,0 yZ�R� 0,32,128,0,0,0,0,0,0,0 �Z�R� *** EXPLOSION FRAME 2 �Z�R� 0,0,0,0,0,0,0,0,0 �Z�R� 0,0,0,0,2,0,2,0,0 �ZS� 0,136,0,0,0,0,0,2,32 �ZS� 8,128,0,0,8,128,0,0,0 [S� 8,130,0,0,0,0,2,32,128 1[ S� 0,0,0,0,2,0,0,0,0 K[*S� 0,0,0,0,0,0,0,0,0,0 g[>S� *** EXPLOSION FRAME 3 [HS� 0,0,0,0,0,0,0,0,0 �[RS� 0,0,0,0,0,0,0,0,0 �[\S� 0,0,0,0,0,0,0,2,0 �[fS� 0,128,0,0,8,0,0,0,0 �[pS� 0,130,0,0,0,0,0,32,0 �[zS� 0,0,0,0,0,0,0,0,0 \�S� 0,0,0,0,0,0,0,0,0,0 ;\�S� ****************************** `\�S� *** CRAB SPRITE DEFINITION *** �\�S� ****************************** �\�S� *** CRAB FRAME 1 �\�S� 0,0,0,0,0,0,8,0,32 �\�S� 42,0,168,34,0,136,34,130,136 �\�S� 0,130,0,0,130,0,0,130,0 ]�S� 10,170,160,170,170,170,170,235,170 I]�S� 138,235,162,130,170,130,162,170,138 l]�S� 2,170,128,10,40,160,40,65,40 �]�S� 32,65,8,32,0,8,40,0,40,0 �]T� *** CRAB FRAME 2 �]T� 0,0,0,32,0,8,32,0,8 �]T� 40,0,40,10,0,160,2,130,128 �]$T� 0,130,0,0,130,0,0,130,0 "^.T� 10,170,160,42,170,168,42,170,168 J^8T� 42,235,168,34,235,136,162,170,138 l^BT� 2,170,128,10,40,160,8,65,32 �^LT� 8,65,32,8,20,32,40,0,40,0 �^�a� **************************************** �^�a� *** INIT VARIABLES AND DEFINE ARRAYS *** _�a� **************************************** D_�aXP�100:YP�100:FP�3:FC�0:HP�0:VP�0:GS�0 u_�aCS�1:XW�0:YW�0:SW�0:NW�0:SC�0:C1�0:C2�0:SH�0 �_�aLV�1:SP�3:OX�999:XC�0:YC�0:HC�0:TC�0 �_�a� XS(6):� YS(6):� FS(6):� HS(6):� VS(6):� SS(6) �_�a� DR(8,1):� RF(3) �_b�   