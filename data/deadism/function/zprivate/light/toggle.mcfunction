
execute if score @s light.STATE matches 0 run return run fill ~1 ~ ~1 ~-1 ~-10 ~-1 air replace light
execute if score @s light.STATE matches 1 run return run fill ~1 ~ ~1 ~-1 ~-10 ~-1 light[level=12] replace air
