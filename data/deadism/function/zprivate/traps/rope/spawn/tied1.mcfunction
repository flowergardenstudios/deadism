playsound minecraft:item.lead.tied master @a ~ ~ ~ 1 1

execute if entity @p[scores={deadism.player.trap.place=1..},tag=deadism.ConnectingRope] run return run function deadism:zprivate/traps/rope/raycast/tied2/init

# Player Selecting System
tag @p[scores={deadism.player.trap.place=1..}] add deadism.ConnectingRope
scoreboard players reset @a deadism.player.trap.place

# // Summon Visual Leash Knot
summon leash_knot ~ ~ ~ {Tags:["deadism.rope.Knot", "new"],Invulnerable:true}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~0.1 ~ {Tags:["deadism.rope.Rope", "new"], item:{id:"popped_chorus_fruit", components:{"custom_model_data":{strings:[deadism.traps.strong_rope]}}}}

# // ID system
scoreboard players operation @s deadism.rope.ID = .global deadism.rope.ID
scoreboard players operation @p[tag=deadism.ConnectingRope] deadism.rope.ID = @s deadism.rope.ID
scoreboard players operation @n[tag=deadism.rope.Knot,tag=new] deadism.rope.ID = @s deadism.rope.ID
scoreboard players operation @n[tag=deadism.rope.Rope,tag=new] deadism.rope.ID = @s deadism.rope.ID
tag @e[tag=deadism.rope.Knot,tag=new] remove new
tag @e[tag=deadism.rope.Rope,tag=new] remove new
scoreboard players add .global deadism.rope.ID 1

# // Kill this Marker to prevent Looping
kill @s
