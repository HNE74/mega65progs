  
 � ********************** ;  � *** MAZE GENERATOR *** X  � ********************** � ( MW�10:MH�10: � *** MAZE WIDHT AND HEIGHT � 2 � MC(MW�MH�1,7): � *** MAZE CELL ARRAY � 7 � GC(MW�1):PC�0: � *** CELL GROUP ARRAY AND POINTER FOR SIDEWINDER 4!< WL�10:XF�10:YF�10: � *** WALL LENGTH, MAZE SCREEN OFFSET L!d � ***************** d!n � *** MAIN LOOP *** |!x � ***************** �!� � 1030 �!� � 2230 �!� � 1430 �!� � �!�� *********************** �!�� *** INITIALIZE MAZE *** �!�� *********************** "I�0:� Y�0 � MH�1:� X�0 � MW�1 K"MC(I,4)�0:MC(I,5)�0:MC(I,6)�0:MC(I,7)�0 i"MC(I,0)�I�MW:MC(I,1)�I�MW �"MC(I,2)�I�1:MC(I,3)�I�1 �"$� Y�0 � MC(I,0)��1 �".� Y�MH�1 � MC(I,1)��1 �"8� X�0 � MC(I,2)��1 �"B� X�MW�1 � MC(I,3)��1 �"LI�I�1:� X:� Y �"V� $#�� ****************************** I#�� *** PRINT MAZE CELL STATES *** n#�� ****************************** �#��:� "ADJACENT CELLS" �#�� I�0 � MW�MH�1 �#�� �"IDX: ## ";I,� "N:##";MC(I,0),� " S:##";MC(I,1),� " W:##";MC(I,2),� " E:##";MC(I,3) $�� I:� "CONNECTIONS" "$�� I�0 � MW�MH�1 }$ � �"IDX: ## ";I,� "N:##";MC(I,4),� " S:##";MC(I,5),� " W:##";MC(I,6),� " E:##";MC(I,7) �$
� I �$� �$x� ***************************** �$�� *** DRAW RECT SHAPED MAZE *** �$�� ***************************** %��. 320,200,2:�3 1 /%�I�0:� Y�0 � MH�1:� X�0 � MW�1 u%�� MC(I,4)�0 � � XF�X�WL,YF�Y�WL,XF�X�WL�WL,YF�Y�WL:� *** TOP WALL �%�� MC(I,5)�0 � � XF�X�WL,YF�Y�WL�WL,XF�X�WL�WL,YF�Y�WL�WL:� *** BOTTOM WALL &�� MC(I,6)�0 � � XF�X�WL,YF�Y�WL,XF�X�WL,YF�Y�WL�WL:� *** LEFT WALL Y&�� MC(I,7)�0 � � XF�X�WL�WL,YF�Y�WL,XF�X�WL�WL,YF�Y�WL�WL:� *** RIGHT WALL k&�I�I�1:� X:� Y u&��� A$ ~&��. � �&�� �&�� ***************************** �&�� *** BINARY TREE ALGORITHM *** �&�� ***************************** '�I�0:� Y�0 � MH�1:� X�0 � MW�1 $'�� X�MW�1 � � 8': � Y�MH�1 � � K':  J��(�(0)�2) �':  � J�0 � MC(I,5)�0 � MC(I,1)���1 � MC(I,5)�1:MC(MC(I,1),4)�1 �' :  � J�1 � MC(I,7)�0 � MC(I,3)���1 � MC(I,7)�1:MC(MC(I,3),6)�1 �'*: �:� � (4:  MC(I,7)�1:MC(MC(I,3),6)�1:� *** LAST ROW (>: � $(H�:� � n(R:  � I�MW�MH�1 � Y�MH�1 � MC(I,5)�1:MC(MC(I,1),4)�1:� *** LAST COLUMN u(\� �(fI�I�1:� X:� Y �(p� �(�� **************************** �(�� *** SIDEWINDER ALGORITHM *** �(�� **************************** )�PC��1:I�0 ")�� Y�0 � MH�1:� X�0 � MW�1 4)�� Y�MH�1 � � H)�: � X�MW�1 � � [)�:  J��(�(0)�2) m)�:  � J�0 � � �)�:   PC�PC�1:GC(PC)�I �)�:   C��(�(0)�PC):MC(GC(C),5)�1:MC(MC(GC(C),1),4)�1 �)�:   PC��1 �)�:  � �)�:  � J�1 � � 	*�:   MC(I,7)�1:MC(MC(I,3),6)�1 "*�:   PC�PC�1:GC(PC)�I ,*�:  � :*�: �:� � R* 	:  PC�PC�1:GC(PC)�I �*	:  C��(�(0)�PC):MC(GC(C),5)�1:MC(MC(GC(C),1),4)�1 �*	:  PC��1 �*	: � �*	� �*`	I�I�1:� X: � Y �*j	�   