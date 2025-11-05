# // Handles Equipping and Unequipping

# UnEquip
execute if score @s deadism.weapon.EQUIPPED matches 1 unless items entity @s weapon.mainhand *[custom_data~{deadism.weapon:1b,deadism.weapon.ID:1b}] run function deadism:zprivate/weapons/shotguns/chrome_shotgun/unequip

# Equip
execute unless score @s deadism.weapon.EQUIPPED matches 1 if items entity @s weapon.mainhand poisonous_potato[custom_data~{deadism.weapon:1b,deadism.weapon.ID:1b}] run function deadism:zprivate/weapons/shotguns/chrome_shotgun/equip
