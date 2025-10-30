execute unless score @s pathway.id matches -2147483648..2147483647 store result score @s pathway.id run scoreboard players add counter pathway.id 1
scoreboard players operation temp pathway.id = @s pathway.id
tag @s add pathway.init
function pathway:entity/path/kill
execute unless predicate pathway:has_deathchecker summon marker run function pathway:entity/death/checker_init
summon marker ~ ~ ~ {UUID:[I;1058902388,1743996427,-1118660382,1930164586]}
execute as 3f1d9174-67f3-460b-bd52-98e2730bf96a run function pathway:entity/path/find/run
execute at 3f1d9174-67f3-460b-bd52-98e2730bf96a as @n[type=marker,tag=astar,tag=!pathway.path] at @s run function pathway:entity/path/find/end
kill 3f1d9174-67f3-460b-bd52-98e2730bf96a
tag @s remove pathway.init
data modify entity @s data.pathway.end set from entity @s data.pathway.nodes[0]