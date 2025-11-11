# fire_coral_block, red_concrete_powder, red_glazed_terracotta

# // Number of Gibs Spawned
scoreboard players set #GibCount gib.CONFIG 40

effect give @s invisibility 1 1 true
execute store result storage gib:storage MACRO.GIB.deathX int 1 run data get entity @s LastDeathLocation.pos[0]
execute store result storage gib:storage MACRO.GIB.deathY int 1 run data get entity @s LastDeathLocation.pos[1]
execute store result storage gib:storage MACRO.GIB.deathZ int 1 run data get entity @s LastDeathLocation.pos[2]

execute store result score #len gib.CONFIG run data get storage gib:storage GIB.BLOCKS.PLAYER_DEATH
scoreboard players remove #len gib.CONFIG 1
execute store result storage gib:storage MACRO.GIB.len int 1 run scoreboard players get #len gib.CONFIG
function gib:zprivate/events/player_death/randomize with storage gib:storage MACRO.GIB
function gib:zprivate/events/player_death/special_gibs/head

#advancement revoke @s only gib:player_death
scoreboard players reset @s gib.PLAYER_DEATH