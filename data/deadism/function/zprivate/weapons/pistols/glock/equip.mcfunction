scoreboard players operation @s deadism.weapon.ID = .global deadism.weapon.ID
scoreboard players add .global deadism.weapon.ID 1

execute rotated as @s run function animated_java:glock/summon {args:{ 'variant': 'police' }}
scoreboard players operation @n[tag=deadism.weapon.NEW,type=item_display] deadism.weapon.ID = @s deadism.weapon.ID

execute store result score @s deadism.weapon.AMMO.IN_GUN run data get entity @s SelectedItem.components."minecraft:custom_data"."deadism.ammo".in_gun
execute store result score @s deadism.weapon.AMMO.RELOADABLE_AMOUNT run data get entity @s SelectedItem.components."minecraft:custom_data"."deadism.ammo".reloadable_amount

execute if score @s deadism.weapon.AMMO.IN_GUN matches ..0 if score @s deadism.weapon.AMMO.RELOADABLE_AMOUNT matches ..0 as @n[tag=deadism.weapon.NEW] run function animated_java:glock/animations/equip_empty/play
execute if score @s deadism.weapon.AMMO.IN_GUN matches ..0 unless score @s deadism.weapon.AMMO.RELOADABLE_AMOUNT matches ..0 run function deadism:zprivate/weapons/pistols/glock/reload
execute unless score @s deadism.weapon.AMMO.IN_GUN matches ..0 unless score @s deadism.weapon.AMMO.RELOADABLE_AMOUNT matches ..0 as @n[tag=deadism.weapon.NEW] run function animated_java:glock/animations/equip/play
tag @e[tag=deadism.weapon.NEW] remove deadism.weapon.NEW


title @s actionbar [{"score":{name:"@s", "objective":"deadism.weapon.AMMO.IN_GUN"}, "font":"deadism:f25bankprinter"}, "/", {"score":{"name":"@s", objective:"deadism.weapon.AMMO.RELOADABLE_AMOUNT"}}]
scoreboard players set @s deadism.weapon.EQUIPPED 4