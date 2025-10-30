# Figuring out Jump Strength Amplifier
execute store success score #jump_strength_amplifier pathway.math run data get entity @s active_effects[{id:"minecraft:jump_boost"}]
execute store result score #amplifier pathway.math run data get entity @s active_effects[{id:"minecraft:jump_boost"}].amplifier
execute store result score #temp pathway.math run data get entity @s active_effects[{id:"minecraft:jump_boost"}].hidden_effect.amplifier
scoreboard players operation #amplifier pathway.math > #temp pathway.math
scoreboard players operation #jump_strength_amplifier pathway.math += #amplifier pathway.math

# Applying Jump Strength
execute store result score #jump_strength pathway.math run attribute @s jump_strength get 8192
execute store result score #jump_strength_result pathway.math run attribute @s jump_strength get 32768
scoreboard players operation #jump_strength pathway.math *= #jump_strength_amplifier pathway.math