# // Teleport the Hands at Eye Level
execute as @e[tag=deadism.weapon,type=item_display] at @s run function deadism:zprivate/weapons/teleport

schedule function deadism:zprivate/weapons/loop_2t 1t replace
