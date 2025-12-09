scoreboard objectives add light.STATE dummy
scoreboard objectives add light.TIMER dummy

execute as @e[tag=light,type=item_display] unless score @s light.STATE matches -2147483648..2147483647 run scoreboard players set @s light.STATE 1