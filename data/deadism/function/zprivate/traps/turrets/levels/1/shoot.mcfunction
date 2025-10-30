execute as @s[tag=deadism.turret.Fire] run function deadism:zprivate/traps/turrets/arrow/spawn
tag @s remove deadism.turret.Fire

function deadism:zprivate/traps/turrets/raycast/unloaded
playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1

# Resets Timer so the Ranging sets it back to what it should be.
scoreboard players reset @s deadism.turret.FireRate.timer
