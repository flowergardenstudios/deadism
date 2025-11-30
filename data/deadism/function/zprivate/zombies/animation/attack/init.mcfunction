#execute as @s[tag=deadism.ZOMBIE.attackAnimationPlaying] run return fail
execute as @s[tag=!deadism.ZOMBIE.attackAnimationPlaying] run function animated_java:zombie/animations/hit1/tween {to_frame:0, duration:4}
tag @s add deadism.ZOMBIE.attackAnimationPlaying
