execute as @s[tag=deadism.weapon.reloading] run return fail
execute if score @s deadism.weapon.AMMO.IN_GUN = AKMAmmo deadism.weapon.AMMO run return fail
scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID
execute as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:akm/animations/reload/play