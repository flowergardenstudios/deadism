# // Scoreboards
scoreboard objectives add deadism.weapon.AMMO dummy
# // Chrome Shotgun Config
scoreboard players set ChromeShotgunRange deadism.weapon.AMMO 100
scoreboard players set ChromeShotgunAmmo deadism.weapon.AMMO 6
scoreboard players set ChromeShotgunAmmoMax deadism.weapon.AMMO 30
scoreboard players set AKMAmmo deadism.weapon.AMMO 30
scoreboard players set AKMAmmoMax deadism.weapon.AMMO 90


scoreboard objectives add deadism.weapon.AMMO.RAYCAST dummy


scoreboard objectives add deadism.weapon.ID dummy
scoreboard players add .global deadism.weapon.ID 1
scoreboard objectives add deadism.weapon.EQUIPPED dummy
scoreboard objectives add deadism.weapon.ROT_Y dummy

scoreboard objectives add deadism.weapon.AMMO.IN_GUN dummy
scoreboard objectives add deadism.weapon.AMMO.RELOADABLE_AMOUNT dummy

# // Scheduled FUNC
function deadism:zprivate/weapons/loop_2t
