  
 � ********************** ;  � *** MAZE GENERATOR *** X  � ********************** � ( MW�18:MH�18: � *** MAZE WIDHT AND HEIGHT � 2 � MC(MW�MH�1,7): � *** MAZE CELL ARRAY � < WL�10:XF�10:YF�10: � *** WALL LENGTH, MAZE SCREEN OFFSET !d � ***************** !n � *** MAIN LOOP *** 5!x � ***************** N!� � K�3 � 18:MW�K:MH�K Y!� � 1030 d!� � 2030 o!� � 1430 w!� � K }!� � �!�� *********************** �!�� *** INITIALIZE MAZE *** �!�� *********************** �!I�0:� Y�0 � MH�1:� X�0 � MW�1 %"MC(I,4)�0:MC(I,5)�0:MC(I,6)�0:MC(I,7)�0 C"MC(I,0)�I�MW:MC(I,1)�I�MW _"MC(I,2)�I�1:MC(I,3)�I�1 v"$� Y�0 � MC(I,0)��1 �".� Y�MH�1 � MC(I,1)��1 �"8� X�0 � MC(I,2)��1 �"B� X�MW�1 � MC(I,3)��1 �"LI�I�1:� X:� Y �"V� �"�� ****************************** ##�� *** PRINT MAZE CELL STATES *** H#�� ****************************** a#��:� "ADJACENT CELLS" u#�� I�0 � MW�MH�1 �#�� �"IDX: ## ";I,� "N:##";MC(I,0),� " S:##";MC(I,1),� " W:##";MC(I,2),� " E:##";MC(I,3) �#�� I:� "CONNECTIONS" �#�� I�0 � MW�MH�1 W$ � �"IDX: ## ";I,� "N:##";MC(I,4),� " S:##";MC(I,5),� " W:##";MC(I,6),� " E:##";MC(I,7) _$
� I e$� �$x� ***************************** �$�� *** DRAW RECT SHAPED MAZE *** �$�� ***************************** �$��. 320,200,2:�3 1 	%�I�0:� Y�0 � MH�1:� X�0 � MW�1 O%�� MC(I,4)�0 � � XF�X�WL,YF�Y�WL,XF�X�WL�WL,YF�Y�WL:� *** TOP WALL �%�� MC(I,5)�0 � � XF�X�WL,YF�Y�WL�WL,XF�X�WL�WL,YF�Y�WL�WL:� *** BOTTOM WALL �%�� MC(I,6)�0 � � XF�X�WL,YF�Y�WL,XF�X�WL,YF�Y�WL�WL:� *** LEFT WALL 3&�� MC(I,7)�0 � � XF�X�WL�WL,YF�Y�WL,XF�X�WL�WL,YF�Y�WL�WL:� *** RIGHT WALL E&�I�I�1:� X:� Y O&��� A$ X&��. � ^&�� }&�� ************************ �&�� *** BINARY TREE MAZE *** �&�� ************************ �&�I�0:� Y�0 � MH�1:� X�0 � MW�1 �&�J��(�(0)�2) �&�� X�MW�1 � � ' : � Y�MH�1 � � V':  � J�0 � MC(I,5)�0 � MC(I,1)���1 � MC(I,5)�1:MC(MC(I,1),4)�1 �':  � J�1 � MC(I,7)�0 � MC(I,3)���1 � MC(I,7)�1:MC(MC(I,3),6)�1 �': �:� � �':  MC(I,7)�1:MC(MC(I,3),6)�1:� *** LAST ROW �': � �'�:� � 6( :  � I�MW�MH�1 � Y�MH�1 � MC(I,5)�1:MC(MC(I,1),4)�1:� *** LAST COLUMN =(*� O(4I�I�1:� X:� Y U(>�   