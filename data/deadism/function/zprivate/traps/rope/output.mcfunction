scoreboard players set @s deadism.trap.STATE 2
execute if entity @n[distance=..0.5,type=#deadism:hostiles] run scoreboard players set @s deadism.trap.OUTPUT 2
execute if entity @n[distance=..0.5,type=#deadism:friendly] run scoreboard players set @s deadism.trap.OUTPUT 1
