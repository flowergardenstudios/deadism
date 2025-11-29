scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID
#execute anchored eyes positioned ^ ^ ^ run function deadism:zprivate/weapons/rifles/akm/shoot/init
execute as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:fire_extinguisher/animations/hit/play
