10 if peek($D06F) and $80 then j=60:else j=50:rem jiffies per second
20 sound 3, 1000, 20,,,3
30 getkey a4:goto 20