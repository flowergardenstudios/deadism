scoreboard players remove @s deadism.weapon.AMMO.RAYCAST 1

tag @s add bullet.owner
execute align xyz positioned ~0.5 ~ ~0.5 if entity @n[type=!#deadism:unalive, tag=!bullet.owner,dx=0,dy=2] positioned ^ ^ ^0.5 run return run function deadism:zprivate/weapons/shotguns/chrome_shotgun/shoot/damage
tag @s remove bullet.owner
execute unless block ~ ~ ~ #gib:air run return fail
execute if score @s deadism.weapon.AMMO.RAYCAST matches 1.. positioned ^ ^ ^0.1 run return run function deadism:zprivate/weapons/shotguns/chrome_shotgun/shoot/cast
