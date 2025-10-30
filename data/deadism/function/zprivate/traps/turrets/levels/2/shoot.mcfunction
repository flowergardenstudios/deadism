tag @s remove deadism.turret.Fire
function deadism:zprivate/traps/turrets/arrow/spawn
function deadism:zprivate/traps/turrets/raycast/unloaded
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 1

# Resets Timer so the Ranging sets it back to what it should be.
scoreboard players reset @s deadism.turret.FireRate.timer
