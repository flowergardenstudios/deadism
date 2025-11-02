scoreboard players operation #ID deadism.rope.ID = @s deadism.rope.ID
execute as @s[tag=!deadism.rope.ConnectToKnot2] facing entity @p[tag=deadism.ConnectingRope,predicate=deadism:id/traps/rope/main] feet run rotate @s ~ ~-10
execute as @s[tag=deadism.rope.ConnectToKnot2] facing entity @n[tag=deadism.rope.Knot2,predicate=deadism:id/traps/rope/main] feet run rotate @s ~ ~-5

scoreboard players set @s deadism.rope.RAYCAST 0
execute anchored eyes positioned ^ ^ ^0.1 run function deadism:zprivate/traps/rope/raycast/tied1/raycast
function deadism:zprivate/traps/rope/raycast/tied1/macro with storage deadism:storage temp.MACRO.ROPE
