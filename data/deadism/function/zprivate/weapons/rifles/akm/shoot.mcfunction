execute if entity @s[tag=deadism.weapon.cooldown] run return fail
scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID

scoreboard players remove @s deadism.weapon.AMMO.IN_GUN 1
#function deadism:zprivate/weapons/ammo/init

execute anchored eyes positioned ^ ^ ^ run function deadism:zprivate/weapons/rifles/akm/shoot/init

execute on passengers as @s[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:akm/animations/shoot/pause
execute on passengers as @s[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:akm/animations/shoot/play
# title @s actionbar [{"score":{name:"@s", "objective":"deadism.weapon.AMMO.IN_GUN"}, "font":"deadism:f25bankprinter"}, "/", {"score":{"name":"@s", objective:"deadism.weapon.AMMO.RELOADABLE_AMOUNT"}}]


# // Recoil
execute at @s rotated as @s run tp @s ~ ~ ~ ~ ~-3.8
