$execute unless entity $(current) run return 1
$execute at $(current) align xyz run rotate @s facing ~.5 ~ ~.5

execute store result storage pathway:temp movement_speed double 0.0000625 run attribute @s movement_speed get 32768

# Motion
execute rotated as @s rotated ~ 0 positioned 0.0 0.0 0.0 summon marker run function pathway:entity/move/calculate/motion with storage pathway:temp
$execute at $(current) unless predicate pathway:there_horizontally run data modify entity @s Motion[0] set from storage pathway:temp Motion[0]
$execute at $(current) unless predicate pathway:there_horizontally run data modify entity @s Motion[2] set from storage pathway:temp Motion[2]

# Jumping/Climbing
$execute at @s if block ~ ~1 ~ #astar:climbable at $(current) align xyz positioned ~ ~-150 ~ if entity @s[dx=0,dy=150,dz=0] run return run data modify entity @s Motion[1] set value 0.1
execute unless predicate pathway:is_on_ground run return 1
execute at @s rotated ~ 0 unless block ^ ^ ^1 #astar:ignore run return run function pathway:entity/move/jump