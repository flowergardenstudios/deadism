tag @n[type=!#deadism:unalive,tag=!bullet.owner,dx=0,dy=4,dz=0] add deadism.bullet.target
damage @n[tag=deadism.bullet.target] 5 player_attack by @s
execute as @n[tag=deadism.bullet.target] at @s run particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0 0 0 0 10 force

tag @a remove bullet.owner
tag @e[tag=deadism.bullet.target] remove deadism.bullet.target