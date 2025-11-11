scoreboard players operation #ID gib.ID = @s gib.ID

summon marker ~ ~ ~ {Tags:["gib.OLD_POS"]}

$tp @s ^ ^ ^$(VELOCITY)
$execute at @s run tp @s ~ ~$(GRAVITY) ~

execute at @s facing entity @n[tag=gib.OLD_POS,type=marker] feet positioned ^ ^ ^0.1 run function gib:zprivate/move/detect_surface
kill @e[tag=gib.OLD_POS,type=marker]

#execute as @s[tag=gib.FOUND_SURFACE] if score IsSticky gib.CONFIG matches 0 run function gib:zprivate/move/rebound
#execute if score @s gib.VELOCITY1000 matches 0 run tag @s add gib.FOUND_SURFACE

execute at @s run tp @e[tag=gib,tag=gib.DISPLAY,predicate=gib:id, type=item_display] ~ ~ ~
execute as @e[tag=gib,tag=gib.DISPLAY,predicate=gib:id, type=item_display] at @s rotated as @s run rotate @s ~-20 ~-19
execute as @e[tag=gib,tag=gib.DISPLAY,predicate=gib:id, type=item_display] at @s run function gib:zprivate/rotate/init

