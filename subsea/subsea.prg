 ' d � 25030:� DECLARE VARS AND ARRAYS I �� 18030:� SETUP SPRITE MEMORY a �� 19830:� READ DATA � � 18330:� INIT SPRITES FOR SHARK LEVEL � �� ***************** � �� *** MAIN LOOP *** � �� ***************** � � 14000:� SHOW INTRO SCREEN !� 4030:� INIT GAME !� 8!$: � 16030:� DRAW SHARK LEVEL ARENA X!.: � 2030:� START LEVEL LOOP e!8� � SP�0 p!B� 1030 �!�� ****************** �!�� *** LEVEL LOOP *** �!�� ****************** �!�� �!�: � 17030:� INIT SHARK LEVEL �!: � 9030:� PLACE WASTE ": � 5030:� START GAME LOOP 0"� � SP�0 � GS�2 J": � 12530:� GAME OVER P" � h"�� ***************** �"�� *** INIT GAME *** �"�� ***************** �"�SP�3:SC�0:LV�1:NW�0:CS�5 �"�� I�1 � 6 �"�: YS(I)��1 �"�: � I,XS(I),YS(I) �"�� �"�� #�� ***************** %#�� *** GAME LOOP *** =#�� ***************** C#�� Q#�: FC�FC�1 n#�: � 6030:� HANDLE SHARKS �#�: � 7030:� CONTROL SUBMARINE �#�: � 8030:� UPDATE SPRITES �#�: � 5330:� DRAW GAME STATE �#�: � 10030:� PLAYER COLLISION CHECK $�: � 9230:� WASTE HANDLING $�� � GS�0 3$�� GS�2 � � 12030 9$ � W$�� *********************** u$�� *** DRAW GAME STATE *** �$�� *********************** �$��T 100:�A 7,0:� 5:� �(LV) �$��A 7,1:� 3:� �(SC) �$��A 35,0:� 7:� �(SP) 
%��A 35,1:� 10:� "    ":�A 35,1:� �(OX) %�� ,%p� ********************* H%z� *** HANDLE SHARKS *** d%�� ********************* s%�� I�1 � CS �%�: � YS(I) ��1 � (XS(I)��5 � XS(I)��339) � YS(I)��1:� I,XS(I),YS(I) �%�: � YS(I) ��1 � � &�:  � YS(I)��200 � VS(I)��(�(�(0)�2)�1):� � YS(I)��70 � VS(I)��(�(0)�2)�1 L&�:  � YS(I) ��1 � � �(FC, SS(I))� 0 � � x&�:   XS(I)�XS(I)�HS(I):YS(I)�YS(I)�VS(I) �&�:   � �(XS(I),4)�0 � � �&�:    � FS(I)�9 � FS(I)�10:� � FS(I)�10 � FS(I)�9 �&�:    � FS(I)�7 � FS(I)�8:� � FS(I)�8 � FS(I)�7 '�:   � '�:  �  '�: �:� � 4':  J��(�(1)�50) O':  � J�0 � NS�I:� 6330 X': � ^'$� d'.� ~'�� ******************* �'�� *** SPAWN SHARK *** �'�� ******************* �'�YS(NS)��(�(1)�110)�90 �'�J��(�(1)�2) �'�� J�0 � � (�: HS(NS)��(�(�(0)�2)�1):FS(NS)�9:XS(NS)�338 '(��:� � R(�: HS(NS)��(�(0)�2)�1:FS(NS)�7:XS(NS)�6 Y(�� r( VS(NS)�0:J��(�(1)�3) �(
� J�0 � � �(: VS(NS)��(�(�(0)�2)�1) �(�:� � J�1 � � �((: VS(NS)��(�(0)�2)�1 �(2� �(<SS(NS)��(�(1)�3)�1 �(F� )X� ************************* .)b� *** CONTROL SUBMARINE *** N)l� ************************* c)vN��(2):HP�0:VP�0 z)�� (N � 15)��0 � � �)�: HP�DR(N � 15,0) �)�: VP�DR(N � 15,1) �)�� �)�� HP��0 � VP��0 � � �)�: � HP��0 � � �)�:  FP�FP�1 *�:  � HP�0 � FP�6 � FP�4:� � HP�0 � FP�3 � FP�1 )*�: �:� � F*�:  FP�FP�1:� FP�4 � FP�1 [*�:  � FP�7 � FP�4 d*�: � |*�: XP�XP�HP:YP�YP�VP �*: � YP�65 � OX�999:YP�65:� � YP�230 � YP�230 �*: � XP�24 � XP�24:� � XP�311 � XP�311 �*�:� � VP�0 � � + : � �(FC,(10�(SW�1)))�0 � � YP�230 � YP�YP�1 %+*� ++4� H+@� ********************** e+J� *** UPDATE SPRITES *** �+T� ********************** �+^�T 0 �+h� $40000,FP:� 0,XP,YP �+r� I�1 � CS �+|: � YS(I)��1 � � �+�:  � $40000�2�I,FS(I) �+�:  � I,XS(I),YS(I) ,�: � ,�� ",�C1��(1):C2��(2) (,�� B,(#� ******************* \,2#� *** PLACE WASTE *** v,<#� ******************* �,F#YW�222 �,P#� �,Z#: XW��(�(1)�296)�24 �,d#: � I�0 � 3 �,n#:  � XW�20��RF(I)�8�24 � XW��RF(I)�8�8�3�24 � XW��1:I�3 �,x#: � -}#: � XW��24 � XW��290 � XW��1 #-�#� � XW���1 9-�#� 7,XW,YW:� 7,1 ?-�#� \-�#� ********************** y-�#� *** WASTE HANDLING *** �-$� ********************** �-$� SW�0 � � �-$: � (C1 � 129)�129 � � �-"$:   � 7,0 �-,$:   SW�1 �-6$: � �-@$�:� � .J$: � YP�65 � XP�160 � XP�200 � � &.T$:  � 9030 ;.^$:  SW�0:SC�SC�50 X.h$:  NW�NW�1:� NW�5 � GS�2 t.i$:  � I�1 � NW:�A 17�I,0 �.j$:   � "��" �.k$:  � �.r$: � �.|$� �.�$� �.'� ****************************** �.'� *** PLAYER COLLISION CHECK *** /$'� ****************************** '/.'� (C1 � 1)�1 � � C/8': � (C1 � 127)�127 � � R/B':  � 11030 [/L': � b/V'� �/`'� (C2 � 1)�1 � YP�100 � � �/j': � 11030 �/t': � SW�1 � SW�0:� 9030 �/~'� �/�'OX�OX�1:� OX��0 � � 11030 �/�'� �/�*� ************************ 0+� *** PLAYER EXPLOSION *** 20+� ************************ O0+� $40000,$C:� $40001,$10 n0 +� I�1 � 30:� 0,1,I:�T 0:� �0*+� $40000,$D:� $40001,$10 �04+� I�1 � 30:� 0,1,I:�T 0:� �0>+� $40000,$E:� $40001,$10 �0H+� I�1 � 30:� 0,1,I:�T 0:� 1\+� 0,0:� I�1 � 30:�T 0:� $1f+SP�SP�1:� SP�0 � GS�3:� GS�1 *1p+� H1�.� *********************** f1�.� ***  LEVEL COMPLETE *** �1�.� *********************** �1�.� I�0 � 7:� I,0:� �1/�A 3,5 :� "���������������������������������" 2/�A 3,6 :� "}                               }" 52/�A 3,7 :� "}  YOU HAVE CLEARED THE LEVEL,  }" h2&/�A 3,8 :� "}                               }" �20/�A 3,9 :� "}            WELL DONE!         }" �2:/�A 3,10:� "}                               }" 3D/�A 3,11:� "} PRESS FIRE BUTTON TO PROCEED. }" 43N/�A 3,12:� "}                               }" g3X/�A 3,13:� "���������������������������������" t3b/N � �(2) �3l/� N��128 � � 12130 �3v/� �3�0� ***************** �3�0� *** GAME OVER *** �3�0� ***************** �3�0� I�0 � 7:� I,0:� $4�0�A 3,5 :� "����������������������������������" W41�A 3,6 :� "}                               }" �41�A 3,7 :� "} YOU HAVE LOST ALL YOUR SUBS   }" �41�A 3,8 :� "}                               }" �4$1�A 3,9 :� "}           GAME OVER!          }" #5.1�A 3,10:� "}                               }" 4531� SH�SC � � m581SH�SC:�A 3,11:� "}        A NEW HIGHSCORE!       }" y5=1�:� � �5@1�A 3,11:� "}   SORRY, NO NEW HIGHSCORE.    }" �5A1� �5B1�A 3,12:� "}                               }" 6L1�A 3,13:� "���������������������������������" &6V1N � �(2) =6`1� N��128 � � 12130 C6j1� c6�6� ************************* �6�6� *** SHOW INTRO SCREEN *** �6�6� ************************* �6�6� �6�6� �6�>� ****************************** �6�>� *** DRAW SHARK LEVEL ARENA *** 7�>� ****************************** $7�>� K7�>� "                ����������" n7�>� "                 �������" �7�>�A 1,0:� 5:� "LEVEL:" �7�>�A 1,1:� 3:� "SCORE:" �7�>�A 30,0:� 7:� "SUBS:" �7�>�A 28,1:� 10:� "OXYGEN:" �7�>� I�0 � 39 8�>: C@&(I,2)�14:T@&(I,2)�85 $8�>: C@&(I,3)�14:T@&(I,3)�73 H8�>: C@&(I,24)�7:T@&(I,24)�81:�230 N8�>� \8�>� I�0 � 3 w8�>: RF(I)��(�(1)�7)�10�I �8?: � I�0 � � �8?:  � RF(I)�RF(I�1)��6 � 16120 �8?: � �8 ?: RH��(�(1)�10)�1 �8*?: � J�1 � RH 94?:  C@&(RF(I),24�J)�7:T@&(RF(I),24�J)�81 69>?:  C@&(RF(I)�1,24�J)�7:T@&(RF(I)�1,24�J)�81 f9H?:  C@&(RF(I)�2,24�J)�7:T@&(RF(I)�2,24�J)�81 p9R?: � J x9\?� I ~9f?� �9hB� ****************************** �9rB� *** INITIALIZE SHARK LEVEL *** �9|B� ****************************** �9�BXP�172:YP�65 :�BGS�0:OX�999:SW�0 #:�B� NW�5 � � ::�B: � CS�6 � CS�CS�1 M:�B: NW�0:LV�LV�1 T:�B� c:�B� I�1 � CS r:�B: YS(I)��1 �:�B: � I,XS(I),YS(I):� I,1 �:�B� �:�B� $40000,FP:� 0,XP,YP �:�B� 0,1,12,0,0,0,1 �:�BC1��(1):C2��(2):C1�0:C2�0 �:�B� ;PF� *************************** 1;ZF� *** SETUP SPRITE MEMORY *** S;dF� *************************** s;nF� 65381: � 40 COLUMN SCREEN �;xF�# 1,0:� RESERVE 8K IN BANK 4 �;�F�! 3,64�13,0,$40000:� SPREICHERBEREICH LEEREN �;�F� $D06C,0:� $D06D,0:� BIT 0-16 TO 0 FOR $40000 8<�F� $D06E,128�4:� SPRPTR16 (BIT7) AND BIT 2 TO 4 FOR $40000 ><�F� h<|G� *********************************** �<�G� *** INIT SPRITES FOR SHARK LEVEL *** �<�G� *********************************** �<�G� $40000,$1:� $40001,$10 �<�G� 0,1,12,0,0,0,1 �<�G� I�1 � 6 '=�G: � $40000�2�I,$7:� $40000�2�I�1,$10 >=�G: � I,1,3,0,0,0,1 D=�G� a=�G� $4000E,$B:� $4000F,$10 v=�G� 7,1,7,0,0,0,1 |=�G� �=XM� ***************** �=bM� *** READ DATA *** �=lM� ***************** �=vM� I�0 � 8 �=wM� DR(I,0):� DR(I,1) �=xM�  >M� I�0 � 895 >�M� D:� $40040�I,D >�M� !>�M� K>�M� *********************************** u>�M� *** PLAYER DIRECTION DEFINITION *** �>�M� *********************************** �>�M� 0,0,0,-1,1,-1,1,0,1,1,0,1,-1,1,-1,0,-1,-1 �> N� *********************************** #?!N� *** SUBMARINE SPRITE DEFINITION *** M?"N� *********************************** e?%N� *** RIGHT FRAME 1 ~?*N� 0,0,0,0,0,0,0,10,0 �?4N� 0,11,0,0,43,0,0,43,0 �?>N� 0,43,128,128,170,128,160,169,84 �?HN� 34,169,85,42,170,149,10,170,170 @RN� 41,153,154,41,153,154,170,170,171 3@\N� 138,170,175,2,170,172,2,171,252 U@fN� 2,191,240,0,170,128,0,0,0,0 m@zN� *** RIGHT FRAME 2 �@�N� 0,0,0,0,0,0,0,10,0 �@�N� 0,11,0,0,43,0,0,43,0 �@�N� 0,43,128,0,170,128,128,169,84 �@�N� 162,169,85,42,170,149,10,170,170 A�N� 41,153,154,169,153,154,138,170,171 :A�N� 10,170,175,2,170,172,2,171,252 \A�N� 2,191,240,0,170,128,0,0,0,0 tA�N� *** RIGHT FRAME 3 �A�N� 0,0,0,0,0,0,0,10,0 �A�N� 0,11,0,0,43,0,0,43,0 �A�N� 0,43,128,0,170,128,0,169,84 �A�N� 2,169,85,170,170,149,10,170,170 BO� 169,153,154,9,153,154,10,170,171 <BO� 10,170,175,2,170,172,2,171,252 ^BO� 2,191,240,0,170,128,0,0,0,0 uB.O� *** LEFT FRAME 1 �B8O� 0,0,0,0,0,0,0,160,0 �BBO� 0,224,0,0,232,0,0,232,0 �BLO� 2,232,0,2,170,2,21,106,10 �BVO� 85,106,136,86,170,168,170,170,160 C`O� 166,102,104,166,102,104,234,170,170 GCjO� 250,170,162,58,170,128,63,234,128 hCtO� 15,254,128,2,170,0,0,0,0,0 C�O� *** LEFT FRAME 2 �C�O� 0,0,0,0,0,0,0,160,0 �C�O� 0,224,0,0,232,0,0,232,0 �C�O� 2,232,0,2,170,0,21,106,2 �C�O� 85,106,138,86,170,168,170,170,160 (D�O� 166,102,104,166,102,106,234,170,162 PD�O� 250,170,160,58,170,128,63,234,128 qD�O� 15,254,128,2,170,0,0,0,0,0 �D�O� *** LEFT FRAME 3 �D�O� 0,0,0,0,0,0,0,160,0 �D�O� 0,224,0,0,232,0,0,232,0 �D P� 2,232,0,2,170,0,21,106,0 E
P� 85,106,128,86,170,170,170,170,160 0EP� 166,102,106,166,102,96,234,170,160 XEP� 250,170,160,58,170,128,63,234,128 yE(P� 15,254,128,2,170,0,0,0,0,0 �ExP� ******************************* �EyP� *** SHARK SPRITE DEFINITION *** �EzP� ******************************* F}P� *** RIGHT FRAME 1 F�P� 0,0,0,2,128,0,2,160,0 @F�P� 0,160,0,128,168,0,128,40,0 fF�P� 160,42,0,160,170,128,162,170,96 �F�P� 42,102,88,42,102,170,170,169,170 �F�P� 162,154,84,128,170,160,128,2,128 �F�P� 0,10,160,0,8,32,0,8,32 �F�P� 0,0,0,0,0,0,0,0,0,0 G�P� *** RIGHT FRAME 2 G�P� 0,0,0,2,128,0,2,160,0 >G�P� 0,160,0,32,168,0,32,40,0 aG�P� 32,42,0,32,170,128,34,170,96 �G�P� 42,102,88,42,102,170,42,169,170 �GQ� 34,154,84,32,170,160,32,2,128 �GQ� 0,10,160,0,8,32,0,32,8 �GQ� 0,0,0,0,0,0,0,0,0,0 �G,Q� *** LEFT FRAME 1 H6Q� 0,0,0,0,2,128,0,10,128 1H@Q� 0,10,0,0,42,2,0,40,2 SHJQ� 0,168,10,2,170,10,9,170,138 |HTQ� 37,153,168,170,153,168,170,106,170 �H^Q� 21,166,138,10,170,2,2,128,2 �HhQ� 10,160,0,8,32,0,8,32,0 �HrQ� 0,0,0,0,0,0,0,0,0,0 �H�Q� *** LEFT FRAME 2 	I�Q� 0,0,0,0,2,128,0,10,128 $I�Q� 0,10,0,0,42,8,0,40,8 DI�Q� 0,168,8,2,170,8,9,170,136 mI�Q� 37,153,168,170,153,168,170,106,168 �I�Q� 21,166,136,10,170,8,2,128,8 �I�Q� 10,160,0,8,32,0,32,8,0 �I�Q� 0,0,0,0,0,0,0,0,0,0 �IR� ************************************ JR� *** NUKE WASTE SPRITE DEFINITION *** GJR� ************************************ _J&R� 0,0,0,0,0,0,0,0,0 wJ0R� 0,0,0,0,0,0,0,0,0 �J:R� 0,0,0,0,0,0,0,0,0 �JDR� 0,0,0,0,170,0,2,150,128 �JNR� 2,85,128,2,150,128,2,170,128 �JXR� 3,235,192,2,190,128,2,170,128 KbR� 3,235,192,2,190,128,0,170,0,0 BKlR� *********************************** lKvR� *** EXPLOSION SPRITE DEFINITION *** �K�R� *********************************** �K�R� *** EXPLOSION FRAME 1 �K�R� 0,0,0,0,0,0,2,0,0 �K�R� 0,0,8,0,34,0,2,0,32 �K�R� 0,136,0,8,0,0,0,2,32 L�R� 8,128,0,0,8,136,0,0,0 8L�R� 8,130,0,0,0,0,2,32,136 SL�R� 8,0,0,0,130,32,0,0,0 pL�R� 0,32,128,0,0,0,0,0,0,0 �L�R� *** EXPLOSION FRAME 2 �L�R� 0,0,0,0,0,0,0,0,0 �L�R� 0,0,0,0,2,0,2,0,0 �LS� 0,136,0,0,0,0,0,2,32 �LS� 8,128,0,0,8,128,0,0,0 MS� 8,130,0,0,0,0,2,32,128 (M S� 0,0,0,0,2,0,0,0,0 BM*S� 0,0,0,0,0,0,0,0,0,0 ^M>S� *** EXPLOSION FRAME 3 vMHS� 0,0,0,0,0,0,0,0,0 �MRS� 0,0,0,0,0,0,0,0,0 �M\S� 0,0,0,0,0,0,0,2,0 �MfS� 0,128,0,0,8,0,0,0,0 �MpS� 0,130,0,0,0,0,0,32,0 �MzS� 0,0,0,0,0,0,0,0,0 N�S� 0,0,0,0,0,0,0,0,0,0 <N�a� **************************************** kN�a� *** INIT VARIABLES AND DEFINE ARRAYS *** �N�a� **************************************** �N�aXP�100:YP�100:FP�3:FC�0:HP�0:VP�0:GS�0 �N�aCS�1:XW�0:YW�0:SW�0:NW�0:SC�0:C1�0:C2�0:SH�0 O�aLV�1:SP�3:OX�999 ?O�a� XS(6):� YS(6):� FS(6):� HS(6):� VS(6):� SS(6) UO�a� DR(8,1):� RF(3) [Ob�   