execute unless block ~ ~ ~ #gib:air run return run function gib:zprivate/move/found_surface
execute if entity @n[tag=gib.OLD_POS,type=marker,distance=..0.2] run return fail

execute positioned ^ ^ ^0.1 run return run function gib:zprivate/move/detect_surface