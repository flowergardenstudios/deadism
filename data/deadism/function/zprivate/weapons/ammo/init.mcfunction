setblock 0 300 0 air
setblock 0 300 0 barrel
item replace block 0 300 0 container.0 from entity @s weapon.mainhand

execute store result block 0 300 0 Items[0].components."minecraft:custom_data"."deadism.ammo".in_gun int 1 run scoreboard players get @s deadism.weapon.AMMO.IN_GUN
execute store result block 0 300 0 Items[0].components."minecraft:custom_data"."deadism.ammo".reloadable_amount int 1 run scoreboard players get @s deadism.weapon.AMMO.RELOADABLE_AMOUNT
item replace entity @s weapon.mainhand from block 0 300 0 container.0
setblock 0 300 0 air


