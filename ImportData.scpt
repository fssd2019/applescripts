FasdUAS 1.101.10   ��   ��    k             l      ��  ��   4.tell application "Microsoft Excel"	set rng to range "AF3:AJ197"		my scan_error(rng) --??????range ??????????????????????Excel??	--set x to value of rng	set x to string value of rng --????????????????????????????		--???list???x?string????string?????	my store2txt(x, "tmp014.txt", "|")end tell     � 	 	\  t e l l   a p p l i c a t i o n   " M i c r o s o f t   E x c e l "  	 s e t   r n g   t o   r a n g e   " A F 3 : A J 1 9 7 "  	  	 m y   s c a n _ e r r o r ( r n g )   - -bkc��=�F�<�� r a n g e  P<f/T&g	���|{W�v�epcn�T&R�KP<~�Sؑ�O[��� E x c e l])n�  	 - - s e t   x   t o   v a l u e   o f   r n g  	 s e t   x   t o   s t r i n g   v a l u e   o f   r n g   - -epP<|{Og	y�[f��ep�bmnp�ep��v�c�N�S��v�[W{&|{Yt  	  	 - -�؋�f/ l i s t�Y�g� xf/ s t r i n g�ROb� s t r i n gc	[W{&��Q�  	 m y   s t o r e 2 t x t ( x ,   " t m p 0 1 4 . t x t " ,   " | " )  e n d   t e l l    
  
 l     ��������  ��  ��        l      ��  ��   _Y
-- ME part ????????tell application "Microsoft Excel"	set rng to cells of range "D4:D70"	--my scan_error(rng) --??????range ??????????????????????Excel??	--set x to value of rng	--set x to string value of rng --????????????????????????????			set f0 to "=IF(RC[8]>RC[1]*1.01,\"high\",IF(RC[8]<RC[1]*1.01,\"OK\",\"low\"))"	set dbname to "lxk"	repeat with r in rng		set v to string value of r		if v � "" then			set s to "select unitprice from part_price where partno_id=(select id from ict_part where partno=\"" & v & "\")"			--set s to "select unitprice from part_price where partno_id=(select id from ict_part where partno='" & v & "')" 			--> ??????????????????do shell script ???????? -e ?? ?��??????????????			--> do shell script "/usr/local/mysql/bin/mysql --defaults-extra-file=/usr/local/mysql/my.cnf -D lxk -N -e 'select unitprice from part_price where partno_id=(select id from ict_part where partno='010-101H-0025')'"			set d to readfromdb(dbname, s) of me			set c to get offset r column offset -2			set value of c to d as string					end if										--set d to paragraphs of (do shell script "/usr/local/mysql/bin/mysql --defaults-extra-file=/usr/local/mysql/my.cnf -D " & dbname & " -N -e '" & s & "'")			end repeat		set rng to range "D4:D70"	set rng to get offset rng column offset -3	set formula r1c1 of rng to f0	end tell
     �  
� 
 - -   M E   p a r t  e�s��'�g�'NKR  t e l l   a p p l i c a t i o n   " M i c r o s o f t   E x c e l "  	 s e t   r n g   t o   c e l l s   o f   r a n g e   " D 4 : D 7 0 "  	 - - m y   s c a n _ e r r o r ( r n g )   - -bkc��=�F�<�� r a n g e  P<f/T&g	���|{W�v�epcn�T&R�KP<~�Sؑ�O[��� E x c e l])n�  	 - - s e t   x   t o   v a l u e   o f   r n g  	 - - s e t   x   t o   s t r i n g   v a l u e   o f   r n g   - -epP<|{Og	y�[f��ep�bmnp�ep��v�c�N�S��v�[W{&|{Yt 	  	  	 s e t   f 0   t o   " = I F ( R C [ 8 ] > R C [ 1 ] * 1 . 0 1 , \ " h i g h \ " , I F ( R C [ 8 ] < R C [ 1 ] * 1 . 0 1 , \ " O K \ " , \ " l o w \ " ) ) "  	 s e t   d b n a m e   t o   " l x k "  	 r e p e a t   w i t h   r   i n   r n g  	 	 s e t   v   t o   s t r i n g   v a l u e   o f   r  	 	 i f   v  "`   " "   t h e n  	 	 	 s e t   s   t o   " s e l e c t   u n i t p r i c e   f r o m   p a r t _ p r i c e   w h e r e   p a r t n o _ i d = ( s e l e c t   i d   f r o m   i c t _ p a r t   w h e r e   p a r t n o = \ " "   &   v   &   " \ " ) "  	 	 	 - - s e t   s   t o   " s e l e c t   u n i t p r i c e   f r o m   p a r t _ p r i c e   w h e r e   p a r t n o _ i d = ( s e l e c t   i d   f r o m   i c t _ p a r t   w h e r e   p a r t n o = ' "   &   v   &   " ' ) "    	 	 	 - - >  ��y�Sؑ�u(SU_S�v�e�_OQ���S�V�� d o   s h e l l   s c r i p t  N-epcn^���S�S�ep   - e  T�b  f/  �O��z^�e�lՋ�R+�� ���lNI  	 	 	 - - >   d o   s h e l l   s c r i p t   " / u s r / l o c a l / m y s q l / b i n / m y s q l   - - d e f a u l t s - e x t r a - f i l e = / u s r / l o c a l / m y s q l / m y . c n f   - D   l x k   - N   - e   ' s e l e c t   u n i t p r i c e   f r o m   p a r t _ p r i c e   w h e r e   p a r t n o _ i d = ( s e l e c t   i d   f r o m   i c t _ p a r t   w h e r e   p a r t n o = ' 0 1 0 - 1 0 1 H - 0 0 2 5 ' ) ' "  	 	 	 s e t   d   t o   r e a d f r o m d b ( d b n a m e ,   s )   o f   m e  	 	 	 s e t   c   t o   g e t   o f f s e t   r   c o l u m n   o f f s e t   - 2  	 	 	 s e t   v a l u e   o f   c   t o   d   a s   s t r i n g  	 	 	  	 	 e n d   i f  	 	  	 	  	 	  	 	  	 	 - - s e t   d   t o   p a r a g r a p h s   o f   ( d o   s h e l l   s c r i p t   " / u s r / l o c a l / m y s q l / b i n / m y s q l   - - d e f a u l t s - e x t r a - f i l e = / u s r / l o c a l / m y s q l / m y . c n f   - D   "   &   d b n a m e   &   "   - N   - e   ' "   &   s   &   " ' " )  	 	  	 e n d   r e p e a t  	  	 s e t   r n g   t o   r a n g e   " D 4 : D 7 0 "  	 s e t   r n g   t o   g e t   o f f s e t   r n g   c o l u m n   o f f s e t   - 3  	 s e t   f o r m u l a   r 1 c 1   o f   r n g   t o   f 0  	  e n d   t e l l  
      l     ��������  ��  ��        l     ��  ��    # EE part ?????????????????????     �   : E E   p a r t  � ��fxns��'�g�'�V�N:T+g	N$y�NTv�N�h<      l     ��������  ��  ��        l    ~ ����  O     ~    k    }      !   l   �� " #��   " ( "set a to "F4:F213" --range address    # � $ $ D s e t   a   t o   " F 4 : F 2 1 3 "   - - r a n g e   a d d r e s s !  % & % r     ' ( ' m     ) ) � * *  I 1 4 : I 2 2 5 ( o      ���� 0 a   &  + , + r     - . - n     / 0 / 2   ��
�� 
ccel 0 4    �� 1
�� 
X117 1 o   
 ���� 0 a   . o      ���� 0 rng   ,  2 3 2 l   �� 4 5��   4 D >my scan_error(rng) --??????range ??????????????????????Excel??    5 � 6 6 | m y   s c a n _ e r r o r ( r n g )   - -bkc��=�F�<�� r a n g e  P<f/T&g	���|{W�v�epcn�T&R�KP<~�Sؑ�O[��� E x c e l])n� 3  7 8 7 l   �� 9 :��   9  set x to value of rng    : � ; ; * s e t   x   t o   v a l u e   o f   r n g 8  < = < l   �� > ?��   > B <set x to string value of rng --????????????????????????????	    ? � @ @ x s e t   x   t o   s t r i n g   v a l u e   o f   r n g   - -epP<|{Og	y�[f��ep�bmnp�ep��v�c�N�S��v�[W{&|{Yt 	 =  A B A l   ��������  ��  ��   B  C D C l   ��������  ��  ��   D  E F E r     G H G m     I I � J J  l x k H o      ���� 
0 dbname   F  K L K X    u M�� N M k   % p O O  P Q P r   % * R S R n   % ( T U T 1   & (��
�� 
XRgt U o   % &���� 0 r   S o      ���� 0 v   Q  V W V Z   + n X Y���� X >   + . Z [ Z o   + ,���� 0 v   [ m   , - \ \ � ] ]   Y k   1 j ^ ^  _ ` _ l  1 1�� a b��   a # EE part tradetype: 1 ??? 0 ??    b � c c : E E   p a r t   t r a d e t y p e :   1  g�'�   0  s��' `  d e d l  1 1�� f g��   f � �set s to "select unitprice,created from part_price where mpn=(select id from supplier_part where partno='EMHS250ARA102MKE0S-CAR') and tradetype=1"    g � h h$ s e t   s   t o   " s e l e c t   u n i t p r i c e , c r e a t e d   f r o m   p a r t _ p r i c e   w h e r e   m p n = ( s e l e c t   i d   f r o m   s u p p l i e r _ p a r t   w h e r e   p a r t n o = ' E M H S 2 5 0 A R A 1 0 2 M K E 0 S - C A R ' )   a n d   t r a d e t y p e = 1 " e  i j i l  1 1�� k l��   k  By MPN    l � m m  B y   M P N j  n o n r   1 : p q p b   1 6 r s r b   1 4 t u t m   1 2 v v � w w � s e l e c t   u n i t p r i c e   f r o m   p a r t _ p r i c e   w h e r e   m p n = ( s e l e c t   i d   f r o m   s u p p l i e r _ p a r t   w h e r e   p a r t n o = " u o   2 3���� 0 v   s m   4 5 x x � y y � " )   a n d   t r a d e t y p e = 1   a n d   n o t e s = " M i c h i g a n   D V T   1 K   s e t s   M a t e r i a l   D e m a n d -   2 3 0 5 2 3   K a t h e r i n e " q o      ���� 0 s   o  z { z l  ; ;�� | }��   |  return MPN id    } � ~ ~  r e t u r n   M P N   i d {   �  l  ; ;�� � ���   � H Bset s to "select id from supplier_part where partno=\"" & v & "\""    � � � � � s e t   s   t o   " s e l e c t   i d   f r o m   s u p p l i e r _ p a r t   w h e r e   p a r t n o = \ " "   &   v   &   " \ " " �  � � � l  ; ;��������  ��  ��   �  � � � l  ; ;�� � ���   �  By ICT_Part    � � � �  B y   I C T _ P a r t �  � � � l  ; ;�� � ���   � � �set s to "select unitprice from part_price where partno_id=(select id from ict_part where partno=\"" & v & "\") and tradetype=1"    � � � �  s e t   s   t o   " s e l e c t   u n i t p r i c e   f r o m   p a r t _ p r i c e   w h e r e   p a r t n o _ i d = ( s e l e c t   i d   f r o m   i c t _ p a r t   w h e r e   p a r t n o = \ " "   &   v   &   " \ " )   a n d   t r a d e t y p e = 1 " �  � � � l  ; ;�� � ���   �  return ICTPart_id    � � � � " r e t u r n   I C T P a r t _ i d �  � � � l  ; ;�� � ���   � C =set s to "select id from ict_part where partno=\"" & v & "\""    � � � � z s e t   s   t o   " s e l e c t   i d   f r o m   i c t _ p a r t   w h e r e   p a r t n o = \ " "   &   v   &   " \ " " �  � � � l  ; ;�� � ���   � u oset s to "select unitprice from part_price where partno_id=(select id from ict_part where partno='" & v & "')"     � � � � � s e t   s   t o   " s e l e c t   u n i t p r i c e   f r o m   p a r t _ p r i c e   w h e r e   p a r t n o _ i d = ( s e l e c t   i d   f r o m   i c t _ p a r t   w h e r e   p a r t n o = ' "   &   v   &   " ' ) "   �  � � � l  ; ;�� � ���   � J D> ??????????????????do shell script ???????? -e ?? ?��??????????????    � � � � � >  ��y�Sؑ�u(SU_S�v�e�_OQ���S�V�� d o   s h e l l   s c r i p t  N-epcn^���S�S�ep   - e  T�b  f/  �O��z^�e�lՋ�R+�� ���lNI �  � � � l  ; ;�� � ���   � � �> do shell script "/usr/local/mysql/bin/mysql --defaults-extra-file=/usr/local/mysql/my.cnf -D lxk -N -e 'select unitprice from part_price where partno_id=(select id from ict_part where partno='010-101H-0025')'"    � � � �� >   d o   s h e l l   s c r i p t   " / u s r / l o c a l / m y s q l / b i n / m y s q l   - - d e f a u l t s - e x t r a - f i l e = / u s r / l o c a l / m y s q l / m y . c n f   - D   l x k   - N   - e   ' s e l e c t   u n i t p r i c e   f r o m   p a r t _ p r i c e   w h e r e   p a r t n o _ i d = ( s e l e c t   i d   f r o m   i c t _ p a r t   w h e r e   p a r t n o = ' 0 1 0 - 1 0 1 H - 0 0 2 5 ' ) ' " �  � � � r   ; H � � � n   ; D � � � I   < D�� ����� 0 
readfromdb   �  � � � o   < =���� 
0 dbname   �  ��� � o   = @���� 0 s  ��  ��   �  f   ; < � o      ���� 0 d   �  � � � r   I X � � � I  I T�� � �
�� .sTBL1595null���     X117 � o   I J���� 0 r   � �� ���
�� 
5189 � m   M P���� ��   � o      ���� 0 c   �  � � � l  Y h � � � � r   Y h � � � c   Y ` � � � o   Y \���� 0 d   � m   \ _��
�� 
TEXT � n       � � � 1   c g��
�� 
DPVu � o   ` c���� 0 c   �   ?{{}} ??list?????    � � � � $  \ { { } }  N�~� l i s t�lN:[W{&N2 �  ��� � l  i i��������  ��  ��  ��  ��  ��   W  � � � l  o o��������  ��  ��   �  � � � l  o o��������  ��  ��   �  � � � l  o o��������  ��  ��   �  � � � l  o o�� � ���   � � �set d to paragraphs of (do shell script "/usr/local/mysql/bin/mysql --defaults-extra-file=/usr/local/mysql/my.cnf -D " & dbname & " -N -e '" & s & "'")    � � � �. s e t   d   t o   p a r a g r a p h s   o f   ( d o   s h e l l   s c r i p t   " / u s r / l o c a l / m y s q l / b i n / m y s q l   - - d e f a u l t s - e x t r a - f i l e = / u s r / l o c a l / m y s q l / m y . c n f   - D   "   &   d b n a m e   &   "   - N   - e   ' "   &   s   &   " ' " ) �  ��� � l  o o��������  ��  ��  ��  �� 0 r   N o    ���� 0 rng   L  � � � l  v v��������  ��  ��   �  � � � l   v v�� � ���   �82	--??????????	set coloffset1 to "-5"	set coloffset2 to "-1"	set f0 to "=IF(RC[" & coloffset1 & "]>RC[" & coloffset2 & "]*1.01,\"high\",IF(RC[" & coloffset1 & "]<RC[" & coloffset2 & "]*1.01,\"OK\",\"low\"))"	set rng to range a	set rng to get offset rng column offset 9	set formula r1c1 of rng to f0	    � � � �d  	 - -Q�QeN�h<[�k�R$e�Ql_  	 s e t   c o l o f f s e t 1   t o   " - 5 "  	 s e t   c o l o f f s e t 2   t o   " - 1 "  	 s e t   f 0   t o   " = I F ( R C [ "   &   c o l o f f s e t 1   &   " ] > R C [ "   &   c o l o f f s e t 2   &   " ] * 1 . 0 1 , \ " h i g h \ " , I F ( R C [ "   &   c o l o f f s e t 1   &   " ] < R C [ "   &   c o l o f f s e t 2   &   " ] * 1 . 0 1 , \ " O K \ " , \ " l o w \ " ) ) "  	 s e t   r n g   t o   r a n g e   a  	 s e t   r n g   t o   g e t   o f f s e t   r n g   c o l u m n   o f f s e t   9  	 s e t   f o r m u l a   r 1 c 1   o f   r n g   t o   f 0  	 �  � � � l  v v��������  ��  ��   �  ��� � I  v }�� ���
�� .sysonotfnull��� ��� TEXT � m   v y � � � � � 6 D a t a   c h e c k i n g   i s   c o m p l e t e d !��  ��    m      � ��                                                                                  XCEL  alis    F  Macintosh HD                   BD ����Microsoft Excel.app                                            ����            ����  
 cu             Applications  #/:Applications:Microsoft Excel.app/   (  M i c r o s o f t   E x c e l . a p p    M a c i n t o s h   H D   Applications/Microsoft Excel.app  / ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   ���
tmp001.txt --supplier
tmp002.txt --contact
tmp003.txt--supplier's contact
tmp004.txt--supplier's address

tmp005.txt--R1 VA cost update_20230111 ME
tmp006.txt--R1 VA cost update_20230111 EE
tmp007.txt--R1 VA cost update_20230111 EE MPN
tmp008.txt--R1 VA cost update_20230111 EE spot price
tmp009.txt--R1 VA cost update_20230111 EE future price
tmp010.txt--R1 VA cost update_20230111 ME price
tmp011.txt--Michigan DVT 1K sets Material Demand- 230523 Katherine EE
tmp012.txt--Michigan DVT 1K sets Material Demand- 230523 Katherine EE MPN
tmp013.txt--Michigan DVT 1K sets Material Demand- 230523 Katherine EE MPN extra (
??????complete MPN)
tmp014.txt--Michigan DVT 1K sets Material Demand- 230523 Katherine EE future price    � � � �� 
 t m p 0 0 1 . t x t   - - s u p p l i e r 
 t m p 0 0 2 . t x t   - - c o n t a c t 
 t m p 0 0 3 . t x t - - s u p p l i e r ' s   c o n t a c t 
 t m p 0 0 4 . t x t - - s u p p l i e r ' s   a d d r e s s 
 
 t m p 0 0 5 . t x t - - R 1   V A   c o s t   u p d a t e _ 2 0 2 3 0 1 1 1   M E 
 t m p 0 0 6 . t x t - - R 1   V A   c o s t   u p d a t e _ 2 0 2 3 0 1 1 1   E E 
 t m p 0 0 7 . t x t - - R 1   V A   c o s t   u p d a t e _ 2 0 2 3 0 1 1 1   E E   M P N 
 t m p 0 0 8 . t x t - - R 1   V A   c o s t   u p d a t e _ 2 0 2 3 0 1 1 1   E E   s p o t   p r i c e 
 t m p 0 0 9 . t x t - - R 1   V A   c o s t   u p d a t e _ 2 0 2 3 0 1 1 1   E E   f u t u r e   p r i c e 
 t m p 0 1 0 . t x t - - R 1   V A   c o s t   u p d a t e _ 2 0 2 3 0 1 1 1   M E   p r i c e 
 t m p 0 1 1 . t x t - - M i c h i g a n   D V T   1 K   s e t s   M a t e r i a l   D e m a n d -   2 3 0 5 2 3   K a t h e r i n e   E E 
 t m p 0 1 2 . t x t - - M i c h i g a n   D V T   1 K   s e t s   M a t e r i a l   D e m a n d -   2 3 0 5 2 3   K a t h e r i n e   E E   M P N 
 t m p 0 1 3 . t x t - - M i c h i g a n   D V T   1 K   s e t s   M a t e r i a l   D e m a n d -   2 3 0 5 2 3   K a t h e r i n e   E E   M P N   e x t r a   ( 
�eQEe�e�S�N: c o m p l e t e   M P N ) 
 t m p 0 1 4 . t x t - - M i c h i g a n   D V T   1 K   s e t s   M a t e r i a l   D e m a n d -   2 3 0 5 2 3   K a t h e r i n e   E E   f u t u r e   p r i c e  �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 ,###########Start of Importing###############    � � � � X # # # # # # # # # # # S t a r t   o f   I m p o r t i n g # # # # # # # # # # # # # # # �  � � � l      �� � ���   �TN--????????????????set input_file to "tmp014.txt"set home_path to path to home folder as Unicode textset data_file to input_fileset sql_import_file to (home_path & data_file)--set fields to "partno,mfg,created"--set fields to "code,name,created"--set fields to "name,phone,email,private_id,created"--set fields to "supplierid,infotype,description,created"--set fields to "partno,description,uom,created"--set fields to "partno,description,created"--set fields to "partno,category1,created"--set fields to "partno,description,category1,created"set fields to "partno_id,mpn,moq,leadtime,unitprice,created"--set fields to "partno_id,unitprice,created"--import2db(sql_import_file, "lxk", "ict_part", "|", fields)--import2db(sql_import_file, "lxk", "supplier", "|", fields)--import2db(sql_import_file, "lxk", "contacts", "|", fields)--import2db(sql_import_file, "lxk", "supplierinfo", "|", fields)--import2db(sql_import_file, "lxk", "ict_part", "|", fields)--import2db(sql_import_file, "lxk", "supplier_part", "|", fields)import2db(sql_import_file, "lxk", "part_price", "|", fields)    � � � ��  - -��epcne�N��q6Tb�epcn[XQeepcn^�  s e t   i n p u t _ f i l e   t o   " t m p 0 1 4 . t x t "  s e t   h o m e _ p a t h   t o   p a t h   t o   h o m e   f o l d e r   a s   U n i c o d e   t e x t  s e t   d a t a _ f i l e   t o   i n p u t _ f i l e   s e t   s q l _ i m p o r t _ f i l e   t o   ( h o m e _ p a t h   &   d a t a _ f i l e )  - - s e t   f i e l d s   t o   " p a r t n o , m f g , c r e a t e d "  - - s e t   f i e l d s   t o   " c o d e , n a m e , c r e a t e d "  - - s e t   f i e l d s   t o   " n a m e , p h o n e , e m a i l , p r i v a t e _ i d , c r e a t e d "  - - s e t   f i e l d s   t o   " s u p p l i e r i d , i n f o t y p e , d e s c r i p t i o n , c r e a t e d "  - - s e t   f i e l d s   t o   " p a r t n o , d e s c r i p t i o n , u o m , c r e a t e d "  - - s e t   f i e l d s   t o   " p a r t n o , d e s c r i p t i o n , c r e a t e d "  - - s e t   f i e l d s   t o   " p a r t n o , c a t e g o r y 1 , c r e a t e d "  - - s e t   f i e l d s   t o   " p a r t n o , d e s c r i p t i o n , c a t e g o r y 1 , c r e a t e d "  s e t   f i e l d s   t o   " p a r t n o _ i d , m p n , m o q , l e a d t i m e , u n i t p r i c e , c r e a t e d "  - - s e t   f i e l d s   t o   " p a r t n o _ i d , u n i t p r i c e , c r e a t e d "   - - i m p o r t 2 d b ( s q l _ i m p o r t _ f i l e ,   " l x k " ,   " i c t _ p a r t " ,   " | " ,   f i e l d s )  - - i m p o r t 2 d b ( s q l _ i m p o r t _ f i l e ,   " l x k " ,   " s u p p l i e r " ,   " | " ,   f i e l d s )  - - i m p o r t 2 d b ( s q l _ i m p o r t _ f i l e ,   " l x k " ,   " c o n t a c t s " ,   " | " ,   f i e l d s )  - - i m p o r t 2 d b ( s q l _ i m p o r t _ f i l e ,   " l x k " ,   " s u p p l i e r i n f o " ,   " | " ,   f i e l d s )  - - i m p o r t 2 d b ( s q l _ i m p o r t _ f i l e ,   " l x k " ,   " i c t _ p a r t " ,   " | " ,   f i e l d s )  - - i m p o r t 2 d b ( s q l _ i m p o r t _ f i l e ,   " l x k " ,   " s u p p l i e r _ p a r t " ,   " | " ,   f i e l d s )  i m p o r t 2 d b ( s q l _ i m p o r t _ f i l e ,   " l x k " ,   " p a r t _ p r i c e " ,   " | " ,   f i e l d s )   �  � � � l     �� � ���   � ( "part_price ?????????????????46????    � � � � D p a r t _ p r i c e  k�k!c�Qee���_U�Og	��R�^�S����c� 4 6N*��� �  � � � l     �� � ��   � 2 ,#######End o'f Importing####################     � X # # # # # # # E n d   o ' f   I m p o r t i n g # # # # # # # # # # # # # # # # # # # # �  l     ��������  ��  ��    i      I      ������ 0 	import2db   	
	 o      ���� 0 sql_import_file  
  o      ���� 0 db_name    o      ���� 0 tbl_name    o      ���� 0 	delimiter   �� o      ���� 
0 fields  ��  ��   k       l     ��   , &sql_import_file: string, ?????????????    � L s q l _ i m p o r t _ f i l e :   s t r i n g ,  [�Qee�N�Qh��_�ST+e�N�Ty�  l     �~�~    db_name: string    �  d b _ n a m e :   s t r i n g  l     �} �}    tbl_name:string     �!!  t b l _ n a m e : s t r i n g "#" l     �|$%�|  $ % delimiter:string??????????????|   % �&& > d e l i m i t e r : s t r i n g�[�Qee�N�N-epcnR��{&��؋� |# '(' l     �{)*�{  ) 3 -fields: string, ???????????fields="sno,sname"   * �++ Z f i e l d s :   s t r i n g ,  YN*[Wk�u(�R���O�� f i e l d s = " s n o , s n a m e "( ,-, l     �z�y�x�z  �y  �x  - ./. I    �w0�v
�w .sysoexecTEXT���     TEXT0 l    1�u�t1 b     232 b     454 b     676 b     898 b     :;: b     <=< b     >?> b     	@A@ b     BCB b     DED m     FF �GG � / u s r / l o c a l / m y s q l / b i n / m y s q l   - - d e f a u l t s - e x t r a - f i l e = / u s r / l o c a l / m y s q l / m y . c n f   - D  E o    �s�s 0 db_name  C m    HH �II .   - e   " L O A D   D A T A   I N F I L E   'A l   J�r�qJ n    KLK 1    �p
�p 
psxpL o    �o�o 0 sql_import_file  �r  �q  ? m   	 
MM �NN  ' I N T O   T A B L E  = o    �n�n 0 tbl_name  ; m    OO �PP .   F I E L D S   T E R M I N A T E D   B Y   '9 o    �m�m 0 	delimiter  7 m    QQ �RR 8 '   L I N E S   T E R M I N A T E D   B Y   ' \ r '   (5 o    �l�l 
0 fields  3 m    SS �TT  )   "�u  �t  �v  / U�kU l   �j�i�h�j  �i  �h  �k   VWV l     �g�f�e�g  �f  �e  W XYX l     �dZ[�d  Z 0 *set sql to "select sno,sname from student"   [ �\\ T s e t   s q l   t o   " s e l e c t   s n o , s n a m e   f r o m   s t u d e n t "Y ]^] l     �c_`�c  _ 0 *set sql to "select sbirthday from student"   ` �aa T s e t   s q l   t o   " s e l e c t   s b i r t h d a y   f r o m   s t u d e n t "^ bcb l     �bde�b  d  set dbname to "test1"   e �ff * s e t   d b n a m e   t o   " t e s t 1 "c ghg l     �aij�a  i &  set d to readfromdb(dbname, sql)   j �kk @ s e t   d   t o   r e a d f r o m d b ( d b n a m e ,   s q l )h lml l     �`�_�^�`  �_  �^  m non i    pqp I      �]r�\�] 0 
readfromdb  r sts o      �[�[ 0 db_name  t u�Zu o      �Y�Y 0 sql  �Z  �\  q k     Svv wxw l     �Xyz�X  y  db_name:string   z �{{  d b _ n a m e : s t r i n gx |}| l     �W~�W  ~  
sql:string    ���  s q l : s t r i n g} ��� l     �V�U�T�V  �U  �T  � ��� r     ��� n     ��� 2   �S
�S 
cpar� l    ��R�Q� I    �P��O
�P .sysoexecTEXT���     TEXT� b     	��� b     ��� b     ��� b     ��� m     �� ��� � / u s r / l o c a l / m y s q l / b i n / m y s q l   - - d e f a u l t s - e x t r a - f i l e = / u s r / l o c a l / m y s q l / m y . c n f   - D  � o    �N�N 0 db_name  � m    �� ���    - N   - e   '� o    �M�M 0 sql  � m    �� ���  '�O  �R  �Q  � o      �L�L 0 	data_info  � ��� l   �K���K  � G A?test1, student??"select sno,sname from student"????????????tab??   � ��� �N� t e s t 1 ,   s t u d e n tN-� " s e l e c t   s n o , s n a m e   f r o m   s t u d e n t "_�Q�Y�Nh<_epcn��؋�f/ t a bR��� ��� l   �J���J  � C ={"101	??", "103	??", "105	??", "107	??", "108	??", "109	??"}	   � ��� z { " 1 0 1 	gNQ� " ,   " 1 0 3 	�FT " ,   " 1 0 5 	S!f " ,   " 1 0 7 	s�N= " ,   " 1 0 8 	f�SN " ,   " 1 0 9 	s��� " } 	� ��� l   �I�H�G�I  �H  �G  � ��� r    ��� J    �F�F  � o      �E�E 0 
data_final  � ��� l   �D�C�B�D  �C  �B  � ��� l   �A���A  �  ?????   � ��� 
R�h�KP<l�� ��� r    .��� J    �� ��� n   ��� 1    �@
�@ 
txdl� 1    �?
�? 
ascr� ��>� 1    �=
�= 
tab �>  � J      �� ��� o      �<�< 	0 astid  � ��;� n     ��� 1   * ,�:
�: 
txdl� 1   ) *�9
�9 
ascr�;  � ��� l  / /�8�7�6�8  �7  �6  � ��� X   / J��5�� r   ? E��� l  ? B��4�3� n  ? B��� 2   @ B�2
�2 
citm� o   ? @�1�1 0 an_info  �4  �3  � n      ���  ;   C D� o   B C�0�0 0 
data_final  �5 0 an_info  � o   2 3�/�/ 0 	data_info  � ��� l  K K�.���.  �  ?????????????????????   � ��� *ettTv���Q�epcn�c	R�h|{W��ubN�~�R�h� ��� l  K K�-���-  � ` Z{{"101", "??"}, {"103", "??"}, {"105", "??"}, {"107", "??"}, {"108", "??"}, {"109", "??"}}   � ��� � { { " 1 0 1 " ,   "gNQ� " } ,   { " 1 0 3 " ,   "�FT " } ,   { " 1 0 5 " ,   "S!f " } ,   { " 1 0 7 " ,   "s�N= " } ,   { " 1 0 8 " ,   "f�SN " } ,   { " 1 0 9 " ,   "s��� " } }� ��� r   K P��� o   K L�,�, 	0 astid  � n     ��� 1   M O�+
�+ 
txdl� 1   L M�*
�* 
ascr� ��)� L   Q S�� o   Q R�(�( 0 
data_final  �)  o ��� l     �'�&�%�'  �&  �%  � ��� l      �$���$  ���--set tblName to "ict_part"--set tblName to "supplier_part"--id  11??????????--?? ??17?, supplier 45?--?? ??100set sql to "DROP TABLE if exists `" & tblName & "`;
		CREATE TABLE `" & tblName & "` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partno` varchar(17) NOT NULL,
  `description` varchar(100) NOT NULL,
  `uom` char(2) NOT NULL,
  `material` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `dimension` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `supplier` tinyint(1) DEFAULT NULL,
  `price` tinyint(1) DEFAULT NULL,
  `revision` varchar(45) DEFAULT NULL,
  `lifecycle` varchar(45) DEFAULT NULL,
  `category1` varchar(45) DEFAULT NULL,
  `category2` varchar(45) DEFAULT NULL,
  `category3` varchar(45) DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  `certificates` varchar(45) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
		) "   � ����  - - s e t   t b l N a m e   t o   " i c t _ p a r t "  - - s e t   t b l N a m e   t o   " s u p p l i e r _ p a r t "   - - i d     1 1x�aTsw@v~N�ga��_U  - -e�S�  g Y' 1 7x ,   s u p p l i e r   4 5x  - -cϏ�  g Y' 1 0 0  s e t   s q l   t o   " D R O P   T A B L E   i f   e x i s t s   ` "   &   t b l N a m e   &   " ` ; 
 	 	 C R E A T E   T A B L E   ` "   &   t b l N a m e   &   " `   ( 
     ` i d `   i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T , 
     ` p a r t n o `   v a r c h a r ( 1 7 )   N O T   N U L L , 
     ` d e s c r i p t i o n `   v a r c h a r ( 1 0 0 )   N O T   N U L L , 
     ` u o m `   c h a r ( 2 )   N O T   N U L L , 
     ` m a t e r i a l `   v a r c h a r ( 4 5 )   D E F A U L T   N U L L , 
     ` c o l o r `   v a r c h a r ( 4 5 )   D E F A U L T   N U L L , 
     ` d i m e n s i o n `   v a r c h a r ( 4 5 )   D E F A U L T   N U L L , 
     ` w e i g h t `   v a r c h a r ( 4 5 )   D E F A U L T   N U L L , 
     ` s u p p l i e r `   t i n y i n t ( 1 )   D E F A U L T   N U L L , 
     ` p r i c e `   t i n y i n t ( 1 )   D E F A U L T   N U L L , 
     ` r e v i s i o n `   v a r c h a r ( 4 5 )   D E F A U L T   N U L L , 
     ` l i f e c y c l e `   v a r c h a r ( 4 5 )   D E F A U L T   N U L L , 
     ` c a t e g o r y 1 `   v a r c h a r ( 4 5 )   D E F A U L T   N U L L , 
     ` c a t e g o r y 2 `   v a r c h a r ( 4 5 )   D E F A U L T   N U L L , 
     ` c a t e g o r y 3 `   v a r c h a r ( 4 5 )   D E F A U L T   N U L L , 
     ` g r a d e `   v a r c h a r ( 4 5 )   D E F A U L T   N U L L , 
     ` c e r t i f i c a t e s `   v a r c h a r ( 4 5 )   D E F A U L T   N U L L , 
     ` n o t e s `   v a r c h a r ( 1 0 0 )   D E F A U L T   N U L L , 
     ` c r e a t e d `   d a t e t i m e   D E F A U L T   N U L L , 
     ` m o d i f i e d `   d a t e t i m e   D E F A U L T   N U L L , 
     P R I M A R Y   K E Y   ( ` i d ` ) 
 	 	 )   "  � ��� l     �#�"�!�#  �"  �!  � ��� l      � ���   �%set tblName to "supplier"--id  11??????????--vendor code: 7?--name: ??100??--address: ??100??set sql to "DROP TABLE if exists `" & tblName & "`;
		CREATE TABLE `" & tblName & "` (
		`id` int(11) NOT NULL AUTO_INCREMENT,
  		`code` char(7) NOT NULL,
  		`name` varchar(100) NOT NULL,
  		`address` bool NULL DEFAULT NULL,
		`website` bool NULL DEFAULT NULL,
		`alias` bool NULL DEFAULT NULL,
		`contact` bool NULL DEFAULT NULL,
		`created` datetime NULL DEFAULT NULL,
		`modified` datetime NULL DEFAULT NULL,
		PRIMARY KEY (`id`)
		) "   � ���>  s e t   t b l N a m e   t o   " s u p p l i e r "  - - i d     1 1x�aTsw@v~N�ga��_U  - - v e n d o r   c o d e :   7x  - - n a m e :  g Y' 1 0 0[W{&  - - a d d r e s s :  g Y' 1 0 0[W{&   s e t   s q l   t o   " D R O P   T A B L E   i f   e x i s t s   ` "   &   t b l N a m e   &   " ` ; 
 	 	 C R E A T E   T A B L E   ` "   &   t b l N a m e   &   " `   ( 
 	 	 ` i d `   i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T , 
     	 	 ` c o d e `   c h a r ( 7 )   N O T   N U L L , 
     	 	 ` n a m e `   v a r c h a r ( 1 0 0 )   N O T   N U L L , 
     	 	 ` a d d r e s s `   b o o l   N U L L   D E F A U L T   N U L L , 
 	 	 ` w e b s i t e `   b o o l   N U L L   D E F A U L T   N U L L , 
 	 	 ` a l i a s `   b o o l   N U L L   D E F A U L T   N U L L , 
 	 	 ` c o n t a c t `   b o o l   N U L L   D E F A U L T   N U L L , 
 	 	 ` c r e a t e d `   d a t e t i m e   N U L L   D E F A U L T   N U L L , 
 	 	 ` m o d i f i e d `   d a t e t i m e   N U L L   D E F A U L T   N U L L , 
 	 	 P R I M A R Y   K E Y   ( ` i d ` ) 
 	 	 )   "  � ��� l     ����  �  �  � ��� l      ����  ���set tblName to "supplierinfo"--infotype:`address` ,`website`, `alias` , `contact` set sql to "DROP TABLE if exists `" & tblName & "`;
		CREATE TABLE `" & tblName & "` (
		`id` int(11) NOT NULL AUTO_INCREMENT,
		`supplierid` int(11) NOT NULL,
  		`infotype` char(7) NOT NULL,  
		`description` varchar(100) NOT NULL,
		`notes` varchar(100) NULL DEFAULT NULL,    
		`created` datetime NULL DEFAULT NULL,
		`modified` datetime NULL DEFAULT NULL,
		PRIMARY KEY (`id`)
		) "   � ����  s e t   t b l N a m e   t o   " s u p p l i e r i n f o "  - - i n f o t y p e : ` a d d r e s s `   , ` w e b s i t e ` ,   ` a l i a s `   ,   ` c o n t a c t `    s e t   s q l   t o   " D R O P   T A B L E   i f   e x i s t s   ` "   &   t b l N a m e   &   " ` ; 
 	 	 C R E A T E   T A B L E   ` "   &   t b l N a m e   &   " `   ( 
 	 	 ` i d `   i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T , 
 	 	 ` s u p p l i e r i d `   i n t ( 1 1 )   N O T   N U L L , 
     	 	 ` i n f o t y p e `   c h a r ( 7 )   N O T   N U L L ,     
 	 	 ` d e s c r i p t i o n `   v a r c h a r ( 1 0 0 )   N O T   N U L L , 
 	 	 ` n o t e s `   v a r c h a r ( 1 0 0 )   N U L L   D E F A U L T   N U L L ,         
 	 	 ` c r e a t e d `   d a t e t i m e   N U L L   D E F A U L T   N U L L , 
 	 	 ` m o d i f i e d `   d a t e t i m e   N U L L   D E F A U L T   N U L L , 
 	 	 P R I M A R Y   K E Y   ( ` i d ` ) 
 	 	 )   " � ��� l     ����  �  �  � ��� l      ����  �set tblName to "contacts"set sql to "DROP TABLE if exists `" & tblName & "`;
		CREATE TABLE `" & tblName & "` (
		`id` int(11) NOT NULL AUTO_INCREMENT,
		`name` varchar(20) NOT NULL,
  		`phone` char(11) NOT NULL,  
		`email` varchar(100) NOT NULL,
		`private_id` char(18) NULL DEFAULT NULL,
		`notes` varchar(200) NULL DEFAULT NULL, 
		`more` bool NULL DEFAULT NULL,   
		`created` datetime NULL DEFAULT NULL,
		`modified` datetime NULL DEFAULT NULL,
		PRIMARY KEY (`id`)		
		) "--UNIQUE KEY `private_id_UNIQUE` (`private_id`)   � ���(  s e t   t b l N a m e   t o   " c o n t a c t s "   s e t   s q l   t o   " D R O P   T A B L E   i f   e x i s t s   ` "   &   t b l N a m e   &   " ` ; 
 	 	 C R E A T E   T A B L E   ` "   &   t b l N a m e   &   " `   ( 
 	 	 ` i d `   i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T , 
 	 	 ` n a m e `   v a r c h a r ( 2 0 )   N O T   N U L L , 
     	 	 ` p h o n e `   c h a r ( 1 1 )   N O T   N U L L ,     
 	 	 ` e m a i l `   v a r c h a r ( 1 0 0 )   N O T   N U L L , 
 	 	 ` p r i v a t e _ i d `   c h a r ( 1 8 )   N U L L   D E F A U L T   N U L L , 
 	 	 ` n o t e s `   v a r c h a r ( 2 0 0 )   N U L L   D E F A U L T   N U L L ,   
 	 	 ` m o r e `   b o o l   N U L L   D E F A U L T   N U L L ,       
 	 	 ` c r e a t e d `   d a t e t i m e   N U L L   D E F A U L T   N U L L , 
 	 	 ` m o d i f i e d `   d a t e t i m e   N U L L   D E F A U L T   N U L L , 
 	 	 P R I M A R Y   K E Y   ( ` i d ` ) 	 	 
 	 	 )   "  - - U N I Q U E   K E Y   ` p r i v a t e _ i d _ U N I Q U E `   ( ` p r i v a t e _ i d ` ) � ��� l     ����  �  �  � ��� l      �� �  ���set tblName to "contactsinfo"set sql to "DROP TABLE if exists `" & tblName & "`;
		CREATE TABLE `" & tblName & "` (
		`id` int(11) NOT NULL AUTO_INCREMENT,
		`contactid` int(11) NOT NULL,
  		`type` char(7) NOT NULL,  
		`description` varchar(100) NOT NULL,
		`notes` varchar(100) NULL DEFAULT NULL,    
		`created` datetime NULL DEFAULT NULL,
		`modified` datetime NULL DEFAULT NULL,
		PRIMARY KEY (`id`)
		
		) "
     �F  s e t   t b l N a m e   t o   " c o n t a c t s i n f o "   s e t   s q l   t o   " D R O P   T A B L E   i f   e x i s t s   ` "   &   t b l N a m e   &   " ` ; 
 	 	 C R E A T E   T A B L E   ` "   &   t b l N a m e   &   " `   ( 
 	 	 ` i d `   i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T , 
 	 	 ` c o n t a c t i d `   i n t ( 1 1 )   N O T   N U L L , 
     	 	 ` t y p e `   c h a r ( 7 )   N O T   N U L L ,     
 	 	 ` d e s c r i p t i o n `   v a r c h a r ( 1 0 0 )   N O T   N U L L , 
 	 	 ` n o t e s `   v a r c h a r ( 1 0 0 )   N U L L   D E F A U L T   N U L L ,         
 	 	 ` c r e a t e d `   d a t e t i m e   N U L L   D E F A U L T   N U L L , 
 	 	 ` m o d i f i e d `   d a t e t i m e   N U L L   D E F A U L T   N U L L , 
 	 	 P R I M A R Y   K E Y   ( ` i d ` ) 
 	 	 
 	 	 )   "  
�  l     ����  �  �    l      ��  YSset tblName to "part_price"--id  11??????????--?? ??17?--?? ??100set sql to "DROP TABLE if exists `" & tblName & "`;
		CREATE TABLE `" & tblName & "` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
 `partno_id` int(11) NOT NULL,
 `mpn` int(11) NOT NULL,
  `unitprice`float NOT NULL,
 `currency` tinyint(1) NOT NULL,
 `supplier` int(11) NOT NULL,
 `supplytype` bool NULL DEFAULT NULL,
 `tradetype` bool NULL DEFAULT NULL,
 `leadtime` smallint NULL DEFAULT NULL,
 `lt_std` tinyint(1) NULL DEFAULT NULL,
 `moq` varchar(11) NULL DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
 `costprice1`float NULL DEFAULT NULL,
 `costprice2`float NULL DEFAULT NULL,
 `currencyforcost` tinyint(1) NULL,
 `remark` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
		) "--`moq` int --> varchar(11)    ��  s e t   t b l N a m e   t o   " p a r t _ p r i c e "  - - i d     1 1x�aTsw@v~N�ga��_U  - -e�S�  g Y' 1 7x  - -cϏ�  g Y' 1 0 0  s e t   s q l   t o   " D R O P   T A B L E   i f   e x i s t s   ` "   &   t b l N a m e   &   " ` ; 
 	 	 C R E A T E   T A B L E   ` "   &   t b l N a m e   &   " `   ( 
     ` i d `   i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T , 
   ` p a r t n o _ i d `   i n t ( 1 1 )   N O T   N U L L , 
   ` m p n `   i n t ( 1 1 )   N O T   N U L L , 
     ` u n i t p r i c e ` f l o a t   N O T   N U L L , 
   ` c u r r e n c y `   t i n y i n t ( 1 )   N O T   N U L L , 
   ` s u p p l i e r `   i n t ( 1 1 )   N O T   N U L L , 
   ` s u p p l y t y p e `   b o o l   N U L L   D E F A U L T   N U L L , 
   ` t r a d e t y p e `   b o o l   N U L L   D E F A U L T   N U L L , 
   ` l e a d t i m e `   s m a l l i n t   N U L L   D E F A U L T   N U L L , 
   ` l t _ s t d `   t i n y i n t ( 1 )   N U L L   D E F A U L T   N U L L , 
   ` m o q `   v a r c h a r ( 1 1 )   N U L L   D E F A U L T   N U L L , 
     ` n o t e s `   v a r c h a r ( 1 0 0 )   D E F A U L T   N U L L , 
   ` c o s t p r i c e 1 ` f l o a t   N U L L   D E F A U L T   N U L L , 
   ` c o s t p r i c e 2 ` f l o a t   N U L L   D E F A U L T   N U L L , 
   ` c u r r e n c y f o r c o s t `   t i n y i n t ( 1 )   N U L L , 
   ` r e m a r k `   v a r c h a r ( 1 0 0 )   D E F A U L T   N U L L , 
     ` c r e a t e d `   d a t e t i m e   D E F A U L T   N U L L , 
     ` m o d i f i e d `   d a t e t i m e   D E F A U L T   N U L L , 
     P R I M A R Y   K E Y   ( ` i d ` ) 
 	 	 )   "  - - ` m o q `   i n t   - - >   v a r c h a r ( 1 1 )   	
	 l     ����  �  �  
  l     ��   #  currency?lt_std ????????????    � :   c u r r e n c yT� l t _ s t d  S�N�S�Y[�^�R0��[�NI[WQx  l     ��    create_table(sql)    � " c r e a t e _ t a b l e ( s q l )  l     �
�	��
  �	  �    i     I      ��� 0 create_table   � o      �� 0 sql  �  �   k     *  r      !  o     �� 0 sql  ! o      �� 0 
table_make   "#" l   �$%�  $ - '????????????????? latin1???????????????   % �&& Nepcn^��hh<epcnN�N
Of/�؋�v�[W{&��   l a t i n 1�O[���T�b[�Qev�N-e�epcnNqx# '(' l   � )*�   ) &  ????????????utf8 ??mysql????????   * �++ @kdYv�c���nv�Qs[W{&��N: u t f 8  ��T/ m y s q lgR�e�N�wO\u(v�( ,-, l   ��./��  . " ????????????????????????????   / �00 8V�N:f/W(]�[XW(v�epcn^���^��h��s�[Xv�epcn^�g	�؋�[W{&��- 121 l   ��34��  3 ( "??????? ??????????????????????????   4 �55 DV�kd�Y�N
��S�  SsOc[�[W{&���N_Oc	s�g	�؋�epcn^�v�[W{&���NueH2 676 l   ��89��  8   ????????????????????utf8   9 �:: 2  h9g,v���Q�R�l��_Ř{b�epcn^�[W{&�ƏlcbN: u t f 87 ;<; l   ��������  ��  ��  < =>= r    ?@? n    ABA 2  	 ��
�� 
cparB l   	C����C I   	��D��
�� .sysoexecTEXT���     TEXTD m    EE �FF � / u s r / l o c a l / m y s q l / b i n / m y s q l   - - d e f a u l t s - e x t r a - f i l e = / u s r / l o c a l / m y s q l / m y . c n f   - e   ' s h o w   d a t a b a s e s '��  ��  ��  @ o      ���� 0 all_databases  > GHG r    IJI n    KLK 4    ��M
�� 
cobjM m    ���� L l   N����N I   ��OP
�� .gtqpchltns    @   @ ns  O o    ���� 0 all_databases  P ��Q��
�� 
prmpQ m    RR �SS v S e l e c t   a   M y S Q L   d a t a b a s e   t o   c r e a t e   t h e   ' w o r d s '   t a b l e   w i t h i n :��  ��  ��  J o      ���� 0 db_name  H TUT I   (��V��
�� .sysoexecTEXT���     TEXTV l   $W����W b    $XYX b    "Z[Z b     \]\ b    ^_^ m    `` �aa � / u s r / l o c a l / m y s q l / b i n / m y s q l   - - d e f a u l t s - e x t r a - f i l e = / u s r / l o c a l / m y s q l / m y . c n f   - D  _ o    ���� 0 db_name  ] m    bb �cc 
   - e   '[ o     !���� 0 
table_make  Y m   " #dd �ee  '��  ��  ��  U f��f l  ) )��������  ��  ��  ��   ghg l     ��������  ��  ��  h iji l     ��kl��  k  ????????   l �mm R^�N N*epcn^��hj non l      ��pq��  pon create_table(tblName)	--id  11??????????	--?? ??17?	--?? ??100	set table_make to "DROP TABLE if exists `" & tblName & "`;
		CREATE TABLE `" & tblName & "` (
		`id` int(11) NOT NULL AUTO_INCREMENT,
  		`partno` varchar(17) NOT NULL,
  		`desc` varchar(100) NOT NULL,
  		`mfg` varchar(100) NOT NULL,
		`created` datetime NULL DEFAULT NULL,
		`modified` datetime NULL DEFAULT NULL,
		PRIMARY KEY (`id`)
		) "		--????????????????? latin1???????????????	--????????????utf8 ??mysql????????	--????????????????????????????	--??????? ??????????????????????????	-- ????????????????????utf8		set all_databases to paragraphs of (do shell script "/usr/local/mysql/bin/mysql --defaults-extra-file=/usr/local/mysql/my.cnf -e 'show databases'")	set db_name to item 1 of (choose from list all_databases with prompt "Select a MySQL database to create the 'words' table within:")	do shell script ("/usr/local/mysql/bin/mysql --defaults-extra-file=/usr/local/mysql/my.cnf -D " & db_name & " -e '" & table_make & "'")	end create_table   q �rr  o n   c r e a t e _ t a b l e ( t b l N a m e )  	 - - i d     1 1x�aTsw@v~N�ga��_U  	 - -e�S�  g Y' 1 7x  	 - -cϏ�  g Y' 1 0 0  	 s e t   t a b l e _ m a k e   t o   " D R O P   T A B L E   i f   e x i s t s   ` "   &   t b l N a m e   &   " ` ; 
 	 	 C R E A T E   T A B L E   ` "   &   t b l N a m e   &   " `   ( 
 	 	 ` i d `   i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T , 
     	 	 ` p a r t n o `   v a r c h a r ( 1 7 )   N O T   N U L L , 
     	 	 ` d e s c `   v a r c h a r ( 1 0 0 )   N O T   N U L L , 
     	 	 ` m f g `   v a r c h a r ( 1 0 0 )   N O T   N U L L , 
 	 	 ` c r e a t e d `   d a t e t i m e   N U L L   D E F A U L T   N U L L , 
 	 	 ` m o d i f i e d `   d a t e t i m e   N U L L   D E F A U L T   N U L L , 
 	 	 P R I M A R Y   K E Y   ( ` i d ` ) 
 	 	 )   "  	  	 - -epcn^��hh<epcnN�N
Of/�؋�v�[W{&��   l a t i n 1�O[���T�b[�Qev�N-e�epcnNqx  	 - -kdYv�c���nv�Qs[W{&��N: u t f 8  ��T/ m y s q lgR�e�N�wO\u(v�  	 - -V�N:f/W(]�[XW(v�epcn^���^��h��s�[Xv�epcn^�g	�؋�[W{&��  	 - -V�kd�Y�N
��S�  SsOc[�[W{&���N_Oc	s�g	�؋�epcn^�v�[W{&���NueH  	 - -  h9g,v���Q�R�l��_Ř{b�epcn^�[W{&�ƏlcbN: u t f 8  	  	 s e t   a l l _ d a t a b a s e s   t o   p a r a g r a p h s   o f   ( d o   s h e l l   s c r i p t   " / u s r / l o c a l / m y s q l / b i n / m y s q l   - - d e f a u l t s - e x t r a - f i l e = / u s r / l o c a l / m y s q l / m y . c n f   - e   ' s h o w   d a t a b a s e s ' " )  	 s e t   d b _ n a m e   t o   i t e m   1   o f   ( c h o o s e   f r o m   l i s t   a l l _ d a t a b a s e s   w i t h   p r o m p t   " S e l e c t   a   M y S Q L   d a t a b a s e   t o   c r e a t e   t h e   ' w o r d s '   t a b l e   w i t h i n : " )  	 d o   s h e l l   s c r i p t   ( " / u s r / l o c a l / m y s q l / b i n / m y s q l   - - d e f a u l t s - e x t r a - f i l e = / u s r / l o c a l / m y s q l / m y . c n f   - D   "   &   d b _ n a m e   &   "   - e   ' "   &   t a b l e _ m a k e   &   " ' " )  	  e n d   c r e a t e _ t a b l e o sts l     ��������  ��  ��  t uvu i    wxw I      ��y���� 0 	store2txt  y z{z o      ���� 0 	temp_data  { |}| o      ���� 0 output_file  } ~��~ o      ���� 0 	delimiter  ��  ��  x k     � ��� l     ������  � , &****************????????????**********   � ��� L * * * * * * * * * * * * * * * *\epcnN4e�[XQeepcne�N�N- * * * * * * * * * *� ��� l     ������  �  ?????   � ��� 
S�ep��f�� ��� l     ������  � 7 1temp_data: list -> ??list, ??????????????????????   � ��� b t e m p _ d a t a :   l i s t   - >  N�~� l i s t ,  [�^�N�~�ep~��T&R�[W{&N2|{W�Oc	[W{&geYt� ��� l     ������  � ! output_file: string?txt????   � ��� 6 o u t p u t _ f i l e :   s t r i n g� t x te�N�Ty�� ��� l     ������  � 2 ,dilimiter: string????txt????????????????? |    � ��� X d i l i m i t e r :   s t r i n g�[XP�R0 t x tv�epcnu(v���[�NIR��{&�N �,�؋�u(   |  � ��� r     ��� o     ���� 0 	temp_data  � o      ���� 0 	word_list  � ��� r    ��� I   ����
�� .earsffdralis        afdr� m    ��
�� afdrcusr� �����
�� 
rtyp� m    ��
�� 
utxt��  � o      ���� 0 	home_path  � ��� l   ������  � $ set data_file to "test001.txt"   � ��� < s e t   d a t a _ f i l e   t o   " t e s t 0 0 1 . t x t "� ��� r    ��� o    ���� 0 output_file  � o      ���� 0 	data_file  � ��� l   ��������  ��  ��  � ��� l   ������  � 7 1File does NOT need to exist prior to running this   � ��� b F i l e   d o e s   N O T   n e e d   t o   e x i s t   p r i o r   t o   r u n n i n g   t h i s� ��� r     ��� I   ����
�� .rdwropenshor       file� 4    ���
�� 
file� l   ������ b    ��� o    ���� 0 	home_path  � o    ���� 0 	data_file  ��  ��  � �����
�� 
perm� m    ��
�� boovtrue��  � o      ���� 0 a  � ��� l  ! !��������  ��  ��  � ��� l  ! !��������  ��  ��  � ��� X   ! ������ k   1 ��� ��� r   1 4��� m   1 2�� ���  � o      ���� 0 
build_line  � ��� X   5 Q����� k   E L�� ��� l  E E������  � 2 ,Using the dollar sign as the field delimiter   � ��� X U s i n g   t h e   d o l l a r   s i g n   a s   t h e   f i e l d   d e l i m i t e r� ��� l  E E������  � - 'set build_line to build_line & aw & "$"   � ��� N s e t   b u i l d _ l i n e   t o   b u i l d _ l i n e   &   a w   &   " $ "� ���� r   E L��� b   E J��� b   E H��� o   E F���� 0 
build_line  � o   F G���� 0 aw  � o   H I���� 0 	delimiter  � o      ���� 0 
build_line  ��  �� 0 aw  � o   8 9���� 
0 a_list  � ��� l  R R��������  ��  ��  � ��� l  R R������  � f `Before writing the line to the .txt file, need to replace the terminal dollar sign with a return   � ��� � B e f o r e   w r i t i n g   t h e   l i n e   t o   t h e   . t x t   f i l e ,   n e e d   t o   r e p l a c e   t h e   t e r m i n a l   d o l l a r   s i g n   w i t h   a   r e t u r n� ��� r   R Y��� I  R W������
�� .misccurdldt    ��� null��  ��  � o      ���� 0 dt  � ��� r   Z b��� n  Z `��� I   [ `������� "0 makesqldatetime MakeSQLDateTime� ���� o   [ \���� 0 dt  ��  ��  �  f   Z [� o      ���� 0 dt  � ��� l  c j���� r   c j��� b   c h��� b   c f   o   c d���� 0 
build_line   o   d e���� 0 dt  � o   f g��
�� 
ret � o      ���� 0 
build_line  �  ???????   � � \> R�e���_U�  l  k k����   _ Yset build_line to (characters 1 thru -2 of build_line as string) & return --?????????????    � � s e t   b u i l d _ l i n e   t o   ( c h a r a c t e r s   1   t h r u   - 2   o f   b u i l d _ l i n e   a s   s t r i n g )   &   r e t u r n   - -\> e�e���_U�v�c�S�epcn 	 l  k k��������  ��  ��  	 

 l  k k����   * $Always writes a new line to the file    � H A l w a y s   w r i t e s   a   n e w   l i n e   t o   t h e   f i l e  I  k ~��
�� .rdwrwritnull���     **** o   k l���� 0 
build_line   ��
�� 
refn o   m n���� 0 a   ��
�� 
wrat m   o r��
�� rdwreof  ����
�� 
as   m   u x��
�� 
utf8��    l   ����    ???text??????? ???????    � ,ubv� t e x tepcn��g	Nqx�  _���Q�x�  l   �� ��    ???text???????      �!! ubv� t e x tepcn��g	Nqx�   "��" l   ��#$��  # E ????????write to ?? as �class utf8� ????????????????locale?????	   $ �%% ~]��Q��� ��W( w r i t e   t o  TR�   a s   � c l a s s   u t f 8 �  xnO�Q�Qee�N�v�x�T&ROc	|�~� l o c a l ev��؋�x 	��  �� 
0 a_list  � o   $ %���� 0 	word_list  � &'& I  � ��(�~
� .rdwrclosnull���     ****( o   � ��}�} 0 a  �~  ' )�|) l  � ��{�z�y�{  �z  �y  �|  v *+* l     �x�w�v�x  �w  �v  + ,-, i    ./. I      �u0�t�u 0 
scan_error  0 1�s1 o      �r�r 
0 selrng  �s  �t  / k     B22 343 l     �q56�q  5 : 4AS ??Excel Range????????? ?#N/A???????????Excel????    6 �77 h A S  ��S� E x c e l   R a n g eP<�Y�g�g	���P<�  Y� # N / A�OS�u����N΀[��� E x c e l|�~�])n�  4 898 l     �p:;�p  : D >?7?????#N/A?#DIV/0!?#VALUE!?#REF!?#NAME? ?#NULL! ?#NUM!???????   ; �<< |� 7N*���P<� # N / A� # D I V / 0 !� # V A L U E !� # R E F !� # N A M E ?  � # N U L L !  � # N U M !�	��Og	kd�9 =>= l     �o?@�o  ? * $????????????????????????????????????   @ �AA H��Q�R�l����QH�	b�b@g	ST+���P<v�SUQCh<�q6Tn�dQvP<�^v��nb~��r��fo> BCB l     �nDE�n  D 	 ???   E �FF y:O��C GHG l     �mIJ�m  I  	#?????????cells???rng??   J �KK 0 	 #\ST+���P<v�b@g	 c e l l s�KP<~� r n gSؑ�H LML O     @NON k    ?PP QRQ l   �lST�l  S  select selrng   T �UU  s e l e c t   s e l r n gR VWV l   �kXY�k  X N Hset rng to special cells selection type cell type constants value errors   Y �ZZ � s e t   r n g   t o   s p e c i a l   c e l l s   s e l e c t i o n   t y p e   c e l l   t y p e   c o n s t a n t s   v a l u e   e r r o r sW [�j[ Q    ?\]^\ k    6__ `a` r    bcb I   �ide
�i .sTBL1621null���     X117d o    �h�h 
0 selrng  e �gfg
�g 
5103f m   	 
�f
�f e182F g �eh�d
�e 
DPVuh m    �c
�c e231w �d  c o      �b�b 0 rng  a iji l   �akl�a  k  
select rng   l �mm  s e l e c t   r n gj non r    pqp I   �`r�_
�` .corecnte****       ****r n    sts 2   �^
�^ 
ccelt o    �]�] 0 rng  �_  q o      �\�\ 0 ncount nCounto uvu I   "�[w�Z
�[ .sTBLXrgCnull���     X117w o    �Y�Y 0 rng  �Z  v xyx l  # *z{|z r   # *}~} m   # $�X�X ~ n      � 1   ' )�W
�W 
1098� n   $ '��� 1   % '�V
�V 
XitO� o   $ %�U�U 0 rng  {  ?????   | ��� 
��nN:~��ry ��T� I  + 6�S��R
�S .sysodlogaskr        TEXT� b   + 2��� b   + 0��� m   + ,�� ��� 
 F i n d  � l  , /��Q�P� c   , /��� o   , -�O�O 0 ncount nCount� m   - .�N
�N 
TEXT�Q  �P  � m   0 1�� ��� N   e r r o r ( s ) ,   p l e a s e   c h e c k   t h e   r e d   c e l l ( s )�R  �T  ] R      �M�L�K
�M .ascrerr ****      � ****�L  �K  ^ l  > >�J���J  � &  display dialog "No errors found"   � ��� @ d i s p l a y   d i a l o g   " N o   e r r o r s   f o u n d "�j  O m     ���                                                                                  XCEL  alis    F  Macintosh HD                   BD ����Microsoft Excel.app                                            ����            ����  
 cu             Applications  #/:Applications:Microsoft Excel.app/   (  M i c r o s o f t   E x c e l . a p p    M a c i n t o s h   H D   Applications/Microsoft Excel.app  / ��  M ��I� l  A A�H�G�F�H  �G  �F  �I  - ��� l     �E�D�C�E  �D  �C  � ��� i    ��� I      �B��A�B 0 makesqldate MakeSQLdate� ��@� o      �?�? 0 d  �@  �A  � k     �� ��� l     �>���>  � " d?date?????????AS???????date   � ��� 8 d� d a t e�xn[��KP<v�Sؑ�W( A SN-v�Sؑ�|{W�f/ d a t e� ��=� L     �� c     ��� l    ��<�;� b     ��� b     ��� b     ��� b     ��� n    ��� 1    �:
�: 
year� o     �9�9 0 d  � m    �� ���  -� l   
��8�7� c    
��� n   ��� m    �6
�6 
mnth� o    �5�5 0 d  � m    	�4
�4 
nmbr�8  �7  � m    �� ���  -� n   ��� 1    �3
�3 
day � o    �2�2 0 d  �<  �;  � m    �1
�1 
TEXT�=  � ��� l     �0�/�.�0  �/  �.  � ��� i    ��� I      �-��,�- "0 makesqldatetime MakeSQLDateTime� ��+� o      �*�* 0 dt  �+  �,  � k     M�� ��� l     �)���)  � # dt?date?????????AS???????date   � ��� : d t� d a t e�xn[��KP<v�Sؑ�W( A SN-v�Sؑ�|{W�f/ d a t e� ��� l     �(���(  � + %Excel??date?AS?????????date??datetime   � ��� J E x c e lN-v� d a t eT� A SN-v�|{W�N ���NR d a t e��f/ d a t e t i m e� ��� l     �'���'  �  Convert to 24-hour format   � ��� 2 C o n v e r t   t o   2 4 - h o u r   f o r m a t� ��� r     ��� n    ��� 1    �&
�& 
tstr� o     �%�% 0 dt  � o      �$�$ 0 t  � ��� Z   (���#�"� E    	��� o    �!�! 0 t  � m    �� ���  P M� r    $��� l   "�� �� c    "��� b     ��� l   ���� [    ��� l   ���� c    ��� n   ��� 4    ��
� 
cwor� m    �� � o    �� 0 t  � m    �
� 
nmbr�  �  � m    �� �  �  � l   ���� n    ��� 7   ���
� 
cha � m    ����� m    ����� o    �� 0 t  �  �  � m     !�
� 
TEXT�   �  � o      �� 0 t  �#  �"  � ��� L   ) M�� l  ) L���� c   ) L��� b   ) J��� b   ) <   b   ) : b   ) 6 b   ) 4 b   ) .	 l  ) ,
�
�	
 n  ) , 1   * ,�
� 
year o   ) *�� 0 dt  �
  �	  	 m   , - �  - l  . 3�� c   . 3 n  . 1 m   / 1�
� 
mnth o   . /�� 0 dt   m   1 2�
� 
nmbr�  �   m   4 5 �  - l  6 9��  n  6 9 1   7 9��
�� 
day  o   6 7���� 0 dt  �  �    1   : ;��
�� 
spac� l  < I���� c   < I n   < G 7  = G��
�� 
cha  m   A C����  m   D F����  o   < =���� 0 t   m   G H��
�� 
TEXT��  ��  � m   J K��
�� 
TEXT�  �  �  �  !  l     ��������  ��  ��  ! "��" i    #$# I      ��%����  0 makeasdatetime MakeASDateTime% &��& o      ���� 0 ds  ��  ��  $ k     ,'' ()( l     ��*+��  *  	ds:string   + �,,  d s : s t r i n g) -��- L     ,.. 4     +��/
�� 
ldt / l   )0����0 b    )121 b    $343 b    "565 b    787 b    9:9 b    ;<; b    =>= b    ?@? b    ABA b    CDC n   EFE 4    ��G
�� 
cworG m    ���� F o    ���� 0 ds  D m    HH �II  -B n   JKJ 4   	 ��L
�� 
cworL m   
 ���� K o    	���� 0 ds  @ m    MM �NN  -> n   OPO 4    ��Q
�� 
cworQ m    ���� P o    ���� 0 ds  < 1    ��
�� 
spac: n   RSR 4    ��T
�� 
cworT m    ���� S o    ���� 0 ds  8 m    UU �VV  :6 n   !WXW 4    !��Y
�� 
cworY m     ���� X o    ���� 0 ds  4 m   " #ZZ �[[  :2 n  $ (\]\ 4   % (��^
�� 
cwor^ m   & '���� ] o   $ %���� 0 ds  ��  ��  ��  ��       ��_`abcdefgh��  _ 	�������������������� 0 	import2db  �� 0 
readfromdb  �� 0 create_table  �� 0 	store2txt  �� 0 
scan_error  �� 0 makesqldate MakeSQLdate�� "0 makesqldatetime MakeSQLDateTime��  0 makeasdatetime MakeASDateTime
�� .aevtoappnull  �   � ****` ������ij���� 0 	import2db  �� ��k�� k  ������������ 0 sql_import_file  �� 0 db_name  �� 0 tbl_name  �� 0 	delimiter  �� 
0 fields  ��  i ������������ 0 sql_import_file  �� 0 db_name  �� 0 tbl_name  �� 0 	delimiter  �� 
0 fields  j FH��MOQS��
�� 
psxp
�� .sysoexecTEXT���     TEXT�� �%�%��,%�%�%�%�%�%�%�%j OPa ��q����lm���� 0 
readfromdb  �� ��n�� n  ������ 0 db_name  �� 0 sql  ��  l �������������� 0 db_name  �� 0 sql  �� 0 	data_info  �� 0 
data_final  �� 	0 astid  �� 0 an_info  m ���������������������
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
ascr
�� 
txdl
�� 
tab 
�� 
cobj
�� 
kocl
�� .corecnte****       ****
�� 
citm�� T�%�%�%�%j �-E�OjvE�O��,�lvE[�k/E�Z[�l/��,FZO �[��l 
kh ��-�6F[OY��O���,FO�b ������op���� 0 create_table  �� ��q�� q  ���� 0 sql  ��  o ���������� 0 sql  �� 0 
table_make  �� 0 all_databases  �� 0 db_name  p 
E������R����`bd
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
prmp
�� .gtqpchltns    @   @ ns  
�� 
cobj�� +�E�O�j �-E�O���l �k/E�O�%�%�%�%j OPc ��x����rs���� 0 	store2txt  �� ��t�� t  �������� 0 	temp_data  �� 0 output_file  �� 0 	delimiter  ��  r ������������������������ 0 	temp_data  �� 0 output_file  �� 0 	delimiter  �� 0 	word_list  �� 0 	home_path  �� 0 	data_file  �� 0 a  �� 
0 a_list  �� 0 
build_line  �� 0 aw  �� 0 dt  s ������~�}�|�{�z�y�x��w�v�u�t�s�r�q�p�o�n�m
�� afdrcusr
�� 
rtyp
� 
utxt
�~ .earsffdralis        afdr
�} 
file
�| 
perm
�{ .rdwropenshor       file
�z 
kocl
�y 
cobj
�x .corecnte****       ****
�w .misccurdldt    ��� null�v "0 makesqldatetime MakeSQLDateTime
�u 
ret 
�t 
refn
�s 
wrat
�r rdwreof 
�q 
as  
�p 
utf8�o 
�n .rdwrwritnull���     ****
�m .rdwrclosnull���     ****�� ��E�O���l E�O�E�O*䤥%/�el E�O c�[��l 	kh �E�O �[��l 	kh 	��%�%E�[OY��O*j E�O)�k+ E�O��%�%E�O���a a a a  OP[OY��O�j OPd �l/�k�juv�i�l 0 
scan_error  �k �hw�h w  �g�g 
0 selrng  �j  u �f�e�d�f 
0 selrng  �e 0 rng  �d 0 ncount nCountv ��c�b�a�`�_�^�]�\�[�Z�Y��X��W�V�U
�c 
5103
�b e182F 
�a 
DPVu
�` e231w �_ 
�^ .sTBL1621null���     X117
�] 
ccel
�\ .corecnte****       ****
�[ .sTBLXrgCnull���     X117
�Z 
XitO
�Y 
1098
�X 
TEXT
�W .sysodlogaskr        TEXT�V  �U  �i C� = 4������ E�O��-j E�O�j 	Om��,�,FO��&%�%j W X  hUOPe �T��S�Rxy�Q�T 0 makesqldate MakeSQLdate�S �Pz�P z  �O�O 0 d  �R  x �N�N 0 d  y �M��L�K��J�I
�M 
year
�L 
mnth
�K 
nmbr
�J 
day 
�I 
TEXT�Q ��,�%��,�&%�%��,%�&f �H��G�F{|�E�H "0 makesqldatetime MakeSQLDateTime�G �D}�D }  �C�C 0 dt  �F  { �B�A�B 0 dt  �A 0 t  | �@��?�>�=�<�;�:�9�8�7�6�5
�@ 
tstr
�? 
cwor
�> 
nmbr�= 
�< 
cha �;��
�: 
TEXT
�9 
year
�8 
mnth
�7 
day 
�6 
spac�5 �E N��,E�O�� ��k/�&��[�\[Z�\Zi2%�&E�Y hO��,�%��,�&%�%��,%�%�[�\[Zk\Z�2�&%�&g �4$�3�2~�1�4  0 makeasdatetime MakeASDateTime�3 �0��0 �  �/�/ 0 ds  �2  ~ �.�. 0 ds   
�-�,HM�+�*U�)Z�(
�- 
ldt 
�, 
cwor
�+ 
spac�* �) �( �1 -*��l/�%��m/%�%��k/%�%���/%�%���/%�%���/%/Eh �'��&�%���$
�' .aevtoappnull  �   � ****� k     ~��  �#�#  �&  �%  � �"�" 0 r  �  � )�!� �� I������ \ v x��������� ���! 0 a  
�  
X117
� 
ccel� 0 rng  � 
0 dbname  
� 
kocl
� 
cobj
� .corecnte****       ****
� 
XRgt� 0 v  � 0 s  � 0 
readfromdb  � 0 d  
� 
5189� 
� .sTBL1595null���     X117� 0 c  
� 
TEXT
� 
DPVu
� .sysonotfnull��� ��� TEXT�$ � {�E�O*��/�-E�O�E�O _�[��l 
kh  ��,E�O�� >��%�%E` O)�_ l+ E` O�a a l E` O_ a &_ a ,FOPY hOP[OY��Oa j Uascr  ��ޭ