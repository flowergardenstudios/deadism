scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID

scoreboard players remove @s deadism.weapon.AMMO.IN_GUN 1
#function deadism:zprivate/weapons/ammo/init

execute anchored eyes positioned ^ ^ ^ run function deadism:zprivate/weapons/rifles/akm/shoot/init

execute as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:akm/animations/shoot/play
title @s actionbar [{"score":{name:"@s", "objective":"deadism.weapon.AMMO.IN_GUN"}, "font":"deadism:f25bankprinter"}, "/", {"score":{"name":"@s", objective:"deadism.weapon.AMMO.RELOADABLE_AMOUNT"}}]

