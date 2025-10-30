execute as @s[tag=deadism.turret.Blocked,tag=deadism.turret.Level1] run return run scoreboard players operation @s deadism.turret.FireRate.timer = Level1.FireRate deadism.turret.Values
execute as @s[tag=deadism.turret.Blocked,tag=deadism.turret.Level2] run return run scoreboard players operation @s deadism.turret.FireRate.timer = Level2.FireRate deadism.turret.Values

execute if score @s deadism.turret.FireRate.timer matches 1.. run scoreboard players remove @s deadism.turret.FireRate.timer 1
execute if score @s[tag=deadism.turret.Level1] deadism.turret.FireRate.timer matches ..0 run function deadism:zprivate/traps/turrets/levels/1/shoot
execute if score @s[tag=deadism.turret.Level2] deadism.turret.FireRate.timer matches ..0 run function deadism:zprivate/traps/turrets/levels/2/shoot
