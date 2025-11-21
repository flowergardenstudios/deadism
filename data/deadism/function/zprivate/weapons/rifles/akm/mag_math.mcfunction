
scoreboard players operation @s deadism.weapon.AMMO.RELOADABLE_AMOUNT += @s deadism.weapon.AMMO.IN_GUN
scoreboard players set @s deadism.weapon.AMMO.IN_GUN 0

# // If reloadable amount is greater than max possible, directly add the amount
execute if score @s deadism.weapon.AMMO.RELOADABLE_AMOUNT >= AKMAmmo deadism.weapon.AMMO run scoreboard players operation @s deadism.weapon.AMMO.IN_GUN += AKMAmmo deadism.weapon.AMMO
# // If reload amount is less than max possible amount in a magazine, then put all magazine in.
execute if score @s deadism.weapon.AMMO.RELOADABLE_AMOUNT < AKMAmmo deadism.weapon.AMMO run scoreboard players operation @s deadism.weapon.AMMO.IN_GUN += @s deadism.weapon.AMMO.RELOADABLE_AMOUNT

# // If reloadable amount is less than max possible ammo in a magazine, dump all magazine into the gun aka set reserve to zero.
execute if score @s deadism.weapon.AMMO.RELOADABLE_AMOUNT < AKMAmmo deadism.weapon.AMMO.RELOADABLE_AMOUNT run scoreboard players set @s deadism.weapon.AMMO.RELOADABLE_AMOUNT 0
# // If reloadable amount is greater than or equal to Max possible ammo, subtract AKMAmmo.
execute if score @s deadism.weapon.AMMO.RELOADABLE_AMOUNT >= AKMAmmo deadism.weapon.AMMO run scoreboard players operation @s deadism.weapon.AMMO.RELOADABLE_AMOUNT -= AKMAmmo deadism.weapon.AMMO


