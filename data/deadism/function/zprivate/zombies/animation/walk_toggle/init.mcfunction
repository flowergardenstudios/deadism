scoreboard players operation #ID deadism.entity.ID = @s deadism.entity.ID
execute as @s[predicate=deadism:movement/is_walking] on passengers as @s[tag=!deadism.ZOMBIE.attackAnimationPlaying] run function animated_java:zombie/animations/walk1/tween {'to_frame':0, 'duration':5}
execute as @s[predicate=!deadism:movement/is_walking] on passengers as @s[tag=!deadism.ZOMBIE.attackAnimationPlaying] run function animated_java:zombie/animations/idle1/tween {'to_frame':0, 'duration':5}

execute as @s[tag=!deadism.IsWalking] run return run tag @s add deadism.IsWalking
execute as @s[tag=deadism.IsWalking] run return run tag @s remove deadism.IsWalking

