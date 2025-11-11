scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID
execute if score @s deadism.weapon.AMMO.RELOADABLE_AMOUNT matches ..0 as @n[predicate=deadism:id/weapons/id,tag=deadism.weapon.chrome_shotgun] run return run function animated_java:chrome_shotgun/animations/reload_end/play


scoreboard players remove @s[scores={deadism.weapon.AMMO.RELOADABLE_AMOUNT=1..}] deadism.weapon.AMMO.RELOADABLE_AMOUNT 1
scoreboard players add @s deadism.weapon.AMMO.IN_GUN 1

function deadism:zprivate/weapons/ammo/init
title @s actionbar [{"score":{name:"@s", "objective":"deadism.weapon.AMMO.IN_GUN"}}, "/", {"score":{"name":"@s", objective:"deadism.weapon.AMMO.RELOADABLE_AMOUNT"}}]

execute if score @s deadism.weapon.AMMO.RELOADABLE_AMOUNT matches ..0 as @n[predicate=deadism:id/weapons/id,tag=deadism.weapon.chrome_shotgun] run return run function animated_java:chrome_shotgun/animations/reload_end/play
execute if score @s deadism.weapon.AMMO.IN_GUN < ChromeShotgunAmmo deadism.weapon.AMMO as @n[predicate=deadism:id/weapons/id,tag=deadism.weapon.chrome_shotgun] run return run function animated_java:chrome_shotgun/animations/reload_load1/play
execute if score @s deadism.weapon.AMMO.IN_GUN >= ChromeShotgunAmmo deadism.weapon.AMMO as @n[predicate=deadism:id/weapons/id,tag=deadism.weapon.chrome_shotgun] run return run function animated_java:chrome_shotgun/animations/reload_end/play
