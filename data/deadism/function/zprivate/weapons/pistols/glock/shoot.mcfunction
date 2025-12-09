scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID

scoreboard players remove @s deadism.weapon.AMMO.IN_GUN 1
#function deadism:zprivate/weapons/ammo/init

execute anchored eyes positioned ^ ^ ^ run function deadism:zprivate/weapons/pistols/glock/shoot/init

execute if score @s deadism.weapon.AMMO.IN_GUN matches 1.. as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:glock/animations/shoot/play
execute if score @s deadism.weapon.AMMO.IN_GUN matches ..0 as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:glock/animations/shoot_final/play

title @s actionbar [{"score":{name:"@s", "objective":"deadism.weapon.AMMO.IN_GUN"}, "font":"deadism:f25bankprinter"}, "/", {"score":{"name":"@s", objective:"deadism.weapon.AMMO.RELOADABLE_AMOUNT"}}]

