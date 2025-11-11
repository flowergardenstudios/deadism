execute store result score #rotation gib.CONFIG run data get entity @s Rotation[1] 100
scoreboard players set #-1 gib.CONFIG -1
scoreboard players operation #rotation gib.CONFIG *= #-1 gib.CONFIG
execute store result storage gib:storage MACRO.ROTATION.Y float 0.01 run scoreboard players get #rotation gib.CONFIG

function gib:zprivate/rotate/invert/macro with storage gib:storage MACRO.ROTATION

