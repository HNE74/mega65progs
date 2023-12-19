10 xp=100:yp=100:fp=1
20 xs=100:ys=130:fs=7

500 gosub 18005
520 gosub 18130

1001 scnclr
1002 poke $40000,fp:poke $40001,fs
1005 movspr 0,xp,yp:movspr 1,xs,ys
1008 getkey a$
1010 end

18000 rem ***************************
18002 rem *** setup sprite memory ***
18004 rem ***************************
18005 mem 1,0:rem reserve 8k in bank 4
18010 edma 3,64*13,0,$40000:rem spreicherbereich leeren
18020 gosub 19830
18030 poke $d06c,0:poke $d06d,0:rem bit 0-16 to 0 for $40000
18040 poke $d06e,128+4:rem sprptr16 (bit7) and bit 2 to 4 for $40000
18050 poke $40000,$1:poke $40001,$10:rem $40040 / $40 = $1001 -> $40001 = MSB, $40000 = LSB
18055 poke $40002,$1:poke $40003,$10:rem $40040 / $40 = $1001 -> $40001 = MSB, $40000 = LSB
18060 return

18100 rem ***********************************
18110 rem *** init sprites for dive level ***
18120 rem ***********************************
18130 sprite 0,1,12,1,0,0,1:rem submarine sprite
18140 sprite 1,1,3,1,0,0,1:rem shark sprite
18150 return

19800 rem ************************
19810 rem *** read sprite data ***
19820 rem ************************
19830 for i=0 to 635
19840 read d:poke $40040+i,d
19850 next
19860 return

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
20670 DATA 0,0,0,0,0,0,0,0,0
20690 REM *** right frame 2
20700 DATA 0,0,0,2,128,0,2,160,0
20710 DATA 0,160,0,32,168,0,32,40,0
20720 DATA 32,42,0,32,170,128,34,170,96
20730 DATA 42,102,88,42,102,170,42,169,170
20740 DATA 34,154,84,32,170,160,32,2,128
20750 DATA 0,10,160,0,8,32,0,32,8
20760 DATA 0,0,0,0,0,0,0,0,0
20780 REM *** left frame 1
20790 DATA 0,0,0,0,2,128,0,10,128
20800 DATA 0,10,0,0,42,2,0,40,2
20810 DATA 0,168,10,2,170,10,9,170,138
20820 DATA 37,153,168,170,153,168,170,106,170
20830 DATA 21,166,138,10,170,2,2,128,2
20840 DATA 10,160,0,8,32,0,8,32,0
20850 DATA 0,0,0,0,0,0,0,0,0
20870 REM *** left frame 2
20880 DATA 0,0,0,0,2,128,0,10,128
20890 DATA 0,10,0,0,42,8,0,40,8
20900 DATA 0,168,8,2,170,8,9,170,136
20910 DATA 37,153,168,170,153,168,170,106,168
20920 DATA 21,166,136,10,170,8,2,128,8
20930 DATA 10,160,0,8,32,0,32,8,0
20940 DATA 0,0,0,0,0,0,0,0,0

