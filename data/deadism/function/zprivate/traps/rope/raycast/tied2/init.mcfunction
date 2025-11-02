scoreboard players operation #ID deadism.rope.ID = @p[tag=deadism.ConnectingRope,scores={deadism.player.trap.place=1..}] deadism.rope.ID
scoreboard players reset @a deadism.player.trap.place

# // Summon Visual Leash Knot
summon leash_knot ~ ~ ~ {Tags:["deadism.rope.Knot2", "new"],Invulnerable:true}
# // ID copying
scoreboard players operation @s deadism.rope.ID = @p[tag=deadism.ConnectingRope,predicate=deadism:id/traps/rope/main] deadism.rope.ID
scoreboard players operation @n[tag=deadism.rope.Knot2,tag=new] deadism.rope.ID = @p[tag=deadism.ConnectingRope,predicate=deadism:id/traps/rope/main] deadism.rope.ID
tag @e[tag=deadism.rope.Knot2,tag=new] remove new

# // Removing Tag
tag @p[tag=deadism.ConnectingRope,predicate=deadism:id/traps/rope/main] remove deadism.ConnectingRope
execute at @s as @n[tag=deadism.rope.Rope,predicate=deadism:id/traps/rope/main] run rotate @s facing ~ ~0.5 ~
tag @n[tag=deadism.rope.Rope,predicate=deadism:id/traps/rope/main] add deadism.rope.ConnectToKnot2
kill @s