!- Sub Sea 
!--------------------------------------
!- Variables:
!- xp,yp = player x and y position
!- hp,vp = player horizontal and vertical speed
!- dr[a,b] = player directions a=direction, b=xdelta, ydelta
!- fp = player sprite frame
!- xs[],ys[] = shark x and y position
!- fs[] = shark sprite frame
!- hs[] = shark horizontal direction
!- vs[] = shark vertical direction
!- ss[] = shark speed frame
!- cs = shark counter
!- ns = shark index
!- fc = frame counter
!- rf[] = Reef locations
!- rh = Reef height
!--------------------------------------
100 gosub 25030:rem declare vars and arrays
500 gosub 18030:rem setup sprite memory 
510 gosub 19830:rem read data
520 gosub 18330:rem init sprites for shark level

1000 rem *****************
1010 rem *** main loop ***
1020 rem *****************
1021 gosub 14000:rem show intro screen
1030 gosub 17030:rem init shark level
1031 rem getkey a$:goto 1030
1040 gosub 5000:rem start game loop
4990 end

5000 rem *****************
5010 rem *** game loop ***
5020 rem *****************
5030 fc=fc+1
5040 gosub 6030
5050 gosub 7030
5060 gosub 8030
5100 goto 5030

6000 rem *********************
6010 rem *** handle sharks ***
6020 rem *********************
6030 for i=1 to cs
6040 : if ys(i) >-1 and (xs(i)<=5 or xs(i)>=339) then ys(i)=-1:movspr i,xs(i),ys(i)
6050 : if ys(i) >-1 then begin
6060 :  if ys(i)>=200 then vs(i)=-(int(rnd(0)*2)+1):else if ys(i)<=70 then vs(i)=int(rnd(0)*2)+1
6070 :  if ys(i) >-1 then if mod(fc, ss(i))= 0 then begin
6080 :   xs(i)=xs(i)+hs(i):ys(i)=ys(i)+vs(i)
6090 :   if mod(xs(i),4)=0 then begin
6100 :    if fs(i)=9 then fs(i)=10:else if fs(i)=10 then fs(i)=9
6110 :    if fs(i)=7 then fs(i)=8:else if fs(i)=8 then fs(i)=7
6120 :   bend
6130 :  bend
6140 : bend:else begin
6150 :  j=int(rnd(1)*50)
6160 :  if j=0 then ns=i:gosub 6330
6170 : bend
6180 next
6190 return

6300 rem *******************
6310 rem *** spawn shark ***
6320 rem *******************
6330 ys(ns)=int(rnd(1)*110)+90
6340 j=int(rnd(1)*2)
6350 if j=0 then begin
6360 : hs(ns)=-(int(rnd(0)*2)+1):fs(ns)=9:xs(ns)=338
6370 bend:else begin
6380 : hs(ns)=int(rnd(0)*2)+1:fs(ns)=7:xs(ns)=6
6390 bend
6400 vs(ns)=0:j=int(rnd(1)*3)
6410 if j=0 then begin
6420 : vs(ns)=-(int(rnd(0)*2)+1)
6430 bend:else if j=1 then begin
6440 : vs(ns)=int(rnd(0)*2)+1
6450 bend
6460 ss(ns)=int(rnd(1)*3)+1
6470 return

7000 rem *************************
7010 rem *** control submarine ***
7020 rem *************************
7030 n=joy(2):hp=0:vp=0
7040 if (n and 15)<>0 then begin
7050 : hp=dr(n and 15,0)
7060 : vp=dr(n and 15,1)
7070 bend
7080 if hp<>0 or vp<>0 then begin
7090 : if hp<>0 then begin 
7100 :  fp=fp+1
7110 :  if hp<0 and fp>6 then fp=4:else if hp>0 and fp>3 then fp=1
7120 : bend:else begin
7130 :  fp=fp+1:if fp=4 then fp=1
7140 :  if fp=7 then fp=4
7150 : bend
7160 : xp=xp+hp:yp=yp+vp
7170 : if yp<65 then yp=65:else if yp>230 then yp=230
7180 : if xp<24 then xp=24:else if xp>311 then xp=311
7190 bend:else if vp=0 then begin 
7200 : if mod(fc,10)=0 then if yp<230 then yp=yp+1
7210 bend
7220 return  

8000 rem **********************
8010 rem *** update sprites ***
8020 rem **********************
8030 vsync 0
8040 poke $40000,fp:movspr 0,xp,yp
8050 for i=1 to cs
8060 : if ys(i)>-1 then begin
8070 :  poke $40000+2*i,fs(i)
8080 :  movspr i,xs(i),ys(i)
8090 : bend
8100 next
8105 movspr 7,100,100
8110 return


