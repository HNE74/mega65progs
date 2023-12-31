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
!- xc,yc = crab x and y position
!- hc = horizontal crab speed
!- tt, tc = crab timer, crab spawns if tc > tt
!- fc = frame counter
!- rf[] = Reef locations
!- rh = Reef height
!- xw,yw = waste x and y position
!- sw = waste state: 0 = sitting, 1 = collected
!- nw = number of waste collected
!- sc = game score
!- sh = high score
!- sp = number of subs left
!- ox = oxygen gauge
!- c1 = last sprite sprite bump result
!- c2 = last sprite background bump result
!- gs = game state: 0 = running, 1 = player collided, 2 = all waste collected, 
!-                  3 = game over
!--------------------------------------
100 gosub 25030:rem declare vars and arrays
500 gosub 18030:rem setup sprite memory 
510 gosub 19830:rem read data
520 gosub 18330:rem init sprites for shark level

1000 rem *****************
1010 rem *** main loop ***
1020 rem *****************
1030 gosub 14030:rem show intro screen
1040 gosub 4030:rem init game
1050 do
1060 : gosub 16030:rem draw shark level arena
1070 : gosub 2030:rem start level loop
1080 loop until sp=0
1090 goto 1030

2000 rem ******************
2010 rem *** level loop ***
2020 rem ******************
2030 do
2040 : gosub 17030:rem init shark level
2050 : gosub 9030:rem place waste
2060 : gosub 5030:rem start game loop
2070 loop until sp=0 or gs=2
2080 : if gs=3 then gosub 12530:rem game over
2090 return

4000 rem *****************
4010 rem *** init game ***
4020 rem *****************
4030 sp=3:sc=0:lv=1:nw=0:cs=1
4040 for i=1 to 5
4050 : ys(i)=-1
4060 : movspr i,xs(i),ys(i)
4070 next
4090 xc=-1:yc=-1:movspr 6,xc,yc
4100 tc=0:hc=0:tt=500
4110 return

5000 rem *****************
5010 rem *** game loop ***
5020 rem *****************
5030 do
5040 : fc=fc+1
5050 : gosub 6030:rem handle sharks
5055 : gosub 6530:rem handle crab
5060 : gosub 7030:rem control submarine
5070 : gosub 8030:rem update sprites
5080 : gosub 5330:rem draw game state
5090 : gosub 10030:rem player collision check
5100 : gosub 9230:rem waste handling
5110 loop until gs>0
5115 if gs=2 then gosub 12030
5120 return

5300 rem ***********************
5310 rem *** draw game state ***
5320 rem ***********************
5330 vsync 100:cursor 7,0:color 5:print str$(lv)
5340 cursor 7,1:color 3:print str$(sc)
5350 cursor 35,0:color 7:print str$(sp)
5360 if ox<200 then color 10:else color 13
5370 cursor 35,1:print "    ":cursor 35,1:print str$(ox)
5380 if mod(fc,40)=0 then begin
5390 : if peek(2048+40*2)=193 then edma 3,40,194,2048+40*2:else edma 3,40,193,2048+40*2
5400 bend
5410 return

6000 rem *********************
6010 rem *** handle sharks ***
6020 rem *********************
6030 for i=1 to cs
6040 : if ys(i) >-1 and (xs(i)<=5 or xs(i)>=339) then ys(i)=-1:movspr i,xs(i),ys(i)
6050 : if ys(i) >-1 then begin
6060 :  if ys(i)>=200 then vs(i)=-(int(rnd(0)*2)+1):else if ys(i)<=85 then vs(i)=int(rnd(0)*2)+1
6070 :  if ys(i) >-1 then if mod(fc, ss(i))= 0 then begin
6080 :   if int(rnd(1)*lv)+1>1 and mod(fc,200)=0 then begin
6084 :     if xs(i)>xp and hs(i)>0 then hs(i)=-hs(i):fs(i)=fs(i)+2:else if xs(i)<xp and hs(i)<0 then hs(i)=-hs(i):fs(i)=fs(i)-2 
6088 :   bend
6089 :   xs(i)=xs(i)+hs(i):ys(i)=ys(i)+vs(i)
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

6500 rem ********************
6510 rem *** control crab ***
6520 rem ********************
6530 if yc=-1 then begin
6532 : tc=tc+1
6535 : if sw=0 and tc>tt then begin
6540 :  if xw>=255 then xc=0:hc=2:else xc=340:hc=-2
6550 :  yc=221:sound 3, 4000, 30, 1, 2000, 500, 1
6560 : bend
6565 bend
6566 if yc>=222 and mod(fc,5)=0 then begin
6567 : yc=yc+1:if yc>=240 then yc=-1:xc=-1
6568 bend
6570 if yc>-1 then if mod(fc,5)=0 then xc=xc+hc
6580 return

