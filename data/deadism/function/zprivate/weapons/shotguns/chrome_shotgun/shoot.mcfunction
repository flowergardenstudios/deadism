scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID
tag @e[tag=deadism.weapon.recoil.fixRotation] remove deadism.new

scoreboard players remove @s deadism.weapon.AMMO.IN_GUN 1
function deadism:zprivate/weapons/ammo/init

execute anchored eyes rotated ~1 ~ positioned ^ ^ ^0.1 run function deadism:zprivate/weapons/shotguns/chrome_shotgun/shoot/init
execute anchored eyes rotated ~1 ~1 positioned ^ ^ ^0.1 run function deadism:zprivate/weapons/shotguns/chrome_shotgun/shoot/init
execute anchored eyes rotated ~ ~-1 positioned ^ ^ ^0.1 run function deadism:zprivate/weapons/shotguns/chrome_shotgun/shoot/init
execute anchored eyes rotated ~-1 ~-1 positioned ^ ^ ^0.1 run function deadism:zprivate/weapons/shotguns/chrome_shotgun/shoot/init

execute as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:chrome_shotgun/animations/shoot/play

