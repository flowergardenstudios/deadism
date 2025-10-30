tag @e remove pathway.init
execute as @e[type=marker,tag=pathway.deathchecker,predicate=!pathway:on_vehicle] run function pathway:entity/death/check
execute as @e[tag=pathway] at @s run function pathway:entity/tick