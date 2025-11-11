execute store result storage gib:storage MACRO.GIB.deathX int 1 run data get entity @s LastDeathLocation.pos[0]
execute store result storage gib:storage MACRO.GIB.deathY int 1 run data get entity @s LastDeathLocation.pos[1]
execute store result storage gib:storage MACRO.GIB.deathZ int 1 run data get entity @s LastDeathLocation.pos[2]

execute store result storage gib:storage MACRO.GIB.x float 0.01 run random value 0..10
execute store result storage gib:storage MACRO.GIB.y float 0.01 run random value 0..200
execute store result storage gib:storage MACRO.GIB.z float 0.01 run random value 0..10
execute store result storage gib:storage MACRO.GIB.rot_x float 0.1 run random value -3600..3600
execute store result storage gib:storage MACRO.GIB.rot_y float 0.01 run random value -2500..0
data modify storage gib:storage MACRO.GIB.scale set value 1


function gib:zprivate/events/player_death/special_gibs/spawn with storage gib:storage MACRO.GIB
execute as @n[tag=gib.DISPLAY,tag=gib,type=item_display] if items entity @s contents player_head run item modify entity @s contents {function:"fill_player_head",entity:"this"}
execute as @n[tag=gib.DISPLAY,tag=gib,type=item_display] if items entity @s contents player_head run tag @s add gib.PLAYER_HEAD