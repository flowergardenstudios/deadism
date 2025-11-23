scoreboard players operation #ID deadism.player.ID = @s deadism.player.ID

execute as @n[tag=deadism.weapon.akm,predicate=deadism:id/weapons/id] run function animated_java:akm/animations/use/play {to_frame:1, duration: 0}

advancement revoke @s only deadism:weapons/world_interaction/doors