7000 rem *************************
7010 rem *** control submarine ***
7020 rem *************************
7030 n=joy(2):hp=0:vp=0
7040 if (n and 15)<>0 then begin
7050 : hp=dr(n and 15,0)
7060 : vp=dr(n and 15,1)
7070 bend
7080 if hp<>0 or vp<>0 then begin
7085 : if mod(fc,9)=0 then sound 1, 2000, 3, 1, 1000, 400, 1
7090 : if hp<>0 then begin
7095 :  if mod(fc,3)=0 then begin
7100 :   fp=fp+1
7110 :   if hp<0 and fp>6 then fp=4:else if hp>0 and fp>3 then fp=1
7115 :  bend
7120 : bend:else begin
7125 :  if mod(fc,3)=0 then begin
7130 :   fp=fp+1:if fp=4 then fp=1
7140 :   if fp=7 then fp=4
7145 :  bend
7150 : bend
7160 : xp=xp+hp:yp=yp+vp
7170 : if yp<65 then yp=65:else if yp>230 then yp=230
7180 : if yp=65 and sw=0 then ox=999
7190 : if xp<24 then xp=24:else if xp>311 then xp=311
7200 bend:else if vp=0 then begin 
7210 : if mod(fc,(10/(sw+1)))=0 then if yp<230 then yp=yp+1
7220 bend:
7230 return  

8000 rem **********************
8010 rem *** update sprites ***
8020 rem **********************
8030 poke $40000,fp:movspr 0,xp,yp
8050 for i=1 to cs
8060 : if ys(i)>-1 then begin
8070 :  poke $40000+2*i,fs(i)
8080 :  movspr i,xs(i),ys(i)
8090 : bend
8100 next
8110 if yc>-1 then if mod(fc,5)=0 then begin:cursor 0,6
8120 : if peek($4000c)=$f then poke $4000c,$10:else poke $4000c,$f
8125 : poke $4000d,$10
8130 : movspr 6,xc,yc
8140 bend
8150 c1=bump(1):c2=bump(2)
8160 return

9000 rem *******************
9010 rem *** place waste ***
9020 rem *******************
9030 yw=222
9040 do
9050 : xw=int(rnd(1)*296)+24
9060 : for i=0 to 3
9070 :  if xw+20>=rf(i)*8+24 and xw<=rf(i)*8+8*3+24 then xw=-1:i=3
9080 : next
9085 : if xw<=24 or xw>=290 then xw=-1
9090 loop until xw<>-1
9100 movspr 7,xw,yw:sprite 7,1,5
9110 return

9200 rem **********************
9210 rem *** waste handling ***
9220 rem **********************
9230 if sw=0 then begin 
9240 : if (c1 and 129)=129 then begin
9250 :   sound 2, 8000, 20, 0, 4000, 100, 2
9260 :   sprite 7,0:sprite 0,1,5
9270 :   sw=1:if yc>-1 then yc=222:hc=0
9275 :   movspr 6,xc,yc
9280 : bend
9290 bend:else begin
9300 : if yp=65 and xp>160 and xp<200 then begin
9310 :  sound 2, 8000, 8, 1, 4000, 100, 2
9320 :  gosub 9030
9330 :  sw=0:sc=sc+ox:sprite 0,1,7
9340 :  nw=nw+1:if nw=5 then gs=2
9350 :  for i=1 to nw:cursor 17+i,0
9360 :   print "{yellow}W"
9370 :  next
9380 :  tc=0
9390 : bend
9400 bend
9410 return

10000 rem ************************
10010 rem ***  collision check ***
10020 rem **********+*************
10030 if (c1 and 1)=1 then begin
10040 : if (c1 or 127)=127 then begin
10050 :  gosub 11030
10060 : bend
10070 bend
10071 if (c1 and 192)=192 then begin
10072 : gosub 11030
10073 bend
10080 if (c2 and 1)=1 and yp>100 then begin
10090 : gosub 11030
10100 : if sw=1 then sw=0:gosub 9030
10110 bend
10120 ox=ox-1:if ox<200 and mod(fc,20)=0 then sound 2,4000,10,0,3000,100,2
10130 if ox<=0 then gosub 11030
10140 return

