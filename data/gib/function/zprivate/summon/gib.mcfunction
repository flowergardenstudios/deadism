$summon item_display ~ ~ ~ {Tags:["gib.DISPLAY", "gib", "gib.NEW"], item:$(block), teleport_duration:1}
$data modify entity @n[tag=gib.DISPLAY,tag=gib.NEW] transformation.scale set value [$(scale)f, $(scale)f, $(scale)f]
summon marker ~ ~ ~ {Tags:["gib.VECTOR", "gib", "gib.NEW"]}

execute as @e[tag=gib.NEW] run scoreboard players operation @s gib.ID = .global gib.ID
scoreboard players add .global gib.ID 1
execute as @e[tag=gib.NEW] rotated ~ ~ run rotate @s ~ ~
tag @e[tag=gib.NEW] remove gib.NEW

