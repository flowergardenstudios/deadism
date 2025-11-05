scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID

execute as @n[tag=deadism.weapon,tag=deadism.weapon.chrome_shotgun,predicate= deadism:id/weapons/id] run function animated_java:chrome_shotgun/remove/this
scoreboard players reset @s deadism.weapon.EQUIPPED