11000 rem ************************
11010 rem *** player explosion ***
11020 rem ************************
11030 sound 1,350,80,1,,4,3
11035 poke $40000,$c:poke $40001,$10
11040 for i=1 to 30:sprite 0,1,i:vsync 0:next
11050 poke $40000,$d:poke $40001,$10
11060 for i=1 to 30:sprite 0,1,i:vsync 0:next
11070 poke $40000,$e:poke $40001,$10
11080 for i=1 to 30:sprite 0,1,i:vsync 0:next
11100 sprite 0,0:for i=1 to 30:vsync 0:next
11110 sp=sp-1:if sp=0 then gs=3:else gs=1
11120 return

12000 rem ***********************
12010 rem ***  level complete ***
12020 rem ***********************
12030 gosub 5330:for i=0 to 7:sprite i,0:next 
12040 cursor 3,5 :print "{reverse on}{green}UCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCI"
12050 cursor 3,6 :print "{reverse on}{125}                               {125}"
12060 cursor 3,7 :print "{reverse on}{125}  you have cleared the level,  {125}"
12070 cursor 3,8 :print "{reverse on}{125}                               {125}"
12080 cursor 3,9 :print "{reverse on}{125}            well done!         {125}"
12090 cursor 3,10:print "{reverse on}{125}                               {125}"
12100 cursor 3,11:print "{reverse on}{125} press fire button to proceed. {125}"
12110 cursor 3,12:print "{reverse on}{125}                               {125}"
12120 cursor 3,13:print "{reverse on}JCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCK"
12125 vol 15:tempo 25:PLAY "o4t2$cdefghc"
12130 n = joy(2)
12140 if n<>128 then goto 12130
12150 for i=1 to 10:vsync 0:next
12160 play:return

12500 rem *****************
12510 rem *** game over ***
12520 rem *****************
12530 gosub 5330:for i=0 to 7:sprite i,0:next 
12540 cursor 3,5 :print "{reverse on}{cyan}UCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCI"
12550 cursor 3,6 :print "{reverse on}{125}                               {125}"
12560 cursor 3,7 :print "{reverse on}{125} you have lost all your subs,  {125}"
12570 cursor 3,8 :print "{reverse on}{125}                               {125}"
12580 cursor 3,9 :print "{reverse on}{125}           game over!          {125}"
12590 cursor 3,10:print "{reverse on}{125}                               {125}"
12600 if sh<sc then begin
12610 sh=sc:cursor 3,11:print "{reverse on}{125}        a new highscore!       {125}"
12620 bend:else begin
12630 cursor 3,11:print "{reverse on}{125}   sorry, no new highscore.    {125}"
12640 bend
12650 cursor 3,12:print "{reverse on}{125}                               {125}"
12660 cursor 3,13:print "{reverse on}JCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCK"
12665 vol 15:tempo 25:PLAY "o4t2chagfed$c$c"
12670 n = joy(2)
12680 if n<>128 then goto 12670
12690 for i=1 to 10:vsync 0:next
12700 return

14000 rem *************************
14010 rem *** show intro screen ***
14020 rem *************************
14030 background 6:border 14:scnclr
14040 PRINT "                                        ";
14050 PRINT "  {yellow}UCCCCCCIUCI   UCIUCCCCCCI             ";
14060 PRINT "  B      BB B   B BB UCCI B             ";
14070 PRINT "  B UCCCCKB B   B BB B  B B             ";
14080 PRINT "  B B     B B   B BB B  BUK             ";
14090 PRINT "  {yellow}B JCCCCIB B   B BB JCCKJCI            ";
14100 PRINT "  B      BB B   B BB UCCCCIB            ";
14110 PRINT "  JCCCCI BB B   B BB B    BB            ";
14120 PRINT "  UCCCCK BB JCCCK BB JCCCCKB            ";
14130 PRINT "  JCCCCCCKJCCCCCCCKJCCCCCCCK            ";
14140 PRINT "     {162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}";    
14150 PRINT "          {reverse on} created by noltisoft in 2024 {reverse off}      ";
14160 PRINT "    {reverse on}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{reverse off}     ";    
14170 PRINT "            {light blue}UCCCCCCIUCCCCCCCIUCCCCCCCI  ";
14180 PRINT "            B      BB       BB       B  ";
14190 PRINT "            B UCCCCKB UCCCCCKB UCCCI B  ";
14200 PRINT "            B B     B B      B B   B B  ";
14210 PRINT "            B JCCCCIB JCCCCCIB JCCCK B  ";
14220 PRINT "            B      BB       BB       B  ";
14230 PRINT "            JCCCCI BB UCCCCCKB UCCCI B  ";
14240 PRINT "            UCCCCK BB JCCCCCIB B   B B  ";
14250 PRINT "            JCCCCCCKJCCCCCCCKJCK   JCK  ";
14260 PRINT "    {light blue}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}";    
14270 PRINT "        {light blue}{reverse on} press fire button to continue! {reverse off}";
14280 PRINT "        {light blue}{reverse on}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{162}{reverse off}"
14290 if sh>0 then begin
14300 : cursor 28,3:print "{light green}highscore:"
14310 : cursor 28,5:print "{light green}";sh
14320 bend
14330 j=int(rnd(1)*3)+2:fc=0
14340 vol 15:tempo 25:PLAY "o"+str$(j)+"t2aaaa.a.a$cdfaggggg.g.g$cegaaaa.a.abco"+str$(j+1)+"do"+str$(j)+"cage.d.d"
14350 n = joy(2)
14360 fc=fc+1
14370 if mod(fc,25000)=0 then BEGIN
14380 : j=int(rnd(1)*3)+2 
14390 : vol 15:tempo 25:PLAY "o"+str$(j)+"t2aaaa.a.a$cdfaggggg.g.g$cegaaaa.a.abco"+str$(j+1)+"do"+str$(j)+"cage.d.d"
14400 bend
14410 if n<>128 then goto 14350
14420 play:return

