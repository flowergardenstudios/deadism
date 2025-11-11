# // Scoreboards
scoreboard objectives add gib.PLAYER_DEATH deathCount
scoreboard objectives add gib.CONFIG dummy
scoreboard objectives add gib.VELOCITY1000 dummy

scoreboard players set GibLife gib.CONFIG 200
scoreboard players set GibGravity gib.CONFIG -4
scoreboard players set IsSticky gib.CONFIG 0

data modify storage gib:storage GIB.BLOCKS.PLAYER_DEATH set value ["fire_coral_block", "red_concrete_powder", "red_glazed_terracotta", "nether_bricks", "chiseled_nether_bricks", "black_glazed_terracotta", "netherrack"]

scoreboard objectives add gib.GRAVITY dummy
scoreboard objectives add gib.LIFE dummy
scoreboard objectives add gib.ID dummy
scoreboard players add .global gib.ID 1

function gib:global/loop1t