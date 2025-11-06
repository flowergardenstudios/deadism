scoreboard players operation #ID gib.ID = @s gib.ID

summon marker ~ ~ ~ {Tags:["gib.OLD_POS"]}

tp @s ^ ^ ^0.4
$execute at @s run tp @s ~ ~-$(GRAVITY) ~
execute at @s facing entity @n[tag=gib.OLD_POS,type=marker] feet positioned ^ ^ ^0.1 run function gib:zprivate/move/detect_surface
kill @e[tag=gib.OLD_POS,type=marker]

execute at @s run tp @e[tag=gib,tag=gib.DISPLAY,predicate=gib:id, type=item_display] ~ ~ ~
execute as @e[tag=gib,tag=gib.DISPLAY,predicate=gib:id, type=item_display] at @s rotated as @s run rotate @s ~-20 ~-19
execute as @e[tag=gib,tag=gib.DISPLAY,predicate=gib:id, type=item_display] at @s run function gib:zprivate/rotate/init

