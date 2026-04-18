execute as @s[tag=deadism.weapon.reloading] run return fail
execute if score @s deadism.weapon.AMMO.IN_GUN = AKMAmmo deadism.weapon.AMMO run return fail
scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID
execute on passengers run function animated_java:akm/animations/reload2/tween {to_frame: 0, duration: 3}
tag @s add deadism.weapon.reloading