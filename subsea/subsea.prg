 ' d � 25030:� DECLARE VARS AND ARRAYS I �� 18030:� SETUP SPRITE MEMORY a �� 19830:� READ DATA � � 18330:� INIT SPRITES FOR SHARK LEVEL � �� ***************** � �� *** MAIN LOOP *** � �� ***************** � � 14030:� SHOW INTRO SCREEN !� 15030:� SHOW INSTRUCTION SCREEN 1!� 4030:� INIT GAME 7!� ^!$: � 16030:� DRAW SHARK LEVEL ARENA ~!.: � 2030:� START LEVEL LOOP �!8� � SP�0 �!B� 1030 �!�� ****************** �!�� *** LEVEL LOOP *** �!�� ****************** �!�� "�: � 17030:� INIT SHARK LEVEL #": � 9030:� PLACE WASTE B": � 5030:� START GAME LOOP V"� � SP�0 � GS�2 y" : � GS�3 � � 12530:� GAME OVER "*� �"�� ***************** �"�� *** INIT GAME *** �"�� ***************** �"�SP�3:SC�0:LV�1:NW�0:CS�1:K�1 �"�� I�1 � 4 #�: YS(I)��1 #�: � I,XS(I),YS(I) "#�� =#�XC��1:YC��1:� 6,XC,YC R#TC�0:HC�0:TT�400 g#XJ�24:YJ�65:HJ�1 m#� �#�� ***************** �#�� *** GAME LOOP *** �#�� ***************** �#�� �#�: FC�FC�1 �#�: � 6030:� HANDLE SHARKS $�: � 6530:� HANDLE CRAB "$�: � 7030:� CONTROL SUBMARINE @$�: � 8030:� UPDATE SPRITES _$�: � 5330:� DRAW GAME STATE �$�: � 10030:� PLAYER COLLISION CHECK �$�: � 9230:� WASTE HANDLING �$�� � GS�0 �$�� GS�2 � � 12030 �$ � �$�� *********************** %�� *** DRAW GAME STATE *** &%�� *********************** D%��T 100:�A 7,0:� 5:� �(LV) [%��A 7,1:� 3:� �(SC) s%��A 35,0:� 7:� �(SP) �%�� OX�200 � � 10:� � 13 �%��A 35,1:� "    ":�A 35,1:� �(OX) �%� �(FC,40)�0 � � &: � �(2048�40�2)�193 � �! 3,40,194,2048�40�2:� �! 3,40,193,2048�40�2 &�  &"� <&p� ********************* X&z� *** HANDLE SHARKS *** t&�� ********************* �&�� I�1 � CS �&�: � YS(I) ��1 � � (XS(I)��5 � XS(I)��339) � YS(I)��1:� I,XS(I),YS(I) �&�: � YS(I) ��1 � � 1'�:  � YS(I)��200 � VS(I)��(�(�(0)�K)�1):� � YS(I)��90 � VS(I)��(�(0)�K)�1 ]'�:  � YS(I) ��1 � � �(FC, SS(I))�0 � � y'�:   � �(�(1)�LV)�3 � � �'�:    � �(FC,200)�0 � � 
(�:     � XS(I)�XP � � HS(I)�0 � HS(I)��HS(I):FS(I)�FS(I)�2:� � XS(I)�XP � � HS(I)�0 � HS(I)��HS(I):FS(I)�FS(I)�2 (�:    � !(�:   � M(�:   XS(I)�XS(I)�HS(I):YS(I)�YS(I)�VS(I) j(�:   � �(XS(I),4)�0 � � �(�:    � FS(I)�9 � FS(I)�10:� � FS(I)�10 � FS(I)�9 �(�:    � FS(I)�7 � FS(I)�8:� � FS(I)�8 � FS(I)�7 �(�:   � �(�:  � �(�: �:� � 	):  J��(�(1)�50) $):  � J�0 � NS�I:� 6330 -): � 3)$� 9).� S)�� ******************* m)�� *** SPAWN SHARK *** �)�� ******************* �)�YS(NS)��(�(1)�110)�90 �)�J��(�(1)�2) �)�� J�0 � � �)�: HS(NS)��(�(�(0)�K)�1):FS(NS)�9:XS(NS)�338 �)��:� � '*�: HS(NS)��(�(0)�K)�1:FS(NS)�7:XS(NS)�6 .*�� G* VS(NS)�0:J��(�(1)�3) V*
� J�0 � � r*: VS(NS)��(�(�(0)�K)�1) �*�:� � J�1 � � �*(: VS(NS)��(�(0)�K)�1 �*2� �*<� LV�5 � SS(NS)��(�(1)�6)�1:� SS(NS)��(�(1)�3)�1 �*F� 
+d� ********************************** 3+n� *** CONTROL CRAB AND JELLYFISH *** \+x� ********************************** m+�� YC��1 � � {+�: TC�TC�1 �+�: � SW�0 � TC�TT � � �+�:  � XW��200 � XC�0:HC�2:� XC�340:HC��2 �+�:  YC�221:� 3, 4000, 30, 1, 2000, 500, 1 �+�: � �+�� =,�� YC��222 � � �(FC,5)�0 � YC�YC�1:� YC��240 � YC��1:XC��1 N,�� YJ��1 � � f,�: � �(FC,5)�0 � � �,�:  � YP�80 � LV�4 � � �,�:   � �(�(1)�40)�1 � � �,�:    � HJ�1 � � XP�XJ � HJ��1:� � XP�XJ � HJ�1 �,:   � �,:  � -:  XC�XC�HC:XJ�XJ�HJ:� XJ��320 � XJ��24 � HJ��HJ @-:  � LV�4 � XJ�XJ�HJ:XC�XC�HC�0.5 I-": � O-,� o-X� ************************* �-b� *** CONTROL SUBMARINE *** �-l� ************************* �-vN��(2):HP�0:VP�0 �-�� (N � 15)��0 � � �-�: HP�DR(N � 15,0) .�: VP�DR(N � 15,1) .�� '.�� HP��0 � VP��0 � � Z.�: � �(FC,9)�0 � � 1, 2000, 3, 1, 1000, 400, 1 m.�: � HP��0 � � �.�:  � �(FC,3)�0 � � �.�:   FP�FP�1 �.�:   � HP�0 � � FP�6 � FP�4:� � HP�0 � � FP�3 � FP�1 �.�:  � �.�: �:� � �.�:  � �(FC,3)�0 � � /�:   FP�FP�1:� FP�4 � FP�1 3/�:   � FP�7 � FP�4 =/�:  � F/�: � ^/�: XP�XP�HP:YP�YP�VP �/: � YP�65 � YP�65:� � YP�230 � YP�230 �/: � YP�65 � � SW�0 � � OX�999 � OX�OX�5:� OX�999 � OX�999 �/: � �/: � XP�24 � XP�24:� � XP�318 � XP�318 0 �:� � VP�0 � � @0*: � �(FC,(10�(SW�1)))�0 � � YP�230 � YP�YP�1 H04�: N0>� k0@� ********************** �0J� *** UPDATE SPRITES *** �0T� ********************** �0^� $40000,FP:� 0,XP,YP �0h� I�1 � CS �0r: � YS(I)��1 � � �0|:  � $40000�2�I,FS(I) 1�:  � I,XS(I),YS(I)  1�: � &1�� F1�� YC��1 � � �(FC,5)�0 � � x1�: � �($4000C)�$F � � $4000C,$10:� � $4000C,$F �1�: � 6,XC,YC �1�� �1�� YJ��1 � � �(FC,5)�0 � � �1�: J��($4000A) �1�: J�J�1:� J�$13 � J�$11 �1�: � $4000A,J  2�: � 5,XJ,YJ 2�� 2 C1��(1):C2��(2) #2 � =2(#� ******************* W22#� *** PLACE WASTE *** q2<#� ******************* |2F#YW�222 �2P#� �2Z#: XW��(�(1)�296)�24 �2d#: � I�0 � 3 �2n#:  � XW�20��RF(I)�8�24 � XW��RF(I)�8�8�3�24 � XW��1:I�3 �2x#: � 3}#: � XW��24 � XW��290 � XW��1 3�#� � XW���1 63�#� 7,XW,YW:� 7,1,5 <3�#� Y3�#� ********************** v3�#� *** WASTE HANDLING *** �3$� ********************** �3$� SW�0 � � �3$: � (C1 � 129)�129 � � �3"$:   � 2, 8000, 20, 0, 4000, 100, 2 �3,$:   � 7,0:� 0,1,5 !46$:   SW�1:� YC��1 � YC�222:HC�0 44;$:   � 6,XC,YC =4@$: � I4J$�:� � n4T$: � YP�65 � XP�160 � XP�200 � � �4^$:  � 2, 8000, 8, 1, 4000, 100, 2 �4h$:  � 9030 �4r$:  SW�0:SC�SC�OX:� 0,1,7 �4|$:  NW�NW�1:� NW�5 � GS�2 �4�$:  � I�1 � NW:�A 17�I,0 5�$:   � "��" 5�$:  � 5�$:  TC�0 %5�$: � ,5�$� 25�$� Q5'� ************************ p5'� ***  COLLISION CHECK *** �5$'� **********+************* �5.'� (C1 � 1)�1 � � �58': � (C1 � 127)�127 � � �5B':  � 11030 �5L': � �5V'� �5W'� (C1 � 192)�192 � � 6X': � 11030 6Y'� .6`'� (C2 � 1)�1 � YP�100 � � <6j': � 11030 W6t': � SW�1 � SW�0:� 9030 ^6~'� �6�'OX�OX�1:� OX�200 � �(FC,20)�0 � � 2,4000,10,0,3000,100,2 �6�'� OX��0 � � 11030 �6�'� �6�*� ************************ �6+� *** PLAYER EXPLOSION *** 7+� ************************ +7+� 1,350,80,1,,4,3 H7+� $40000,$C:� $40001,$10 i7 +� I�1 � 30:� 0,1,I:�T 250:� �7*+� $40000,$D:� $40001,$10 �74+� I�1 � 30:� 0,1,I:�T 250:� �7>+� $40000,$E:� $40001,$10 �7H+� I�1 � 30:� 0,1,I:�T 250:� 8\+� 0,0:� I�1 � 30:�T 250:� %8f+SP�SP�1:� SP�0 � GS�3:� GS�1 +8p+� I8�.� *********************** g8�.� ***  LEVEL COMPLETE *** �8�.� *********************** �8�.� 5330:� I�0 � 7:� I,0:� �8/�A 3,5 :� "���������������������������������" 
9/�A 3,6 :� "}                               }" =9/�A 3,7 :� "}  YOU HAVE CLEARED THE LEVEL,  }" p9&/�A 3,8 :� "}                               }" �90/�A 3,9 :� "}            WELL DONE!         }" �9:/�A 3,10:� "}                               }" 	:D/�A 3,11:� "} PRESS FIRE BUTTON TO PROCEED. }" <:N/�A 3,12:� "}                               }" o:X/�A 3,13:� "���������������������������������" �:]/� 15:� 25:� "O4T2$CDEFGHC" �:b/N � �(2) �:l/� N��128 � � 12130 �:v/� I�1 � 10:�T 250:� �:�/�:� �:�0� ***************** ;�0� *** GAME OVER *** ;�0� ***************** ;;�0� 5330:� I�0 � 7:� I,0:� o;�0�A 3,5 :� "����������������������������������" �;1�A 3,6 :� "}                               }" �;1�A 3,7 :� "} YOU HAVE LOST ALL YOUR SUBS,  }" <1�A 3,8 :� "}                               }" ;<$1�A 3,9 :� "}           GAME OVER!          }" n<.1�A 3,10:� "}                               }" <81� SH�SC � � �<B1SH�SC:�A 3,11:� "}        A NEW HIGHSCORE!       }" �<L1�:� � �<V1�A 3,11:� "}   SORRY, NO NEW HIGHSCORE.    }" �<`1� 1=j1�A 3,12:� "}                               }" d=t1�A 3,13:� "���������������������������������" �=y1� 15:� 25:� "O4T2CHAGFED$C$C" �=~1N � �(2) �=�1� N��128 � � 12670 �=�1� I�0 � 20:�T 250:� �=�1� �=�6� ************************* 
>�6� *** SHOW INTRO SCREEN *** *>�6� ************************* ;>�6�; 6:�< 14:� m>�6� "                                        "; �>�6� "  ������������   �����������             "; �>�6� "  �      �� �   � �� ���� �             "; ?�6� "  � ������� �   � �� �  � �             "; 6? 7� "  � �     � �   � �� �  ���             "; i?
7� "  �� ������� �   � �� �������            "; �?7� "  �      �� �   � �� �������            "; �?7� "  ������ �� �   � �� �    ��            "; �?(7� "  ������ �� ����� �� �������            "; 1@27� "  ��������������������������            "; ^@<7� "     ������������������������������"; �@F7� "           CREATED BY NOLTISOFT IN 2024 �      "; �@P7� "    �������������������������������     "; �@Z7� "            ���������������������������  "; 0Ad7� "            �      ��       ��       �  "; bAn7� "            � ������� �������� ����� �  "; �Ax7� "            � �     � �      � �   � �  "; �A�7� "            � ������� �������� ����� �  "; �A�7� "            �      ��       ��       �  "; *B�7� "            ������ �� �������� ����� �  "; \B�7� "            ������ �� �������� �   � �  "; �B�7� "            ��������������������   ���  "; �B�7� "    ���������������������������������"; �B�7� "        � PRESS FIRE BUTTON TO CONTINUE! �"; &C�7� "        ����������������������������������" 6C�7� SH�0 � � TC�7: �A 28,3:� "�HIGHSCORE:" kC�7: �A 28,5:� "�";SH yC�7�:� 0.5 �C�7J��(�(1)�3)�2:FC�0 �C8� 15:� 25:� "O"��(J)�"T2AAAA.A.A$CDFAGGGGG.G.G$CEGAAAA.A.ABCO"��(J�1)�"DO"��(J)�"CAGE.D.D" �C8N � �(2) 
D8FC�FC�1 $D"8� �(FC,25000)�0 � � 8D,8: J��(�(1)�3)�2 �D68: � 15:� 25:� "O"��(J)�"T2AAAA.A.A$CDFAGGGGG.G.G$CEGAAAA.A.ABCO"��(J�1)�"DO"��(J)�"CAGE.D.D" �D@8� �DJ8� N��128 � � 14350 �DT8�:� �D�:� ************************* E�:� *** SHOW INTRO SCREEN *** "E�:� ************************* VE�:�:� "                                        "; �E�:� "       �YOU ARE CAPTAIN OF A SUBMARINE   "; �E�:� "       HAVING THE MISSION TO CLEAN THE  "; �E�:� "       SEA FROM TOXIC WASTE. OXYGEN IS  "; F�:� "       LIMITED AND HAS TO BE RECHARGED  "; QF�:� "       BY SURFACING YOUR VESSEL.        "; �F�:� "                                        "; �F�:� "       COLLECT THE TOXIC BARRELS AND    "; �F;� "       DELIVER THEM TO THE DISPOSAL     "; G;� "       PLATFORM ON THE SURFACE.         "; KG;� "       OXYGEN RECHARGE IS PROHIBITED IF "; }G$;� "       YOUR SUBMARINE CARRIES A BARREL. "; �G.;� "                                        "; �G8;� "       BEWARE OF THE DEADLY MUTANT      "; HB;� "       JELLYFISH, SHARKS AND DEEP SEA   "; EHL;� "       CRAB. CONTACT WITH THEM CAUSES   "; wHV;� "       THE INSTANT DESTRUCTION OF YOUR  "; �H`;� "       VESSEL.                          "; �Ht;� "       YOU WILL ALSO LOSE A SUBMARINE   "; I~;� "       IF THE CRAB SNATCHES A BARREL.   "; @I�;� "                                        ":� oI�;� "   �����������������������������������" �I�;� "   � PRESS FIRE BUTTON TO START GAME! �" �I�;� "   ������������������������������������" J�;� $40000,$1:� $40001,$10:� 0,1,7:� 0,40,65 J�;� 7,1,5:� 7,40,110 4J�;� 5,1,4:� 5,40,150 MJ�;� 1,1,3:� 1,40,170 fJ�;� 6,1,2:� 6,40,190 qJ�;� 0.5 ~J�;N � �(2) �J�;� N��128 � � 15280 �J�;� �J�>� ****************************** �J�>� *** DRAW SHARK LEVEL ARENA *** 
K�>� ****************************** K�>� 7K�>� "                ����������" ZK�>� "                 �������" tK�>�A 1,0:� 5:� "LEVEL:" �K�>�A 1,1:� 3:� "SCORE:" �K�>�A 30,0:� 7:� "SUBS:" �K�>�A 28,1:� 13:� "OXYGEN:" �K�>�! 3,40,193,2048�40�2 �K�>�! 3,40,14,$FF80000�40�2 L�>� I�0 � 39 6L?: C@&(I,24)�12:T@&(I,24)��(�(1)�3)�190 <L?� JL?� I�0 � 3 eL ?: RF(I)��(�(1)�7)�10�I vL*?: � I�0 � � �L4?:  � RF(I)�RF(I�1)��6 � 16160 �L>?: � �LH?: RH��(�(1)�10)�1 �LR?: � J�1 � RH  M\?:  C@&(RF(I),24�J)�12:T@&(RF(I),24�J)��(�(1)�3)�190 <Mf?:  C@&(RF(I)�1,24�J)�12:T@&(RF(I)�1,24�J)��(�(1)�3)�190 xMp?:  C@&(RF(I)�2,24�J)�12:T@&(RF(I)�2,24�J)��(�(1)�3)�190 �Mz?: � J �M�?� I �M�?� �MhB� ****************************** �MrB� *** INITIALIZE SHARK LEVEL *** �M|B� ****************************** N�BXP�172:YP�65 %N�BGS�0:OX�999:SW�0 5N�B� NW�5 � � cN�B: LV�LV�1:NW�0:TT�TT�50:� TT�100 � TT�100 zN�B: � CS�4 � CS�CS�1 �N�B� �N�B� I�1 � CS �N�B: YS(I)��1 �N�B: � I,XS(I),YS(I):� I,1 �N�B� �N�B� $40000,FP:� 0,XP,YP �N�B� 0,1,7,0,0,0,1 !OCXC��1:TC�0:YC��1:HC�0:� 6,XC,YC:� 6,1,2 AOCC1��(1):C2��(2):C1�0:C2�0 gOC� LV�4 � K�0:� � LV�8 � K�1:� K�2 |O&CXJ�24:YJ�65:HJ�1 �O0C� 5,1,4,1:� 5,XJ,YJ �O:C� �OPF� *************************** �OZF� *** SETUP SPRITE MEMORY *** PdF� *************************** 4PnF� �($D058)��40 � � 65381:� � 40 COLUMN SCREEN VPxF�# 1,0:� RESERVE 8K IN BANK 4 �P�F�! 3,64�13,0,$40000:� SPREICHERBEREICH LEEREN �P�F� $D06C,0:� $D06D,0:� BIT 0-16 TO 0 FOR $40000 �P�F� $D06E,128�4:� SPRPTR16 (BIT7) AND BIT 2 TO 4 FOR $40000 �P�F� :Q|G� **************************************************** uQ�G� *** INIT SPRITES FOR SHARK LEVEL, REDEFINE CHARS *** �Q�G� **************************************************** �Q�G� $40000,$1:� $40001,$10 �Q�G� 0,1,12,0,0,0,1 �Q�G� I�1 � 4 R�G: � $40000�2�I,$7:� $40000�2�I�1,$10 1R�G: � I,1,3,0,0,0,1 7R�G� UR�G� $4000A,$11:� $4000B,$10 jR�G� 5,1,4,1,0,0,1 �R�G� $4000C,$F:� $4000D,$10 �R�G� 6,1,2,0,0,0,1 �R�G� $4000E,$B:� $4000F,$10 �RH� 7,1,7,0,0,0,1 �RH� 1,12 SH�� 190,219,254,181,111,187,238,187,247 /S&H�� 191,91,238,181,127,246,221,239,117 ZS0H�� 192,189,106,255,213,110,245,191,118 ~S:H�� 193,51,204,0,51,204,0,51,204 �SDH�� 194,204,51,0,204,51,0,204,51 �SNH� �SXM� ***************** �SbM� *** READ DATA *** �SlM� ***************** �SvM� I�0 � 8 TwM� DR(I,0):� DR(I,1) TxM� -TM� I�0 � 1215 BT�M� D:� $40040�I,D HT�M� NT�M� xT�M� *********************************** �T�M� *** PLAYER DIRECTION DEFINITION *** �T�M� *********************************** �T�M� 0,0,0,-1,1,-1,1,0,1,1,0,1,-1,1,-1,0,-1,-1 &U N� *********************************** PU!N� *** SUBMARINE SPRITE DEFINITION *** zU"N� *********************************** �U%N� *** RIGHT FRAME 1 �U*N� 0,0,0,0,0,0,0,10,0 �U4N� 0,11,0,0,43,0,0,43,0 �U>N� 0,43,128,128,170,128,160,169,84 VHN� 34,169,85,42,170,149,10,170,170 :VRN� 41,153,154,41,153,154,170,170,171 `V\N� 138,170,175,2,170,172,2,171,252 �VfN� 2,191,240,0,170,128,0,0,0,0 �VzN� *** RIGHT FRAME 2 �V�N� 0,0,0,0,0,0,0,10,0 �V�N� 0,11,0,0,43,0,0,43,0 �V�N� 0,43,128,0,170,128,128,169,84 W�N� 162,169,85,42,170,149,10,170,170 BW�N� 41,153,154,169,153,154,138,170,171 gW�N� 10,170,175,2,170,172,2,171,252 �W�N� 2,191,240,0,170,128,0,0,0,0 �W�N� *** RIGHT FRAME 3 �W�N� 0,0,0,0,0,0,0,10,0 �W�N� 0,11,0,0,43,0,0,43,0 �W�N� 0,43,128,0,170,128,0,169,84 X�N� 2,169,85,170,170,149,10,170,170 DXO� 169,153,154,9,153,154,10,170,171 iXO� 10,170,175,2,170,172,2,171,252 �XO� 2,191,240,0,170,128,0,0,0,0 �X.O� *** LEFT FRAME 1 �X8O� 0,0,0,0,0,0,0,160,0 �XBO� 0,224,0,0,232,0,0,232,0 �XLO� 2,232,0,2,170,2,21,106,10 "YVO� 85,106,136,86,170,168,170,170,160 LY`O� 166,102,104,166,102,104,234,170,170 tYjO� 250,170,162,58,170,128,63,234,128 �YtO� 15,254,128,2,170,0,0,0,0,0 �Y�O� *** LEFT FRAME 2 �Y�O� 0,0,0,0,0,0,0,160,0 �Y�O� 0,224,0,0,232,0,0,232,0 Z�O� 2,232,0,2,170,0,21,106,2 +Z�O� 85,106,138,86,170,168,170,170,160 UZ�O� 166,102,104,166,102,106,234,170,162 }Z�O� 250,170,160,58,170,128,63,234,128 �Z�O� 15,254,128,2,170,0,0,0,0,0 �Z�O� *** LEFT FRAME 3 �Z�O� 0,0,0,0,0,0,0,160,0 �Z�O� 0,224,0,0,232,0,0,232,0 [ P� 2,232,0,2,170,0,21,106,0 4[
P� 85,106,128,86,170,170,170,170,160 ][P� 166,102,106,166,102,96,234,170,160 �[P� 250,170,160,58,170,128,63,234,128 �[(P� 15,254,128,2,170,0,0,0,0,0 �[xP� ******************************* �[yP� *** SHARK SPRITE DEFINITION *** \zP� ******************************* 0\}P� *** RIGHT FRAME 1 L\�P� 0,0,0,2,128,0,2,160,0 m\�P� 0,160,0,128,168,0,128,40,0 �\�P� 160,42,0,160,170,128,162,170,96 �\�P� 42,102,88,42,102,170,170,169,170 �\�P� 162,154,84,128,170,160,128,2,128 �\�P� 0,10,160,0,8,32,0,8,32 ]�P� 0,0,0,0,0,0,0,0,0,0 0]�P� *** RIGHT FRAME 2 L]�P� 0,0,0,2,128,0,2,160,0 k]�P� 0,160,0,32,168,0,32,40,0 �]�P� 32,42,0,32,170,128,34,170,96 �]�P� 42,102,88,42,102,170,42,169,170 �]Q� 34,154,84,32,170,160,32,2,128 �]Q� 0,10,160,0,8,32,0,32,8 ^Q� 0,0,0,0,0,0,0,0,0,0 &^,Q� *** LEFT FRAME 1 C^6Q� 0,0,0,0,2,128,0,10,128 ^^@Q� 0,10,0,0,42,2,0,40,2 �^JQ� 0,168,10,2,170,10,9,170,138 �^TQ� 37,153,168,170,153,168,170,106,170 �^^Q� 21,166,138,10,170,2,2,128,2 �^hQ� 10,160,0,8,32,0,8,32,0 _rQ� 0,0,0,0,0,0,0,0,0,0 _�Q� *** LEFT FRAME 2 6_�Q� 0,0,0,0,2,128,0,10,128 Q_�Q� 0,10,0,0,42,8,0,40,8 q_�Q� 0,168,8,2,170,8,9,170,136 �_�Q� 37,153,168,170,153,168,170,106,168 �_�Q� 21,166,136,10,170,8,2,128,8 �_�Q� 10,160,0,8,32,0,32,8,0 �_�Q� 0,0,0,0,0,0,0,0,0,0 `R� ************************************ I`R� *** NUKE WASTE SPRITE DEFINITION *** t`R� ************************************ �`&R� 0,0,0,0,0,0,0,0,0 �`0R� 0,0,0,0,0,0,0,0,0 �`:R� 0,0,0,0,0,0,0,0,0 �`DR� 0,0,0,0,170,0,2,150,128 �`NR� 2,85,128,2,150,128,2,170,128 !aXR� 3,235,192,2,190,128,2,170,128 EabR� 3,235,192,2,190,128,0,170,0,0 oalR� *********************************** �avR� *** EXPLOSION SPRITE DEFINITION *** �a�R� *********************************** �a�R� *** EXPLOSION FRAME 1 �a�R� 0,0,0,0,0,0,2,0,0 b�R� 0,0,8,0,34,0,2,0,32 ,b�R� 0,136,0,8,0,0,0,2,32 Hb�R� 8,128,0,0,8,136,0,0,0 eb�R� 8,130,0,0,0,0,2,32,136 �b�R� 8,0,0,0,130,32,0,0,0 �b�R� 0,32,128,0,0,0,0,0,0,0 �b�R� *** EXPLOSION FRAME 2 �b�R� 0,0,0,0,0,0,0,0,0 �b�R� 0,0,0,0,2,0,2,0,0 cS� 0,136,0,0,0,0,0,2,32  cS� 8,128,0,0,8,128,0,0,0 =cS� 8,130,0,0,0,0,2,32,128 Uc S� 0,0,0,0,2,0,0,0,0 oc*S� 0,0,0,0,0,0,0,0,0,0 �c>S� *** EXPLOSION FRAME 3 �cHS� 0,0,0,0,0,0,0,0,0 �cRS� 0,0,0,0,0,0,0,0,0 �c\S� 0,0,0,0,0,0,0,2,0 �cfS� 0,128,0,0,8,0,0,0,0 dpS� 0,130,0,0,0,0,0,32,0  dzS� 0,0,0,0,0,0,0,0,0 :d�S� 0,0,0,0,0,0,0,0,0,0 _d�S� ****************************** �d�S� *** CRAB SPRITE DEFINITION *** �d�S� ****************************** �d�S� *** CRAB FRAME 1 �d�S� 0,0,0,0,0,0,8,0,32 �d�S� 42,0,168,34,0,136,34,130,136 e�S� 0,130,0,0,130,0,0,130,0 Ce�S� 10,170,160,170,170,170,170,235,170 me�S� 138,235,162,130,170,130,162,170,138 �e�S� 2,170,128,10,40,160,40,65,40 �e�S� 32,65,8,32,0,8,40,0,40,0 �eT� *** CRAB FRAME 2 �eT� 0,0,0,32,0,8,32,0,8 fT� 40,0,40,10,0,160,2,130,128 f$T� 0,130,0,0,130,0,0,130,0 Ff.T� 10,170,160,42,170,168,42,170,168 nf8T� 42,235,168,34,235,136,162,170,138 �fBT� 2,170,128,10,40,160,8,65,32 �fLT� 8,65,32,8,20,32,40,0,40,0 �f`T� *********************************** gjT� *** JELLYFISH SPRITE DEFINITION *** .gtT� *********************************** Fg~T� *** JELLY FRAME 1 fg�T� 0,0,0,0,170,128,2,170,128 �g�T� 10,170,96,10,186,96,42,171,152 �g�T� 46,170,152,42,234,152,42,174,88 �g�T� 10,170,96,2,170,160,0,170,128 �g�T� 0,170,128,2,136,128,2,40,128 h�T� 2,34,128,10,34,0,8,162,0 3h�T� 8,130,0,0,0,0,0,0,0,0 Kh�T� *** JELLY FRAME 2 kh�T� 0,0,0,0,170,128,2,170,128 �h�T� 10,170,96,11,186,96,42,171,152 �h�T� 42,170,152,42,186,152,42,174,88 �h�T� 10,170,96,2,170,160,0,170,128 �h U� 0,170,128,0,136,128,0,136,128 "i
U� 0,136,128,0,136,128,0,136,128 ?iU� 2,136,32,0,0,0,0,0,0,0 WiU� *** JELLY FRAME 3 wi(U� 0,0,0,0,170,128,2,170,128 �i2U� 10,187,96,10,170,96,42,170,152 �i<U� 42,170,216,42,234,152,42,170,88 �iFU� 10,174,96,2,170,160,2,170,128 
jPU� 2,170,128,2,136,128,0,136,160 +jZU� 0,136,32,0,138,32,0,130,32 GjdU� 0,34,40,0,0,0,0,0,0,0 vj�a� **************************************** �j�a� *** INIT VARIABLES AND DEFINE ARRAYS *** �j�a� **************************************** �j�aXP�100:YP�100:FP�3:FC�0:HP�0:VP�0:GS�0 0k�aCS�1:XW�0:YW�0:SW�0:NW�0:SC�0:C1�0:C2�0:SH�0 Ck�aXJ�0:YJ�0:HJ�0 lk�aLV�1:SP�3:OX�999:XC�0:YC�0:HC�0:TC�0 �k�a� XS(6):� YS(6):� FS(6):� HS(6):� VS(6):� SS(6) �k�a� DR(8,1):� RF(3) �kb�   