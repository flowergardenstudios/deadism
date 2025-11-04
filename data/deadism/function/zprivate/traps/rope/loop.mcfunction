# // Rope Raycast
execute as @e[tag=deadism.rope.Rope,type=item_display] at @s run function deadism:zprivate/traps/rope/raycast/tied1/init

schedule function deadism:zprivate/traps/rope/loop 5t replace
