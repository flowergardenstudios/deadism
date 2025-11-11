# // Handles Equipping and Unequipping
execute if items entity @s weapon.offhand poisonous_potato[custom_data~{deadism.weapon:1b}] run function deadism:zprivate/weapons/offhand


# UnEquip
execute if score @s deadism.weapon.EQUIPPED matches 1 unless items entity @s weapon.* *[custom_data~{deadism.weapon:1b,deadism.weapon.ID:1b}] run function deadism:zprivate/weapons/shotguns/chrome_shotgun/unequip

# Equip
execute unless score @s deadism.weapon.EQUIPPED matches 1 if items entity @s weapon.* poisonous_potato[custom_data~{deadism.weapon:1b,deadism.weapon.ID:1b}] run function deadism:zprivate/weapons/shotguns/chrome_shotgun/equip
