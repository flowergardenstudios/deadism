execute as @e[tag=light,type=item_display] at @s run function deadism:zprivate/light/toggle

scoreboard players reset @e[tag=light,type=item_display,tag=!flickering] light.TIMER
execute as @e[tag=light,type=item_display,tag=flickering] at @s run function deadism:zprivate/light/flicker/init
