title @s times 0t 5s 2s

scoreboard players operation #NEWDAY Time = Day Time
scoreboard players add #NEWDAY Time 1
title @s title [{"text":"DAY ", "font":"deadism:brunson", shadow_color:0}, {"score":{name:"#NEWDAY", objective:"Time"}}]
