#execute as @s[tag=deadism.weapon.cooldown] run return run advancement revoke @s only deadism:weapons/shoot
execute if score @s deadism.weapon.AMMO.IN_GUN matches ..0 unless items entity @s weapon.mainhand poisonous_potato[custom_data~{deadism.melee:true}] run return run advancement revoke @s only deadism:weapons/shoot

execute if score @s deadism.weapon.AMMO.IN_GUN matches 0 if score @s deadism.weapon.AMMO.RELOADABLE_AMOUNT matches 0 run playsound deadism:sfx.weapons.empty master @a ~ ~ ~ 1 1
execute if score @s deadism.weapon.AMMO.IN_GUN matches 0 if score @s deadism.weapon.AMMO.RELOADABLE_AMOUNT matches 0 run return run advancement revoke @s only deadism:weapons/shoot
execute if entity @s[tag=deadism.weapon.cooldown] run return run advancement revoke @s only deadism:weapons/shoot

execute if items entity @s weapon.mainhand poisonous_potato[custom_data~{deadism.weapon.ID:1b}] run function deadism:zprivate/weapons/shotguns/chrome_shotgun/shoot
execute if items entity @s weapon.mainhand poisonous_potato[custom_data~{deadism.weapon.ID:2b}] run function deadism:zprivate/weapons/rifles/akm/shoot
execute if items entity @s weapon.mainhand poisonous_potato[custom_data~{deadism.weapon.ID:3b}] run function deadism:zprivate/weapons/melee/fire_extinguisher/swing


function deadism:zprivate/weapons/ammo/init
advancement revoke @s only deadism:weapons/shoot

