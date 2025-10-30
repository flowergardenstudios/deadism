particle dust{color:[1.000,0.533,0.000],scale:0.5} ~ ~ ~ 0 0 0 0 0 normal


execute positioned ~ ~-1 ~ if block ~ ~ ~ #air if entity @n[type=#deadism:friendly,dx=0] run return run function deadism:zprivate/traps/turrets/raycast/blocked
execute positioned ~ ~-1 ~ if block ~ ~ ~ #air if entity @n[type=#deadism:hostiles,dx=0] run return run function deadism:zprivate/traps/turrets/raycast/lock_on
execute positioned ~ ~ ~ unless block ~ ~ ~ #air run return run function deadism:zprivate/traps/turrets/raycast/unloaded
execute positioned ~ ~ ~ if block ~ ~ ~ #air positioned ^ ^ ^0.1 run return run function deadism:zprivate/traps/turrets/raycast/cast
