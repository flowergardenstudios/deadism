scoreboard players operation @s pathway.id = temp pathway.id
tag @s add pathway.path
tag @s remove astar
function uuid:_
data modify entity @n[tag=pathway.init] data.pathway.nodes append from storage uuid:out plain
execute as @n[type=marker,tag=astar] at @s run function pathway:entity/path/find/end