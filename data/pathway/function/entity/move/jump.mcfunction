# Calculate Strength of Jump
function pathway:entity/move/calculate/jump_strength
# Applying Motion
execute store result entity @s Motion[1] double 0.000030517578125 run scoreboard players operation #jump_strength_result pathway.math += #jump_strength pathway.math