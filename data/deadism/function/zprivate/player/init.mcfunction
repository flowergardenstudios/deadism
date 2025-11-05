scoreboard objectives add deadism.player.ID dummy
execute unless score .global deadism.player.ID matches -2147483648..2147483647 run scoreboard players add .global deadism.player.ID 1
