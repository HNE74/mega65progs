  
 � ********************** ;  � *** MAZE GENERATOR *** X  � ********************** � ( MW�30:MH�18: � *** MAZE WIDHT AND HEIGHT � 2 � MC(MW�MH�1,7): � *** MAZE CELL ARRAY � 7 � GC(MW�1):PC�0: � *** CELL GROUP ARRAY AND POINTER FOR SIDEWINDER 4!< WL�10:XF�10:YF�10: � *** WALL LENGTH, MAZE SCREEN OFFSET L!d � ***************** d!n � *** MAIN LOOP *** |!x � ***************** �!� � 1030 �!� � 2030 �!� � 1430 �!� � 1030 �!� � 2230 �!� � 1430 �!� � �!�� ***********************  "�� *** INITIALIZE MAZE *** "�� *********************** @"I�0:� Y�0 � MH�1:� X�0 � MW�1 l"MC(I,4)�0:MC(I,5)�0:MC(I,6)�0:MC(I,7)�0 �"MC(I,0)�I�MW:MC(I,1)�I�MW �"MC(I,2)�I�1:MC(I,3)�I�1 �"$� Y�0 � MC(I,0)��1 �".� Y�MH�1 � MC(I,1)��1 �"8� X�0 � MC(I,2)��1 #B� X�MW�1 � MC(I,3)��1 #LI�I�1:� X:� Y  #V� E#�� ****************************** j#�� *** PRINT MAZE CELL STATES *** �#�� ****************************** �#��:� "ADJACENT CELLS" �#�� I�0 � MW�MH�1 $�� �"IDX: ## ";I,� "N:##";MC(I,0),� " S:##";MC(I,1),� " W:##";MC(I,2),� " E:##";MC(I,3) /$�� I:� "CONNECTIONS" C$�� I�0 � MW�MH�1 �$ � �"IDX: ## ";I,� "N:##";MC(I,4),� " S:##";MC(I,5),� " W:##";MC(I,6),� " E:##";MC(I,7) �$
� I �$� �$x� ***************************** �$�� *** DRAW RECT SHAPED MAZE *** %�� ***************************** .%��. 320,200,2:�3 1 P%�I�0:� Y�0 � MH�1:� X�0 � MW�1 �%�� MC(I,4)�0 � � XF�X�WL,YF�Y�WL,XF�X�WL�WL,YF�Y�WL:� *** TOP WALL �%�� MC(I,5)�0 � � XF�X�WL,YF�Y�WL�WL,XF�X�WL�WL,YF�Y�WL�WL:� *** BOTTOM WALL ,&�� MC(I,6)�0 � � XF�X�WL,YF�Y�WL,XF�X�WL,YF�Y�WL�WL:� *** LEFT WALL z&�� MC(I,7)�0 � � XF�X�WL�WL,YF�Y�WL,XF�X�WL�WL,YF�Y�WL�WL:� *** RIGHT WALL �&�I�I�1:� X:� Y �&��� A$ �&��. � �&�� �&�� ***************************** �&�� *** BINARY TREE ALGORITHM *** '�� ***************************** 3'�I�0:� Y�0 � MH�1:� X�0 � MW�1 E'�� X�MW�1 � � Y': � Y�MH�1 � � l':  J��(�(0)�2) �':  � J�0 � MC(I,5)�0 � MC(I,1)���1 � MC(I,5)�1:MC(MC(I,1),4)�1 �' :  � J�1 � MC(I,7)�0 � MC(I,3)���1 � MC(I,7)�1:MC(MC(I,3),6)�1  (*: �:� � 0(4:  MC(I,7)�1:MC(MC(I,3),6)�1:� *** LAST ROW 9(>: � E(H�:� � �(R:  � I�MW�MH�1 � Y�MH�1 � MC(I,5)�1:MC(MC(I,1),4)�1:� *** LAST COLUMN �(\� �(fI�I�1:� X:� Y �(p� �(�� **************************** �(�� *** SIDEWINDER ALGORITHM *** )�� **************************** %)�PC��1:I�0 C)�� Y�0 � MH�1:� X�0 � MW�1 f)�� Y�MH�1 � �:PC�PC�1:GC(PC)�I z)�: � X�MW�1 � � �)�:  J��(�(0)�2) �)�:  � J�0 � � �)�:   C��(�(0)�PC):MC(GC(C),5)�1:MC(MC(GC(C),1),4)�1 �)�:   PC��1 �)	:  �  *	:  � J�1 � � "*	:   MC(I,7)�1:MC(MC(I,3),6)�1 ,*$	:  � :*.	: �:� � p*8	:  C��(�(0)�PC):MC(GC(C),5)�1:MC(MC(GC(C),1),4)�1 }*B	:  PC��1 �*L	: � �*V	�:� � �*`	: � X�MW�1 � MC(I,7)�1:MC(MC(I,3),6)�1 �*j	� �*t	I�I�1:� X: � Y �*~	�   