14000 rem *************************
14010 rem *** show intro screen ***
14020 rem *************************
14030 scnclr
14040 return

16000 rem ******************************
16010 rem *** draw shark level arena ***
16020 rem ******************************
16030 scnclr
16040 print "                {light gray}{127}{reverse on}{127}{reverse off}WWWW{reverse on}{169}{reverse off}{169}"
16050 print "                 {127}{reverse on}{160}{160}{160}{160}{reverse off}{169}"
16060 for i=0 to 39
16070 : c@&(i,2)=14:t@&(i,2)=85
16080 : c@&(i,3)=14:t@&(i,3)=73
16090 : c@&(i,24)=7:t@&(i,24)=230
16100 next
16110 for i=0 to 3
16120 : rf(i)=int(rnd(1)*7)+10*i
16130 : if i>0 then begin
16140 :  if rf(i)-rf(i-1)<=6 then 16120
16150 : bend
16160 : rh=int(rnd(1)*10)+1
16170 : for j=1 to rh
16180 :  c@&(rf(i),24-j)=7:t@&(rf(i),24-j)=230
16190 :  c@&(rf(i)+1,24-j)=7:t@&(rf(i)+1,24-j)=230
16200 :  c@&(rf(i)+2,24-j)=7:t@&(rf(i)+2,24-j)=230
16210 : next j
16220 next i
16230 return

17000 rem ******************************
17010 rem *** initialize shark level ***
17020 rem ******************************
17030 xp=172:yp=65:gosub 16030
17040 for i=1 to cs:ys(i)=-1:next
17050 poke $40000,fp:movspr 0,xp,yp 
17070 return

18000 rem ***************************
18010 rem *** setup sprite memory ***
18020 rem ***************************
18030 sys 65381: rem 40 column screen
18040 mem 1,0:rem reserve 8k in bank 4
18050 edma 3,64*13,0,$40000:rem spreicherbereich leeren
18060 poke $d06c,0:poke $d06d,0:rem bit 0-16 to 0 for $40000
18070 poke $d06e,128+4:rem sprptr16 (bit7) and bit 2 to 4 for $40000
18080 return

18300 rem ***********************************
18310 rem *** init sprites for shark level ***
18320 rem ***********************************
18330 poke $40000,$1:poke $40001,$10
18340 sprite 0,1,12,1,0,0,1
18350 for i=1 to cs
18360 : poke $40000+2*i,$7:poke $40000+2*i+1,$10
18370 : sprite i,1,3,1,0,0,1
18380 next
18385 poke $4000e,$b:poke $4000f,$10
18388 sprite 7,1,7,1,0,0,1
18390 return

19800 rem *****************
19810 rem *** read data ***
19820 rem *****************
19830 for i=0 to 8
19831 read dr(i,0):read dr(i,1)
19832 next
19839 for i=0 to 702
19840 read d:poke $40040+i,d
19850 next
19860 return

19900 rem ***********************************
19910 rem *** player direction definition ***
19920 rem ***********************************
19930 data 0,0,0,-1,1,-1,1,0,1,1,0,1,-1,1,-1,0,-1,-1

