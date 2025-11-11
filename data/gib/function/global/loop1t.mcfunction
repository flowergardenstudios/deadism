execute as @e[type=marker,tag=gib.VECTOR, tag=!gib.FOUND_SURFACE] at @s rotated ~ ~ run function gib:zprivate/init
execute as @e[tag=gib.DISPLAY,type=item_display] at @s run function gib:zprivate/life/main

kill @e[tag=gib.VECTOR,tag=gib.FOUND_SURFACE]
#execute as @e[type=#undead,tag=!gib.TRACKED] at @s run function gib:zprivate/track_entities/init
execute as @a[scores={gib.PLAYER_DEATH=1..}] at @s run function gib:zprivate/events/player_death/init
execute as @e[tag=gib.PLAYER_HEAD] at @s unless block ~ ~-0.2 ~ #gib:air run rotate @s ~ -90

schedule function gib:global/loop1t 1t replace