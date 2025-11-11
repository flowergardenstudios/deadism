$summon item_display ~ ~ ~ {Tags:["gib.DISPLAY", "gib", "gib.NEW"], item:$(block), teleport_duration:1, brightness:{sky:10,block:10}}
execute if items entity @n[tag=gib.DISPLAY,tag=gib,tag=gib.NEW,type=item_display] contents player_head run item modify entity @n[tag=gib.DISPLAY,tag=gib,tag=gib.NEW,type=item_display] contents {function:"fill_player_head",entity:"this"}
$data modify entity @n[tag=gib.DISPLAY,tag=gib.NEW] transformation.scale set value [$(scale)f, $(scale)f, $(scale)f]
summon marker ~ ~ ~ {Tags:["gib.VECTOR", "gib", "gib.NEW"]}

$data modify storage gib:storage TEMP.VELOCITY set value $(velocity)
execute store result score @n[tag=gib.VECTOR,tag=gib.NEW] gib.VELOCITY1000 run data get storage gib:storage TEMP.VELOCITY 1000

execute as @e[tag=gib.NEW] run scoreboard players operation @s gib.ID = .global gib.ID
scoreboard players add .global gib.ID 1
execute as @e[tag=gib.NEW] rotated ~ ~ run rotate @s ~ ~
tag @e[tag=gib.NEW] remove gib.NEW

