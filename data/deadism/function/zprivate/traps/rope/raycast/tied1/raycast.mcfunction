scoreboard players add @s deadism.rope.RAYCAST 1
execute store result storage deadism:storage temp.MACRO.ROPE.LENGTH float 0.1 run scoreboard players get @s deadism.rope.RAYCAST


execute positioned ~ ~ ~ unless block ~ ~ ~ #deadism:traps/air run return fail


execute as @s[tag=!deadism.rope.ConnectToKnot2] positioned ~ ~ ~ if entity @p[tag=deadism.ConnectingRope,predicate=deadism:id/traps/rope/main,distance=..0.8] run return fail
execute as @s[tag=deadism.rope.ConnectToKnot2] positioned ~ ~ ~ if entity @n[type=leash_knot,tag=deadism.rope.Knot2,predicate=deadism:id/traps/rope/main,distance=..0.3] run return fail
execute as @s[tag=deadism.rope.ConnectToKnot2] positioned ~ ~ ~ align y if entity @n[distance=..0.6] run function deadism:zprivate/traps/rope/output


execute if score @s[tag=!deadism.rope.ConnectToKnot2] deadism.rope.RAYCAST matches 60.. run return fail
execute if score @s[tag=deadism.rope.ConnectToKnot2] deadism.rope.RAYCAST matches 70.. run return run function deadism:zprivate/traps/rope/raycast/tied2/drop_rope
execute positioned ^ ^ ^0.1 run return run function deadism:zprivate/traps/rope/raycast/tied1/raycast