16000 rem ******************************
16010 rem *** draw shark level arena ***
16020 rem ******************************
16030 scnclr
16040 print "                {light gray}{127}{reverse on}{127}{reverse off}WWWWW{reverse on}{169}{reverse off}{169}"
16050 print "                 {127}{reverse on}{160}{160}{160}{160}{160}{reverse off}{169}"
16060 cursor 1,0:color 5:print "level:"
16070 cursor 1,1:color 3:print "score:"
16080 cursor 30,0:color 7:print "subs:"
16090 cursor 28,1:color 13:print "oxygen:"
16100 edma 3,40,193,2048+40*2
16110 edma 3,40,14,$FF80000+40*2
16120 for i=0 to 39
16130 : c@&(i,24)=8:t@&(i,24)=int(rnd(1)*3)+190
16140 next
16150 for i=0 to 3
16160 : rf(i)=int(rnd(1)*7)+10*i
16170 : if i>0 then begin
16180 :  if rf(i)-rf(i-1)<=6 then 16160
16190 : bend
16200 : rh=int(rnd(1)*10)+1
16210 : for j=1 to rh
16220 :  c@&(rf(i),24-j)=8:t@&(rf(i),24-j)=int(rnd(1)*3)+190
16230 :  c@&(rf(i)+1,24-j)=8:t@&(rf(i)+1,24-j)=int(rnd(1)*3)+190
16240 :  c@&(rf(i)+2,24-j)=8:t@&(rf(i)+2,24-j)=int(rnd(1)*3)+190
16250 : next j
16260 next i
16270 return

17000 rem ******************************
17010 rem *** initialize shark level ***
17020 rem ******************************
17030 xp=172:yp=65
17040 gs=0:ox=999:sw=0
17050 if nw=5 then begin
17060 : lv=lv+1:nw=0:tt=tt-50:if tt<100 then tt=100
17070 : if cs<5 and mod(lv+1,2)=0 then cs=cs+1
17080 bend 
17090 for i=1 to cs
17100 : ys(i)=-1
17110 : movspr i,xs(i),ys(i):sprite i,1
17120 next
17130 poke $40000,fp:movspr 0,xp,yp 
17140 sprite 0,1,7,0,0,0,1
17141 xc=-1:tc=0:yc=-1:hc=0:movspr 6,xc,yc:sprite 6,1,10
17150 c1=bump(1):c2=bump(2):c1=0:c2=0
17160 return

18000 rem ***************************
18010 rem *** setup sprite memory ***
18020 rem ***************************
18030 sys 65381: rem 40 column screen
18040 mem 1,0:rem reserve 8k in bank 4
18050 edma 3,64*13,0,$40000:rem spreicherbereich leeren
18060 poke $d06c,0:poke $d06d,0:rem bit 0-16 to 0 for $40000
18070 poke $d06e,128+4:rem sprptr16 (bit7) and bit 2 to 4 for $40000
18080 return

