rotate @s ~180 ~
function gib:zprivate/rotate/invert/init
scoreboard players set #damp gib.CONFIG 923
scoreboard players operation @s gib.VELOCITY1000 *= #damp gib.CONFIG
scoreboard players set #1000 gib.CONFIG 1000
scoreboard players operation @s gib.VELOCITY1000 /= #1000 gib.CONFIG

#rotate @s ~ -90
scoreboard players reset @s gib.GRAVITY
tag @s remove gib.FOUND_SURFACE
