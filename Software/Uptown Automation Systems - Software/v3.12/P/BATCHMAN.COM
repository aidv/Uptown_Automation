�!   
BATCHMAN 1.0 (C) 1989 Ziff Communications Co. � PC Magazine � Michael J. Mefford			SOCK!  KRUNCH!  BANG!  BOOM!  ZOWIE! ... BATCHMAN!			Syntax: BATCHMAN [command] [arguments] [/R]				/R = Display ErrorLevel					Commands					~~~~~~~~				EL = DOS ErrorLevel  CLS [nn]  nn[H]=color H=hex		CECHO [C] [nn,]string  nn=color;C=no CR SETLOOP n  n=loops (0-255)		DEC  decrements SETLOOP  EL=SETLOOP QFORMAT [d:] [N] d:=A: or B: N=No ask	BREAK  EL=1 if break ON PUSHPATH  EL=0 if successful		POPPATH  EL=0 if successful ANSI  EL=0 if installed		BEEP [m,n[;m,n]...]  m=freq. n=1/18 sec WAITTIL hh:mm[:ss]			WAITFOR [mm:]ss CURSORTYPE m,n  m=start; n=stop line	DRIVEEXIST d:  EL=1 if exist DIREXIST directory  EL=1 if exist	ISVOL [d:]volume  EL=1 if exist  YEAR  EL=year from 1980 (0-199)	MONTH  EL=(1-12) DAY   EL=(1-31)			WEEKDAY  EL=(0-6) Sun=0; Sat=6 HOUR  EL=(0-23)			MINUTE  EL=(0-59) SECOND EL=(0-59)			VIDEOMODE  EL=(0-19) ROWS  EL=display rows			COLS  EL=display columns SETCURSOR m,n  m=row; n=col		E43V50 PRTSC [F]  F=formfeed 			COMPARE string string  EL=0 if match CANCOPY filespec [d:]  EL=0 if room to copy  WARMBOOT				COLDBOOT SHIFT ALT | CTRL  EL=1 if depressed	NUMLOCK [ON | OFF] CAPSLOCK [ON | OFF]			SCROLLOCK [ON | OFF] RENDIR old new  EL=0 if successful	ROMDATE  display BIOS date GETKEY ['string' n] n=Function key EL=position; EL=scan code if no list DOSVER  EL=x where x=(major*32)+minor; eg. DOS 3.30=(3*32+30)=126 MAINMEM n | R  main memory;  n=K bytes needed; EL=0 if enough; R=report EXPMEM n | R  expanded memory		EXTMEM n | R  extended memory  DISPLAY  EL=				CPU  EL=  1=MDA         7=VGA mono		 1=8086/8088   3=80286  2=CGA         8=VGA color		 2=80186       4=80386  4=EGA color  11=MCGA mono  5=EGA mono   12=MCGA color  6=PGS  WINDOW m,n,w,h[,c,b]  m=row; n=col; w=width; h=height; c=color; b= -/= single/double border TYPEMATIC [m,n | N]  m=typematic rate (0 - 31); larger m=faster rate  n=initial delay  (0 - 3);  larger n=longer delay  N=normal:  m=20; n=1  default:   m=27; n=0 			any key for more; ESC to quit�����������������Ŀ�����������������Ĵ�����������������Ĵ�����������������Ĵ�����������������Ĵ�����������������Ĵ�����������������Ĵ�����������������Ĵ�����������������Ĵ�����������������Ĵ� M A G A Z I N E ��������������������                        ALTCTRL            �Ŀ�����ͻ��ͼ      CON   
ANSIEMMXXXX0K Bytes free
$ONOFF
WARNING: All data of drive $ will be permanently lost.
Do you wish to continue?  Y/N$
Place the disk you wish to Quick Format in drive $ and press Enter.
Note: the disk must have been previously formatted by DOS$CLSCECHOPUSHPATHPOPPATHSETLOOPDECQFORMATWEEKDAYDAYMONTHYEARHOURMINUTESECONDBREAKROWSCOLS	VIDEOMODECOMPARECANCOPY	SETCURSORWARMBOOTCOLDBOOTBEEPANSICPUDISPLAYMAINMEMEXTMEMEXPMEMWAITFORWAITTILGETKEYSHIFT	SCROLLOCKNUMLOCKCAPSLOCK
DRIVEEXISTISVOLDIREXIST	TYPEMATIC
CURSORTYPEPRTSCDOSVERWINDOWROMDATERENDIRE43V50 ���.M_�����������;g�)9��Mq��L	8<@���M����� ��0�!�2
� �J�!�rl���������!�� �<t</u��$_<Ru�4
�� ��
���3�3۾gCC���
�t���u���< w�N��
�����
2��>4
u2��kP�>5
u�, ���I�!�������X�1�!�>6
 t&�>9 u&�>8 u�I�!X�L�!�' �
