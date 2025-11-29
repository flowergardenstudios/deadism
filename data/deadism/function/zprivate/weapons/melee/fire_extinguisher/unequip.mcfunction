scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID

execute as @n[tag=deadism.weapon,tag=deadism.weapon.fire_extinguisher,predicate= deadism:id/weapons/id] run function animated_java:fire_extinguisher/remove/this
scoreboard players reset @s deadism.weapon.EQUIPPED
