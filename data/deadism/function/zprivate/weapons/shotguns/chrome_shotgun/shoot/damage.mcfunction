tag @n[type=!#deadism:unalive,tag=!bullet.owner,dx=0,dy=2] add deadism.bullet.target
damage @n[tag=deadism.bullet.target] 5 player_attack by @s
execute as @n[tag=deadism.bullet.target] at @s run particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0 0 0 0 10 force

execute as @n[tag=deadism.bullet.target] on passengers run function animated_java:zombie/animations/stun1/tween {to_frame:0, duration:1}

tag @a remove bullet.owner
tag @e[tag=deadism.bullet.target] remove deadism.bullet.target