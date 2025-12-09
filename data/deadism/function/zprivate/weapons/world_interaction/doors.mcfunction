scoreboard players operation #ID deadism.player.ID = @s deadism.player.ID

execute as @n[tag=deadism.weapon.akm,predicate=deadism:id/weapons/id] run function animated_java:akm/animations/use/play {to_frame:0, duration: 0}
execute as @n[tag=deadism.weapon.glock,predicate=deadism:id/weapons/id] run function animated_java:glock/animations/use/play {to_frame:0, duration: 0}

advancement revoke @s only deadism:weapons/world_interaction/doors
