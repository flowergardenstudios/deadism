data modify entity @s Pos set from entity @n[tag=pathway,tag=pathway.init] data.pathway.target
scoreboard players reset * astar.config

scoreboard players operation maxDistance astar.config = @s pathway.maxDistance
scoreboard players operation maxStepHeight astar.config = @s pathway.maxStepHeight
execute store result score maxFallDistance astar.config run attribute @n[tag=pathway,tag=pathway.init] safe_fall_distance get -1
execute at @s as @n[tag=pathway,tag=pathway.init] run function astar:_