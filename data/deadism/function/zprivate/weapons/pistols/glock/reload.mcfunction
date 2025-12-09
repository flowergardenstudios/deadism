execute as @s[tag=deadism.weapon.reloading] run return fail
execute if score @s deadism.weapon.AMMO.IN_GUN = GLOCKAmmo deadism.weapon.AMMO run return fail
scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID

tag @s add deadism.weapon.reloading
execute if score @s deadism.weapon.AMMO.IN_GUN matches 1.. as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run return run function animated_java:glock/animations/reload_mid/tween {to_frame:0, duration:5}
execute if score @s deadism.weapon.AMMO.IN_GUN matches ..0 as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run return run function animated_java:glock/animations/reload_empty/play {to_frame:0, duration:5}
