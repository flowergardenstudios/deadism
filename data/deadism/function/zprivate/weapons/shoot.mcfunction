execute if entity @s[tag=deadism.weapon.cooldown] run return run advancement revoke @s only deadism:weapons/shoot
execute if items entity @s weapon.mainhand poisonous_potato[custom_data~{deadism.weapon.ID:1b}] run function deadism:zprivate/weapons/shotguns/chrome_shotgun/shoot
advancement revoke @s only deadism:weapons/shoot

