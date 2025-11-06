# PRE-MOVE
scoreboard players operation @s gib.GRAVITY += GibGravity gib.CONFIG

data remove storage gib:storage MACRO.GRAVITY
execute store result storage gib:storage MACRO.GRAVITY float 0.01 run scoreboard players get @s gib.GRAVITY

