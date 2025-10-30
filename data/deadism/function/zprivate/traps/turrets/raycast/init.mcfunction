execute store result storage deadism:storage temp.macro.turret.level_1.range int 1 run scoreboard players get Level1.Range deadism.turret.Values
execute store result storage deadism:storage temp.macro.turret.level_2.range int 1 run scoreboard players get Level2.Range deadism.turret.Values
execute if entity @s[tag=deadism.turret.Level1] run return run function deadism:zprivate/traps/turrets/levels/1/ranging with storage deadism:storage temp.macro.turret.level_1
execute if entity @s[tag=deadism.turret.Level2] run return run function deadism:zprivate/traps/turrets/levels/2/ranging with storage deadism:storage temp.macro.turret.level_2
