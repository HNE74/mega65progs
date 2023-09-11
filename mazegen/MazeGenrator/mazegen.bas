10 rem **********************
20 rem *** maze generator ***
30 rem **********************
40 mw=3:mh=3: rem *** maze widht and height
50 dim mc(mw*mh-1,7): rem *** maze cell arrey
100 rem *****************
110 rem *** main loop ***
120 rem *****************
130 gosub 1030
140 gosub 1200
150 end
1000 rem ***********************
1010 rem *** initialize maze ***
1020 rem ***********************
1030 i=0:for y=0 to mh-1:for x=0 to mw-1
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
