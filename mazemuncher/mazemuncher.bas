
10 gosub 30030
20 gosub 29030
30 sys 65381:scnclr
40 gosub 530
50 gosub 2030
90 end
500 rem ************************
510 rem *** show maze window ***
520 rem ************************
530 poke as+xp+yp*wd,81
540 for i=0 to ec
550   poke as+xe(i)+ye(i)*wd,ez
560 next 
570 for i=0 to 6
580   aw=as+xp-3+(yp-3+i)*wd
590   edma 0, 7, aw, sc+i*40
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
1110     poke as+xe(i)+ye(i)*wd,eh(i)
1120     eh(i)=peek(as+xe(i)+xm(ed(i))+(ye(i)+ym(ed(i)))*wd)
1130     xe(i)=xe(i)+xm(ed(i)):ye(i)=ye(i)+ym(ed(i))
1140   bend
1150   if xe(i)=xp and ye(i)=yp then begin
1160     if ph>0 then gosub 1430: else a$="x"
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
1470 eh(i)=ew
1480 return
1500 rem *******************
1510 rem *** move player ***
1520 rem *******************
1530 aw=peek(as+xp+xm(mp)+(yp+ym(mp))*wd)
1540 if aw<>102 then begin 
1550   poke as+xp+yp*wd,32
1560   xp=xp+xm(mp):yp=yp+ym(mp)
1570   if aw=46 then ps=ps+1:goto 1680
1580   if aw=88 then ps=ps+1:ph=100:goto 1680
1590   if aw=ez then begin
1600     if ph=0 then a$="x":else begin
1610       rem *** enemy munched
1620       for i=0 to ec
1630         if xe(i)=xp and ye(i)=yp then gosub 1430
1640       next i
1650     bend
1660  bend
1670 bend
1680 return
2000 rem **********************  
2010 rem *** main game loop ***
2020 rem **********************
2030 do
2040   if ph>0 then ph=ph-1:border 2:else border 7
2050   rem *** player movment
2060   get a$
2070   if a$="w" and yp>2 then mp=0:goto 2110
2080   if a$="s" and yp<17 then mp=1:goto 2110
2090   if a$="a" and xp>2 then mp=2:goto 2110
2100   if a$="d" and xp<17 then mp=3
2110   gosub 1530:rem player movement
2180   rem enemy movement
2190   et=et+1
2200   if et=5 then gosub 730:et=0
2210   gosub 530
2220   sleep 0.1
2230 loop until a$="x"
2240 return
29000 rem ************************
29010 rem *** define world map ***
29020 rem ************************
29030 for i=0 to ht-1:for j=0 to wd-1
29040   mt$=mid$(mp$(i),j+1,1)
29050   if mt$="#" then poke as+j+wd*i,102
29060   if mt$="." then poke as+j+wd*i,46
29070   if mt$=" " then poke as+j+wd*i,32
29075   if mt$="o" then poke as+j+wd*i,88
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
30240 as=$8000000:sc=$0800:cm=$FF80000: rem screen and attic ram
30245 aw=0: rem attic window
30250 mt$="": rem read map tile
30260 wd=20:ht=20: rem map widht and height
30270 xp=3:yp=3:ph=0:ps=0: rem player position, player is hunter flag, player score
30275 dim ed(1):ed(0)=-1:ed(1)=-1:ew=0: rem enemy direction index, char of next enemy position 
30280 dim xe(1):dim ye(1):dim eh(1):ec=1: ez=42: rem enemy positions, hidden chars and count, enemy char
30285 et=0: rem ticks counter for enemy movement
30290 xe(0)=3:ye(0)=16:xe(1)=16:ye(1)=16: rem enemy positions
30295 eh(0)=46:eh(1)=46: rem chars hidden by enemy
30300 dim xm(3):dim ym(3):mp=0: rem N, S, W, E
30310 xm(0)=0:xm(1)=0:xm(2)=-1:xm(3)=1: rem horizontal move vectors
30320 ym(0)=-1:ym(1)=1:ym(2)=0:ym(3)=0: rem vertical move vectors
30400 return
