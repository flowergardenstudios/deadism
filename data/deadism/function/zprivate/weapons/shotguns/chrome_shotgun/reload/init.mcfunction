execute if score @s deadism.weapon.AMMO.IN_GUN = ChromeShotgunAmmo deadism.weapon.AMMO run return fail
scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID
execute as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:chrome_shotgun/animations/reload_start/tween {to_frame:0, duration: 5}