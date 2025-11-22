scoreboard players remove @s deadism.weapon.AMMO.RAYCAST 1

tag @s add bullet.owner
execute positioned ~-0.1 ~0.1 ~0.1 if entity @n[type=!#deadism:unalive, tag=!bullet.owner,dx=0,dy=4,dz=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @n[type=!#deadism:unalive, tag=!bullet.owner,dx=0,dy=4,dz=0] run return run function deadism:zprivate/weapons/rifles/akm/shoot/damage
tag @s remove bullet.owner

execute unless block ~ ~ ~ #deadism:weapons/air run return run function deadism:zprivate/weapons/bullet_hit_sfx
execute if score @s deadism.weapon.AMMO.RAYCAST matches 1.. positioned ^ ^ ^0.1 run return run function deadism:zprivate/weapons/rifles/akm/shoot/cast
