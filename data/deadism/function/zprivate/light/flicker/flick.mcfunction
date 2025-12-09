scoreboard players reset @s light.TIMER

execute if score @s light.STATE matches 1 run return run scoreboard players set @s light.STATE 0
execute if score @s light.STATE matches 0 run return run scoreboard players set @s light.STATE 1