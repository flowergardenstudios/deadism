# // Set Raycast Range of Shotgun Bullet
scoreboard players operation @s deadism.weapon.AMMO.RAYCAST = AKMRange deadism.weapon.AMMO
execute positioned ^ ^ ^ run function deadism:zprivate/weapons/rifles/akm/shoot/cast