u�Ê�2�3Ɋ61
�)
�ʴ�3҉/
�2��2�����Ê$_<Cu�| wFF�8
����_
t��F�/
�<t+� <	u�ʃ��ك�� � ����Q�>'
� �	�� YÀ>8
t/����:)
r"��2�:61
v�>8
t��R3Ɋ)
���Z��
2���
�69�u�;�F�
�u�����s(�69����!A��\���2ҴG�!�>6
 u�5
2���l
�69��t2���A��!��B�;�!��;u3��NN��
�t��;s�NFF�69�2���{	P�&
X&�8
�t�>6
 u�5
2���
&�8
�t��&�8�3���!A�����	�< v<NuE��ج<:t��.��At��Bt�!��u8��
�
���
��
�
�
��t�� ��
�
���
���	��	��t�� ��A�ŢE
� 3һ��%Xs�� �>��t�>��u�����U�u�E
���Pv� ���F
�	�%Xs� ��&��H
�H
��������%�=�t�� ��NG���%��=p�t���GG��s֠E
��F
F
�	�&X�u�= s,�����3��6���3���	�E
�ˋF
�	�&Xr2��������������������������������������ø 3�!��à1
��à)
à(
��t��xP�X�t��x
Z����2�ø@ ���r   �  ���@ ���r 4�  ���!��|�,t�dt����Zu� ���t93�� ��v"��ع ����C� ���B� ���B�a� �a�����a$�� �a�<;t�2�ø)5�!�e
�
 � �t �h
3Ҍ�B��;�t3���u��GG�
 �u�2�ððT[;�t
� ��t#������ܝCC;�u����F ��[��u��ø �<u���7�����t�@ ���&�� u�
�t����@ �ذ�>c �t���3۴J�!�H����!�����<Rtn�Ctf;�s_�`�����&� 3�<�wt<�s��������<Rt@�t8;�s1�2�g5�!3ۿ
 V�r
� �^u�B�g�����<Rt��t;�r2�ðË��5�z
��2��3����؀<:u����ظ< ��ش�u2��t� �vK������t+��F�t#�؋�F�~�ش�u�,�!;�u�:�u�2���d�ÿ�����<t\< v�<'t3<"t/N�CuF��<r�<wފ�:��
v@�=
�C�C�;
�����Ь<t:�t�<ar<zw$_�����9
����>9
 u�>;
 t@�&=
�<ar<zw$_�9
�	���t!G���ċ;
�	���tG�����t	��t�Ê������h2���>
� �t���A
� �u�@ �ل t��ó�� ��@�/��2ҿ�
� �t����
� �u�¸@ ����x��y0 ���  � 2���v��� )�!��Ë֬</t<u��D� � � � r��t����F���!�Ȁ|:u!��� )�!��t/��~ v'�V ��_��A��!���\���2ҴG�!�մ;�!� r��P���;�!�Ѵ�!Xó��$_<Nt(��t	�ذ��w�ۀ��(�t� t	�����w��2�����<t
�<v��,t
�����"�؋˸@ ���6� �� ���� 2����$_<Fu���!2�á2
���
�ø���ؾ � �</r<9w��������
��2�À>2
r'�%�ֹ ��r��t��m����V�!� s����<r1��2۸���w�( ���6� �� � ����� ����2���À<t$�1���< w���$��< v�t��2��= v����ֹ �6rJ3�3�>�.��O�!s����2Ҁ|�/t�< v$_,@�д6�!=��t��R���XR��Z�2�+��s���6/
�J
��t2�������t&���ˋӉc
� �t��- r�_
�f�- s�c�a
�V���t���I�<-u�Q
�<=u�X
�8
���/
�: ���>a
 t �����_
�� ���������2 �a
u�� 2���ZP�0Xì�����_
�	������������� Ëc
��c
 ð�>(
u��H��q�>(
u�p�	��� �>(
u� ���Q ��6	�O�>(
u�����U��� �< u�߾�0 t��( t�|�  t�I� t�� � �����< u�ù �O��� �� �f���� �]�	�8
����8
 �\��t<t�ì<t< v�<,t�</t�<;t�N�V�< v<ar�<zw�d�_��^ì
�u��V�< v<,u��D�^$_<Hu�( �� �SQ3�3��,0r<	w���
 ���E��N���Y[�SQ3�3��<ar$_,0r<	~
,<
r<w	���
�E�ދ��Y[�V�</t< w��D� ^�P�
 3�3����0RA=  u�Z� ��X��@ �ؾb �'
��I � �&�'
2����2��0���ª��8 �9  � �3Ҍ�B��;�t���� �u�6
��@ �ءl �l ;�t���É/
�>'
��ôN�!�2��ô*�!ô,�!ô	�!ô�!�  