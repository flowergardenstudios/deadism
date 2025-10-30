tag @s remove deadism.turret.Blocked
rotate @s ~ 0
execute if score @s deadism.turret.FireRate.timer matches 1.. run return fail
execute at @s positioned ~ ~-1.5 ~ if items block ~ ~ ~ container.* #arrows run function deadism:zprivate/traps/turrets/raycast/loaded

#> Initialize Fire Rate Timer:
execute unless score @s deadism.turret.FireRate.timer matches -2147483648..2147483647 run playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 1 1
execute unless score @s deadism.turret.FireRate.timer matches -2147483648..2147483647 run scoreboard players operation @s[tag=deadism.turret.Level1] deadism.turret.FireRate.timer = Level1.FireRate deadism.turret.Values
execute unless score @s deadism.turret.FireRate.timer matches -2147483648..2147483647 run scoreboard players operation @s[tag=deadism.turret.Level2] deadism.turret.FireRate.timer = Level2.FireRate deadism.turret.Values
