
10 gosub 30030
20 gosub 29030
30 sys 65381:background 0:scnclr:gosub 3030
40 gosub 530
50 gosub 2130
90 end
500 rem ************************
510 rem *** show maze window ***
520 rem ************************
530 poke as+xp+yp*wd,81:poke ac+xp+yp*wd,5
540 for i=0 to ec
550   poke as+xe(i)+ye(i)*wd,ez:poke ac+xe(i)+ye(i)*wd,6
560 next 
570 for i=0 to 6
571   aw=ac+xp-3+(yp-3+i)*wd
572   edma 0, 7, aw, cm+16+(i+12)*40
580   aw=as+xp-3+(yp-3+i)*wd
590   edma 0, 7, aw, sc+16+(i+12)*40
600 next 
610 return
700 rem ********************
710 rem *** move enemies ***
720 rem ********************
730 for i=0 to ec
740   if ed(i)=-1 then ew=102: else ew=peek(as+xe(i)+xm(ed(i))+(ye(i)+ym(ed(i)))*wd)
750   rem *** enemy may change direction at crossing
760   if ed(i)<>-1 then begin
770     if (ed(i)=0 or ed(i)=1) then begin
780        if peek(as+xe(i)+xm(2)+(ye(i)+ym(2))*wd)<>102 or peek(as+xe(i)+xm(3)+(ye(i)+ym(3))*wd)<>102 then ew=102
790     bend: else begin
800        if peek(as+xe(i)+xm(0)+(ye(i)+ym(0))*wd)<>102 or peek(as+xe(i)+xm(1)+(ye(i)+ym(1))*wd)<>102 then ew=102
810     bend
820   bend
830   rem *** enemy changes direction
840   if ew=102 or ew=ez then begin
850     ed(i)=-1
860     rem *** enemy direction change to chase player
870     if ph=0 then begin
880       if yp<ye(i) and peek(as+xe(i)+xm(0)+(ye(i)+ym(0))*wd)<>102 and peek(as+xe(i)+xm(0)+(ye(i)+ym(0))*wd)<>ez then ed(i)=0
890       if yp>ye(i) and peek(as+xe(i)+xm(1)+(ye(i)+ym(1))*wd)<>102 and peek(as+xe(i)+xm(1)+(ye(i)+ym(1))*wd)<>ez then ed(i)=1
900       if (ed(i)<>-1 and int(rnd(0)*2)=0) or ed(i)=-1 then begin
910         if xp<xe(i) and peek(as+xe(i)+xm(2)+(ye(i)+ym(2))*wd)<>102 and peek(as+xe(i)+xm(2)+(ye(i)+ym(2))*wd)<>ez then ed(i)=2
920         if xp>xe(i) and peek(as+xe(i)+xm(3)+(ye(i)+ym(3))*wd)<>102 and peek(as+xe(i)+xm(3)+(ye(i)+ym(3))*wd)<>ez then ed(i)=3
930       bend
940     bend:else begin
950       if yp<ye(i) and peek(as+xe(i)+xm(1)+(ye(i)+ym(1))*wd)<>102 and peek(as+xe(i)+xm(1)+(ye(i)+ym(1))*wd)<>ez then ed(i)=1
960       if yp>ye(i) and peek(as+xe(i)+xm(0)+(ye(i)+ym(0))*wd)<>102 and peek(as+xe(i)+xm(0)+(ye(i)+ym(0))*wd)<>ez then ed(i)=0
970       if (ed(i)<>-1 and int(rnd(0)*2)=0) or ed(i)=-1 then begin
980         if xp<xe(i) and peek(as+xe(i)+xm(3)+(ye(i)+ym(3))*wd)<>102 and peek(as+xe(i)+xm(3)+(ye(i)+ym(3))*wd)<>ez then ed(i)=3
990         if xp>xe(i) and peek(as+xe(i)+xm(2)+(ye(i)+ym(2))*wd)<>102 and peek(as+xe(i)+xm(2)+(ye(i)+ym(2))*wd)<>ez then ed(i)=2
1000       bend
1010     bend
1020     rem *** if no valid enemy direction found select random one
1030       if ed(i)=-1 then begin
1040       for j=1 to 0:k=int(rnd(0)*4)
1050         if peek(as+xe(i)+xm(k)+(ye(i)+ym(k))*wd)<>102 and peek(as+xe(i)+xm(k)+(ye(i)+ym(k))*wd)<>ez then ed(i)=k:j=0
1060       next j
1070     bend
1080   bend
1090   rem *** move enemy
1100   if ed(i)>-1 then begin
1110     poke as+xe(i)+ye(i)*wd,eh(i):poke ac+xe(i)+ye(i)*wd,el(i)
1120     eh(i)=peek(as+xe(i)+xm(ed(i))+(ye(i)+ym(ed(i)))*wd)
1125     el(i)=peek(ac+xe(i)+xm(ed(i))+(ye(i)+ym(ed(i)))*wd)
1130     xe(i)=xe(i)+xm(ed(i)):ye(i)=ye(i)+ym(ed(i))
1140   bend
1150   if xe(i)=xp and ye(i)=yp then begin
1160     if ph>0 then gosub 1430: else gs=1
1170   bend
1180 next i
1190 return
1400 rem *********************
1410 rem *** respawn enemy ***
1420 rem *********************
1430 ps=ps+25:do
1440   xe(i)=int(rnd(0)*wd):ye(i)=int(rnd(0)*ht)
1450   ew=peek(as+xe(i)+ye(i)*wd)
1460 loop until (ew=32 or ew=46 or ew=88) and xe(i)<>xp and ye(i)<>ye and abs(xp-xe(i))>5 and abs(yp-ye(i))>5
1470 eh(i)=ew:el(i)=peek(ac+xe(i)+ye(i)*wd)
1480 return
1500 rem *******************
1510 rem *** move player ***
1520 rem *******************
1530 aw=peek(as+xp+xm(mp)+(yp+ym(mp))*wd)
1540 if aw<>102 then begin 
1550   poke as+xp+yp*wd,32
1560   xp=xp+xm(mp):yp=yp+ym(mp)
1570   if aw=46 then ps=ps+1:pc=pc+1:goto 1680
1580   if aw=88 then ps=ps+1:pc=pc+1:ph=100:goto 1680
1590   if aw=ez then begin
1600     if ph=0 then gs=1:else begin
1610       rem *** enemy munched
1620       for i=0 to ec
1630         if xe(i)=xp and ye(i)=yp then gosub 1430
1640       next i
1650     bend
1660  bend
1670 bend
1680 return
1700 rem **********************
1710 rem *** control player ***
1720 rem **********************
1730 if ct=0 then begin
1735   get a$
1740   if a$="w" and yp>2 then mp=0:goto 1780
1750   if a$="s" and yp<17 then mp=1:goto 1780
1760   if a$="a" and xp>2 then mp=2:goto 1780
1770   if a$="d" and xp<17 then mp=3 
1780 bend:else begin
1790   cc=joy(2) and 15
1800   if cc=1 then mp=0:goto 1840
1810   if cc=3 then mp=3:goto 1840
1820   if cc=5 then mp=1:goto 1840
1830   if cc=7 then mp=2
1840 bend
1850 return   
2100 rem **********************  
2110 rem *** main game loop ***
2120 rem **********************
2130 do
2140   if ph>0 then ph=ph-1:border 2:else border 7
2150   gosub 1730:rem *** player movment
2170   gosub 1530:rem *** player movement
2180   rem *** enemy movement
2190   et=et+1
2200   if et=5 then gosub 730:et=0
2210   gosub 530
2220   sleep 0.1
2225   if pc=ls then gs=2:rem *** level completed
2230 loop until gs<>0
2240 return
3000 rem ************************
3010 rem *** Show game screen ***
3020 rem ************************
3030 PRINT ""
3040 PRINT "            {pink}m   e   g   a{light green}"
3050 PRINT ""
3060 PRINT "    {reverse on}  {reverse off} {reverse on}  {reverse off} {reverse on} {reverse off}  {reverse on} {reverse off} {reverse on} {reverse off}   {reverse on} {reverse off} {reverse on}    {reverse off} {reverse on} {reverse off}  {reverse on} {reverse off} {reverse on} {reverse off}   {reverse on} "
3070 PRINT "    {reverse on}     {reverse off} {reverse on} {reverse off}  {reverse on} {reverse off} {reverse on}  {reverse off}  {reverse on} {reverse off} {reverse on} {reverse off}    {reverse on} {reverse off}  {reverse on} {reverse off} {reverse on} {reverse off}   {reverse on} "
3080 PRINT "    {reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off}  {reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off}    {reverse on}    {reverse off}  {reverse on}   "
3090 PRINT "    {reverse on} {reverse off}   {reverse on} {reverse off} {reverse on} {reverse off}  {reverse on} {reverse off} {reverse on} {reverse off}  {reverse on}  {reverse off} {reverse on} {reverse off}    {reverse on} {reverse off}  {reverse on} {reverse off}   {reverse on} "
3100 PRINT "    {reverse on} {reverse off}   {reverse on} {reverse off} {reverse on}    {reverse off} {reverse on} {reverse off}   {reverse on} {reverse off} {reverse on}    {reverse off} {reverse on} {reverse off}  {reverse on} {reverse off}   {reverse on} "
3110 PRINT ""
3120 PRINT "      {light gray} created by noltisoft in 2023{gray}"
3130 PRINT ""
3140 PRINT "               {172}{162}{162}{162}{162}{162}{162}{162}{187}"
3150 PRINT "               {reverse on}{161}{reverse off}       {161}"
3160 PRINT "               {reverse on}{161}{reverse off}       {161}"
3170 PRINT "               {reverse on}{161}{reverse off}       {161}"
3180 PRINT "               {reverse on}{161}{reverse off}       {161}"
3190 PRINT "               {reverse on}{161}{reverse off}       {161}"
3200 PRINT "               {reverse on}{161}{reverse off}       {161}"
3210 PRINT "               {reverse on}{161}{reverse off}       {161}"
3220 PRINT "               {188}{reverse on}{162}{162}{162}{162}{162}{162}{162}{reverse off}{190}"
3230 PRINT ""
3240 PRINT "    {green}{176}CCCCCCCC{178}CCCCCCCCCCCC{178}CCCCCCC{174}"
3250 PRINT "    Blevel:00Bscore:000000Blives:0B"
3260 PRINT "    {173}CCCCCCCC{177}CCCCCCCCCCCC{177}CCCCCCC{189}"
3280 return
29000 rem ************************
29010 rem *** define world map ***
29020 rem ************************
29030 for i=0 to ht-1:for j=0 to wd-1
29040   mt$=mid$(mp$(i),j+1,1)
29050   if mt$="#" then poke as+j+wd*i,102:poke ac+j+wd*i,1
29060   if mt$="." then poke as+j+wd*i,46:poke ac+j+wd*i,2:ls=ls+1
29070   if mt$=" " then poke as+j+wd*i,32:poke ac+j+wd*i,0
29075   if mt$="o" then poke as+j+wd*i,88::poke ac+j+wd*i,3
29080 next j: next i 
29090 return
30000 rem ***********************************
30010 rem *** define variables and arrays ***
30020 rem ***********************************
30030 dim mp$(29)
30040 mp$(0)= "####################"
30050 mp$(1)= "####################"
30060 mp$(2)= "####################"
30070 mp$(3)= "###..............###"
30080 mp$(4)= "###.###.####.###.###"
30090 mp$(5)= "###.#o.........#.###"
30100 mp$(6)= "###.#.##### ##.#.###"
30110 mp$(7)= "###.#.#......#.#.###"
30120 mp$(8)= "###.....##.#...#.###"
30130 mp$(9)= "###.#.#.##.#.#.#.###"
30140 mp$(10)="###.#.#.#..#.#.#.###"
30150 mp$(11)="###.#...#.##...#.###"
30160 mp$(12)="###.#.#......#.#.###"
30170 mp$(13)="###.#.###.####.#.###"
30180 mp$(14)="###.#.........o#.###"
30190 mp$(15)="###.###.####.###.###"
30200 mp$(16)="###..............###"
30210 mp$(17)="####################"
30220 mp$(18)="####################"
30230 mp$(19)="####################"
30240 wd=20:ht=20: rem map width and height
30245 ct=1:cc=0: rem control type (0=keyboard, 1=joystik port 2), control code
30250 as=$8000000:ac=as+wd*ht:sc=$0800:cm=$FF80000: rem screen and attic ram
30260 aw=0:gs=0: rem attic window, game state (0=playing, 1=dead)
30270 mt$="": rem read map tile
30280 xp=3:yp=3:ph=0:ps=0:pc=0:ls=0: rem player position, player is hunter flag, player score, pills collected, level score
30290 dim ed(1):ed(0)=-1:ed(1)=-1:ew=0: rem enemy direction index, char of next enemy position 
30300 dim xe(1):dim ye(1):dim eh(1):dim el(1):ec=1:ez=42: rem enemy positions, hidden chars and count, enemy char
30310 et=0: rem ticks counter for enemy movement
30320 xe(0)=3:ye(0)=16:xe(1)=16:ye(1)=16: rem enemy positions
30330 eh(0)=46:eh(1)=46: rem chars hidden by enemy
30340 dim xm(3):dim ym(3):mp=0: rem N, S, W, E
30350 xm(0)=0:xm(1)=0:xm(2)=-1:xm(3)=1: rem horizontal move vectors
30360 ym(0)=-1:ym(1)=1:ym(2)=0:ym(3)=0: rem vertical move vectors
30370 return
