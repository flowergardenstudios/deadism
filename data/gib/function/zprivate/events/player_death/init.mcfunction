# fire_coral_block, red_concrete_powder, red_glazed_terracotta

# // Number of Gibs Spawned
scoreboard players set #GibCount gib.CONFIG 20

execute store result score #len gib.CONFIG run data get storage gib:storage GIB.BLOCKS.PLAYER_DEATH
scoreboard players remove #len gib.CONFIG 1
execute store result storage gib:storage MACRO.GIB.len int 1 run scoreboard players get #len gib.CONFIG
function gib:zprivate/events/player_death/randomize with storage gib:storage MACRO.GIB

#advancement revoke @s only gib:player_death
scoreboard players reset @s gib.PLAYER_DEATH