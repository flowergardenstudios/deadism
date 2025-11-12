scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID

execute as @n[tag=deadism.weapon,tag=deadism.weapon.akm,predicate= deadism:id/weapons/id] run function animated_java:akm/remove/this
scoreboard players reset @s deadism.weapon.EQUIPPED
