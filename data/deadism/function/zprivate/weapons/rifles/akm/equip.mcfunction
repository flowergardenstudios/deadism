scoreboard players operation @s deadism.weapon.ID = .global deadism.weapon.ID
scoreboard players add .global deadism.weapon.ID 1

execute rotated as @s run function animated_java:akm/summon {args:{}}
scoreboard players operation @n[tag=deadism.weapon.NEW,type=item_display] deadism.weapon.ID = @s deadism.weapon.ID
tag @e[tag=deadism.weapon.NEW] remove deadism.weapon.NEW

execute store result score @s deadism.weapon.AMMO.IN_GUN run data get entity @s SelectedItem.components."minecraft:custom_data"."deadism.ammo".in_gun
execute store result score @s deadism.weapon.AMMO.RELOADABLE_AMOUNT run data get entity @s SelectedItem.components."minecraft:custom_data"."deadism.ammo".reloadable_amount

scoreboard players set @s deadism.weapon.EQUIPPED 2