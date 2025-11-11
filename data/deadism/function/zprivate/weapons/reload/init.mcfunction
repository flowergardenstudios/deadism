execute if score @s deadism.weapon.AMMO.RELOADABLE_AMOUNT matches ..0 run return fail
scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID
execute if entity @n[tag=deadism.weapon.chrome_shotgun,predicate=deadism:id/weapons/id] run return run function deadism:zprivate/weapons/shotguns/chrome_shotgun/reload/init