# // Set Raycast Range of Shotgun Bullet
scoreboard players operation @s deadism.weapon.AMMO.RAYCAST = ChromeShotgunRange deadism.weapon.AMMO
execute positioned ^ ^ ^ run function deadism:zprivate/weapons/shotguns/chrome_shotgun/shoot/cast

