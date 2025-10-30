execute as @s[tag=deadism.turret.Level1] positioned ^ ^ ^0.5 run summon arrow ~ ~ ~ {Tags:["deadism.turret.Level1.arrow"]}
execute as @s[tag=deadism.turret.Level1] positioned 0.0 0.0 0.0 rotated ~ 0 summon marker run function deadism:zprivate/traps/turrets/arrow/get_motion {magnitude:2.2}
data modify entity @n[type=arrow,tag=deadism.turret.Level1.arrow] Motion set from storage deadism:storage temp.Motion

execute as @s[tag=deadism.turret.Level2] positioned ^ ^ ^0.5 run summon arrow ~ ~ ~ {Tags:["deadism.turret.Level2.arrow"]}
execute as @s[tag=deadism.turret.Level2] positioned 0.0 0.0 0.0 rotated ~ 0 summon marker run function deadism:zprivate/traps/turrets/arrow/get_motion {magnitude:5.2}
data modify entity @n[type=arrow,tag=deadism.turret.Level2.arrow] Motion set from storage deadism:storage temp.Motion

playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 1
