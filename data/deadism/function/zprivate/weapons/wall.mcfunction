execute if block ~ ~ ~ #deadism:weapons/air run return fail
scoreboard players operation #ID deadism.player.ID = @s deadism.player.ID

execute as @n[tag=deadism.weapon.akm,predicate=deadism:id/weapons/id] at @s run return run function animated_java:akm/animations/wall/tween {to_frame: 1, duration: 5}
execute as @n[tag=deadism.weapon.chrome_shotgun,predicate=deadism:id/weapons/id] at @s run return run function animated_java:chrome_shotgun/animations/wall/tween {to_frame: 1, duration: 5}