20000 REM ***********************************
20001 REM *** submarine sprite definition ***
20002 REM ***********************************
20005 REM *** right frame 1
20010 DATA 0,0,0,0,0,0,0,10,0
20020 DATA 0,11,0,0,43,0,0,43,0
20030 DATA 0,43,128,128,170,128,160,169,84
20040 DATA 34,169,85,42,170,149,10,170,170
20050 DATA 41,153,154,41,153,154,170,170,171
20060 DATA 138,170,175,2,170,172,2,171,252
20070 DATA 2,191,240,0,170,128,0,0,0,0
20090 REM *** right frame 2
20100 DATA 0,0,0,0,0,0,0,10,0
20110 DATA 0,11,0,0,43,0,0,43,0
20120 DATA 0,43,128,0,170,128,128,169,84
20130 DATA 162,169,85,42,170,149,10,170,170
20140 DATA 41,153,154,169,153,154,138,170,171
20150 DATA 10,170,175,2,170,172,2,171,252
20160 DATA 2,191,240,0,170,128,0,0,0,0
20180 REM *** right frame 3
20190 DATA 0,0,0,0,0,0,0,10,0
20200 DATA 0,11,0,0,43,0,0,43,0
20210 DATA 0,43,128,0,170,128,0,169,84
20220 DATA 2,169,85,170,170,149,10,170,170
20230 DATA 169,153,154,9,153,154,10,170,171
20240 DATA 10,170,175,2,170,172,2,171,252
20250 DATA 2,191,240,0,170,128,0,0,0,0
20270 REM *** left frame 1
20280 DATA 0,0,0,0,0,0,0,160,0
20290 DATA 0,224,0,0,232,0,0,232,0
20300 DATA 2,232,0,2,170,2,21,106,10
20310 DATA 85,106,136,86,170,168,170,170,160
20320 DATA 166,102,104,166,102,104,234,170,170
20330 DATA 250,170,162,58,170,128,63,234,128
20340 DATA 15,254,128,2,170,0,0,0,0,0
20360 REM *** left frame 2
20370 DATA 0,0,0,0,0,0,0,160,0
20380 DATA 0,224,0,0,232,0,0,232,0
20390 DATA 2,232,0,2,170,0,21,106,2
20400 DATA 85,106,138,86,170,168,170,170,160
20410 DATA 166,102,104,166,102,106,234,170,162
20420 DATA 250,170,160,58,170,128,63,234,128
20430 DATA 15,254,128,2,170,0,0,0,0,0
20450 REM *** left frame 3
20460 DATA 0,0,0,0,0,0,0,160,0
20470 DATA 0,224,0,0,232,0,0,232,0
20480 DATA 2,232,0,2,170,0,21,106,0
20490 DATA 85,106,128,86,170,170,170,170,160
20500 DATA 166,102,106,166,102,96,234,170,160
20510 DATA 250,170,160,58,170,128,63,234,128
20520 DATA 15,254,128,2,170,0,0,0,0,0

20600 REM *******************************
20601 REM *** shark sprite definition ***
20602 REM *******************************
20605 REM *** right frame 1
20610 DATA 0,0,0,2,128,0,2,160,0
20620 DATA 0,160,0,128,168,0,128,40,0
20630 DATA 160,42,0,160,170,128,162,170,96
20640 DATA 42,102,88,42,102,170,170,169,170
20650 DATA 162,154,84,128,170,160,128,2,128
20660 DATA 0,10,160,0,8,32,0,8,32
20670 DATA 0,0,0,0,0,0,0,0,0,0
20690 REM *** right frame 2
20700 DATA 0,0,0,2,128,0,2,160,0
20710 DATA 0,160,0,32,168,0,32,40,0
20720 DATA 32,42,0,32,170,128,34,170,96
20730 DATA 42,102,88,42,102,170,42,169,170
20740 DATA 34,154,84,32,170,160,32,2,128
20750 DATA 0,10,160,0,8,32,0,32,8
20760 DATA 0,0,0,0,0,0,0,0,0,0
20780 REM *** left frame 1
20790 DATA 0,0,0,0,2,128,0,10,128
20800 DATA 0,10,0,0,42,2,0,40,2
20810 DATA 0,168,10,2,170,10,9,170,138
20820 DATA 37,153,168,170,153,168,170,106,170
20830 DATA 21,166,138,10,170,2,2,128,2
20840 DATA 10,160,0,8,32,0,8,32,0
20850 DATA 0,0,0,0,0,0,0,0,0,0
20870 REM *** left frame 2
20880 DATA 0,0,0,0,2,128,0,10,128
20890 DATA 0,10,0,0,42,8,0,40,8
20900 DATA 0,168,8,2,170,8,9,170,136
20910 DATA 37,153,168,170,153,168,170,106,168
20920 DATA 21,166,136,10,170,8,2,128,8
20930 DATA 10,160,0,8,32,0,32,8,0
20940 DATA 0,0,0,0,0,0,0,0,0,0

21000 rem ************************************
21010 rem *** nuke waste sprite definition ***
21020 rem ************************************
21030 DATA 2,170,128,10,255,160,11,255,224
21040 DATA 43,255,232,42,255,168,42,170,168
21050 DATA 42,170,168,42,170,168,42,150,168
21060 DATA 42,150,168,42,150,16842,85,168
21070 DATA 42,85,168,42,170,168,37,105,88
21080 DATA 41,105,104,41,105,104,42,105,168
21090 DATA 10,170,160,2,170,128,0,0,0,0

25000 rem ****************************************
25010 rem *** init variables and define arrays ***
25020 rem ****************************************
25030 xp=100:yp=100:fp=3:fc=0:hp=0:vp=0
25035 cs=6
25045 dim xs(cs):dim ys(cs):dim fs(cs):dim hs(cs):dim vs(cs):dim ss(cs)
25050 dim dr(8,1):dim rf(3)
25090 return
