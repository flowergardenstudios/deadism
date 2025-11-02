#> Place Detect
execute as @e[tag=deadism.rope.spawnMarker,type=marker] at @s positioned ~ ~ ~ unless block ~ ~ ~ #deadism:traps/rope/connectable run return run function deadism:zprivate/traps/rope/raycast/tied1/fail
execute as @e[tag=deadism.rope.spawnMarker,type=marker] at @s positioned ~ ~ ~ if block ~ ~ ~ #deadism:traps/rope/connectable run function deadism:zprivate/traps/rope/spawn/tied1

# // Rope Raycast
execute as @e[tag=deadism.rope.Rope,type=item_display] at @s run function deadism:zprivate/traps/rope/raycast/tied1/init

# // Break Rope
execute as @e[tag=deadism.rope.Knot] at @s unless block ~ ~ ~ #deadism:traps/rope/connectable run function deadism:zprivate/traps/rope/break
execute as @e[tag=deadism.rope.Knot2] at @s unless block ~ ~ ~ #deadism:traps/rope/connectable run function deadism:zprivate/traps/rope/break
