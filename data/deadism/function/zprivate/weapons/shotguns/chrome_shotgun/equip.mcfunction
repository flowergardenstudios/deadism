scoreboard players operation @s deadism.weapon.ID = .global deadism.weapon.ID
scoreboard players add .global deadism.weapon.ID 1

execute rotated as @s run function animated_java:chrome_shotgun/summon {args:{}}
scoreboard players operation @n[tag=deadism.weapon.NEW,type=item_display] deadism.weapon.ID = @s deadism.weapon.ID
tag @e[tag=deadism.weapon.NEW] remove deadism.weapon.NEW
