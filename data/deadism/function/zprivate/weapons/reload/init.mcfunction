#execute as @s[tag=deadism.weapon.equippedEmptyGun] run return fail
#execute if score @s[tag=!deadism.weapon.equippedEmptyGun] deadism.weapon.AMMO.RELOADABLE_AMOUNT matches ..0 run return run function deadism:zprivate/weapons/play_empty
scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID

execute if entity @n[tag=deadism.weapon.chrome_shotgun,predicate=deadism:id/weapons/id] run return run function deadism:zprivate/weapons/shotguns/chrome_shotgun/reload/init
execute if entity @n[tag=deadism.weapon.akm,predicate=deadism:id/weapons/id] run return run function deadism:zprivate/weapons/rifles/akm/reload
execute if entity @n[tag=deadism.weapon.glock,predicate=deadism:id/weapons/id] run return run function deadism:zprivate/weapons/pistols/glock/reload

