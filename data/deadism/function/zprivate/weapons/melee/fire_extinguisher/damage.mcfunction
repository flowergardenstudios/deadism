tag @s add deadism.hit.owner

tag @n[tag=!deadism.hit.owner,type=#deadism:hostiles,distance=..4] add deadism.melee.target
damage @n[tag=!deadism.hit.owner,type=#deadism:hostiles,distance=..4] 8 player_attack by @s
execute as @n[tag=!deadism.hit.owner,type=#deadism:hostiles,distance=..4] at @s run particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0 0 0 0 10 force

execute as @n[tag=!deadism.hit.owner,type=#deadism:hostiles,distance=..4] on passengers run function animated_java:zombie/animations/stun1/tween {to_frame:0, duration:1}
tag @s remove deadism.hit.owner