18300 rem ****************************************************
18310 rem *** init sprites for shark level, redefine chars ***
18320 rem ****************************************************
18330 poke $40000,$1:poke $40001,$10
18340 sprite 0,1,12,0,0,0,1
18350 for i=1 to 5
18360 : poke $40000+2*i,$7:poke $40000+2*i+1,$10
18370 : sprite i,1,3,0,0,0,1
18380 next
18385 poke $4000c,$f:poke $4000d,$10
18387 sprite 6,1,10,0,0,0,1
18390 poke $4000e,$b:poke $4000f,$10
18400 sprite 7,1,7,0,0,0,1
18410 sprcolor 1,12
18420 chardef 190,219,254,181,111,187,238,187,247
18430 chardef 191,91,238,181,127,246,221,239,117
18440 chardef 192,189,106,255,213,110,245,191,118
18450 chardef 193,51,204,0,51,204,0,51,204
18460 chardef 194,204,51,0,204,51,0,204,51
18470 return

19800 rem *****************
19810 rem *** read data ***
19820 rem *****************
19830 for i=0 to 8
19831 read dr(i,0):read dr(i,1)
19832 next
19839 for i=0 to 1023
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
21030 DATA 0,0,0,0,0,0,0,0,0
21040 DATA 0,0,0,0,0,0,0,0,0
21050 DATA 0,0,0,0,0,0,0,0,0
21060 DATA 0,0,0,0,170,0,2,150,128
21070 DATA 2,85,128,2,150,128,2,170,128
21080 DATA 3,235,192,2,190,128,2,170,128
21090 DATA 3,235,192,2,190,128,0,170,0,0

21100 rem ***********************************
21110 rem *** explosion sprite definition ***
21120 rem ***********************************
21130 rem *** explosion frame 1
21140 DATA 0,0,0,0,0,0,2,0,0
21150 DATA 0,0,8,0,34,0,2,0,32
21160 DATA 0,136,0,8,0,0,0,2,32
21170 DATA 8,128,0,0,8,136,0,0,0
21180 DATA 8,130,0,0,0,0,2,32,136
21190 DATA 8,0,0,0,130,32,0,0,0
21200 DATA 0,32,128,0,0,0,0,0,0,0
21220 rem *** explosion frame 2
21230 DATA 0,0,0,0,0,0,0,0,0
21240 DATA 0,0,0,0,2,0,2,0,0
21250 DATA 0,136,0,0,0,0,0,2,32
21260 DATA 8,128,0,0,8,128,0,0,0
21270 DATA 8,130,0,0,0,0,2,32,128
21280 DATA 0,0,0,0,2,0,0,0,0
21290 DATA 0,0,0,0,0,0,0,0,0,0
21310 rem *** explosion frame 3
21320 DATA 0,0,0,0,0,0,0,0,0
21330 DATA 0,0,0,0,0,0,0,0,0
21340 DATA 0,0,0,0,0,0,0,2,0
21350 DATA 0,128,0,0,8,0,0,0,0
21360 DATA 0,130,0,0,0,0,0,32,0
21370 DATA 0,0,0,0,0,0,0,0,0
21380 DATA 0,0,0,0,0,0,0,0,0,0

21400 rem ******************************
21410 rem *** crab sprite definition ***
21420 rem ******************************
21430 rem *** crab frame 1
21440 DATA 0,0,0,0,0,0,8,0,32
21450 DATA 42,0,168,34,0,136,34,130,136
21460 DATA 0,130,0,0,130,0,0,130,0
21470 DATA 10,170,160,170,170,170,170,235,170
21480 DATA 138,235,162,130,170,130,162,170,138
21490 DATA 2,170,128,10,40,160,40,65,40
21500 DATA 32,65,8,32,0,8,40,0,40,0
21510 rem *** crab frame 2
21520 DATA 0,0,0,32,0,8,32,0,8
21530 DATA 40,0,40,10,0,160,2,130,128
21540 DATA 0,130,0,0,130,0,0,130,0
21550 DATA 10,170,160,42,170,168,42,170,168
21560 DATA 42,235,168,34,235,136,162,170,138
21570 DATA 2,170,128,10,40,160,8,65,32
21580 DATA 8,65,32,8,20,32,40,0,40,0

25000 rem ****************************************
25010 rem *** init variables and define arrays ***
25020 rem ****************************************
25030 xp=100:yp=100:fp=3:fc=0:hp=0:vp=0:gs=0
25035 cs=1:xw=0:yw=0:sw=0:nw=0:sc=0:c1=0:c2=0:sh=0
25040 lv=1:sp=3:ox=999:xc=0:yc=0:hc=0:tc=0
25045 dim xs(6):dim ys(6):dim fs(6):dim hs(6):dim vs(6):dim ss(6)
25050 dim dr(8,1):dim rf(3)
25090 return
