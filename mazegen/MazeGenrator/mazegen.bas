10 rem **********************
20 rem *** maze generator ***
30 rem **********************
40 mw=30:mh=18: rem *** maze widht and height (30*18)
50 dim mc(mw*mh-1,8): rem *** maze cell array
55 dim gc(mw-1):pc=0: rem *** cell group array and pointer for sidewinder
60 wl=10:xf=10:yf=10: rem *** wall length, maze screen offset
100 rem *****************
110 rem *** main loop ***
120 rem *****************
133 gosub 1030
135 gosub 2530
140 gosub 1430
150 end
1000 rem ***********************
1010 rem *** initialize maze ***
1020 rem ***********************
1030 i=0:for y=0 to mh-1:for x=0 to mw-1
1035 mc(i,4)=0:mc(i,5)=0:mc(i,6)=0:mc(i,7)=0
1040 mc(i,0)=i-mw:mc(i,1)=i+mw
1050 mc(i,2)=i-1:mc(i,3)=i+1
1060 if y=0 then mc(i,0)=-1
1070 if y=mh-1 then mc(i,1)=-1
1080 if x=0 then mc(i,2)=-1
1090 if x=mw-1 then mc(i,3)=-1
1100 i=i+1:next x:next y
1110 return
1200 rem ******************************
1210 rem *** print maze cell states ***
1220 rem ******************************
1230 scnclr:print "adjacent cells"
1240 for i=0 to mw*mh-1
1250 print using"idx: ## ";i,using "n:##";mc(i,0),using " s:##";mc(i,1),using " w:##";mc(i,2),using " e:##";mc(i,3)
1260 next i:print "connections"
1270 for i=0 to mw*mh-1
1280 print using"idx: ## ";i,using "n:##";mc(i,4),using " s:##";mc(i,5),using " w:##";mc(i,6),using " e:##";mc(i,7)
1290 next i
1300 return
1400 rem *****************************
1410 rem *** draw rect shaped maze ***
1420 rem *****************************
1430 screen 320,200,2:pen 1
1440 k=0:for y=0 to mh-1:for x=0 to mw-1
1450 if mc(k,4)=0 then line xf+x*wl,yf+y*wl,xf+x*wl+wl,yf+y*wl:rem *** top wall
1460 if mc(k,5)=0 then line xf+x*wl,yf+y*wl+wl,xf+x*wl+wl,yf+y*wl+wl:rem *** bottom wall
1470 if mc(k,6)=0 then line xf+x*wl,yf+y*wl,xf+x*wl,yf+y*wl+wl:rem *** left wall
1480 if mc(k,7)=0 then line xf+x*wl+wl,yf+y*wl,xf+x*wl+wl,yf+y*wl+wl:rem *** right wall
1490 k=k+1:next x:next y
1500 getkey a$
1510 screen close
1520 return
2000 rem *****************************
2010 rem *** binary tree algorithm ***
2020 rem *****************************
2030 i=0:for y=0 to mh-1:for x=0 to mw-1
2040 if x<mw-1 then begin
2050 : if y<mh-1 then begin
2060 :  j=int(rnd(0)*2)
2070 :  if j=0 and mc(i,5)=0 and mc(i,1)<>-1 then mc(i,5)=1:mc(mc(i,1),4)=1
2080 :  if j=1 and mc(i,7)=0 and mc(i,3)<>-1 then mc(i,7)=1:mc(mc(i,3),6)=1
2090 : bend:else begin
2100 :  mc(i,7)=1:mc(mc(i,3),6)=1:rem *** last row
2110 : bend
2120 bend:else begin
2130 :  if i<mw*mh-1 and y<mh-1 then mc(i,5)=1:mc(mc(i,1),4)=1:rem *** last column
2140 bend  
2150 i=i+1:next x:next y
2160 return
2200 rem ****************************
2210 rem *** sidewinder algorithm ***
2220 rem ****************************
2230 pc=-1:i=0
2240 for y=0 to mh-1:for x=0 to mw-1
2250 if y<mh-1 then begin:pc=pc+1:gc(pc)=i
2260 : if x<mw-1 then begin
2270 :  j=int(rnd(0)*2)
2280 :  if j=0 then begin
2290 :   c=int(rnd(0)*pc):mc(gc(c),5)=1:mc(mc(gc(c),1),4)=1
2300 :   pc=-1
2310 :  bend
2320 :  if j=1 then begin
2330 :   mc(i,7)=1:mc(mc(i,3),6)=1
2340 :  bend
2350 : bend:else begin
2360 :  c=int(rnd(0)*pc):mc(gc(c),5)=1:mc(mc(gc(c),1),4)=1
2370 :  pc=-1
2380 : bend 
2390 bend:else begin
2400 : if x<mw-1 then mc(i,7)=1:mc(mc(i,3),6)=1
2410 bend
2420 i=i+1:next x: next y
2430 return
2500 rem *****************************
2510 rem *** random walk algorithm ***
2520 rem *****************************
2530 pc=0:i=int(rnd(0)*mw*mh):mc(i,8)=1:x=0
2540 do
2550 do:j=int(rnd(0)*4):loop until mc(i,j)>-1
2560 if mc(mc(i,j),8)=0 then begin
2570 : mc(i,j+4)=1
2580 : if j=0 then mc(mc(i,j),5)=1
2590 : if j=1 then mc(mc(i,j),4)=1
2600 : if j=2 then mc(mc(i,j),7)=1 
2610 : if j=3 then mc(mc(i,j),6)=1 
2620 : mc(mc(i,j),8)=1:pc=pc+1
2630 bend
2635 i=mc(i,j):x=x+1
2640 loop until pc=mw*mh-1 or x=50000
2650 return