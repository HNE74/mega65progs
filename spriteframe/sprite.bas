!--------------------------------------------------
!- Samstag, 16. Dezember 2023 19:45:10
!- Import of : 
!- c:\temp\sprite.prg
!- Unknown Machine
!--------------------------------------------------
10 print"{clear}"
20 gosub20000
30 gosub10000
40 pr=1:rem player rechts von 0-5
50 pl=6:rem player links  von 6-11
51 s=150:rem x-pos. start
52 z=0:rem zaehler fuer verzoegerung
100 xp=s:rem x-pos vom player
110 geta$
130 POKE 4088,0
140 ifz>150thenbegin
150 ifxp>320thenbegin
160 xp=320
170 z=0:goto300
180 bend:elsexp=xp+4
190 ifpr>5thenpr=1:elsepr=pr+1
200 z=0
210 bend
220 z=z+1
230 ifa$=""then110
240 rspcolor0,0,3,1,0,0,0:rem sprite ausschalten
250 end
300 geta$
310 movspr0,xp,211
320 sprdef$40000,$1000+pl
330 ifz>150thenbegin
340 ifxp<32thenbegin
350 xp=32
360 z=0:goto110
370 bend:elsexp=xp-4
380 ifpl>11thenpl=7:elsepl=pl+1
390 z=0
400 bend
410 z=z+1
420 ifa$=""then300
430 rspcolor0,0,3,1,0,0,0:rem sprite ausschalten
500 end

900 REM *** read sprite data ***
905 bank 4:restore
910 for i=$0 to $7D:read d
920 poke $40000+i,d
930 next i
935 bank 0
940 return

1010 DATA 0,24,0
1020 DATA 0,60,0
1030 DATA 1,255,128
1040 DATA 0,60,0
1050 DATA 0,60,0
1060 DATA 0,60,0
1070 DATA 0,24,0
1080 DATA 0,24,0
1090 DATA 0,24,0
1100 DATA 0,126,0
1110 DATA 3,255,192
1120 DATA 2,24,64
1130 DATA 2,24,64
1140 DATA 0,24,0
1150 DATA 0,60,0
1160 DATA 0,102,0
1170 DATA 0,195,0
1180 DATA 1,129,128
1190 DATA 1,0,128
1200 DATA 0,0,0
1210 DATA 0,0,0

1240 DATA 0,0,0
1250 DATA 0,24,0
1260 DATA 0,60,0
1270 DATA 1,255,128
1280 DATA 0,60,0
1290 DATA 0,60,0
1300 DATA 0,126,0
1310 DATA 0,24,0
1320 DATA 2,24,64
1330 DATA 2,126,64
1340 DATA 3,255,192
1350 DATA 0,24,0
1360 DATA 0,24,0
1370 DATA 0,24,0
1380 DATA 0,60,0
1390 DATA 0,102,0
1400 DATA 0,66,0
1410 DATA 0,66,0
1420 DATA 1,195,128
1430 DATA 0,0,0
1440 DATA 0,0,0

10000 print"{black}"
10005 cursor0,21:print"{cm m}":cursor79,21:print"{cm g}"
10010 cursor0,22:print"{cm m}":cursor79,22:print"{cm g}"
10020 forx=1to78:cursorx,22:print"{cm p}":nextx
10030 return
20000 mem1,0:rem reserve 8k in bank 4
20010 edma3,64*13,0,$40000:rem spreicherbereich leeren
20020 rem bload"spr.spr",p($40000+$40),r,b4:rem place sprite data at $40040
20025 gosub 900
20030 poke$d06c,0:poke$d06d,0:rem bit 0-16 auf 0 setzen fuer $40000
20040 poke$d06e,128+4:rem sprptr16 (bit7) und bit 2 auf 4 setzten fuer $40000
20050 sprite0,1,3,1,0,0,0
20070 scnclr
20080 return
