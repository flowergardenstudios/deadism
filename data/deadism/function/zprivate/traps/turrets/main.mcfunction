#> Spawn Turrets:
execute as @e[type=marker,tag=deadism.turret.spawnMarker,tag=deadism.turret.Level1] at @s positioned ~ ~1 ~ rotated as @p[scores={deadism.player.trap.place=1..}] rotated ~ 0 run function deadism:zprivate/traps/turrets/levels/1/spawn
execute as @e[type=marker,tag=deadism.turret.spawnMarker,tag=deadism.turret.Level2] at @s positioned ~ ~1 ~ rotated as @p[scores={deadism.player.trap.place=1..}] rotated ~ 0 run function deadism:zprivate/traps/turrets/levels/2/spawn
execute as @e[type=marker,tag=deadism.turret.spawnMarker,tag=deadism.turret.LevelMachineGun] at @s rotated as @p[scores={deadism.player.trap.place=1..}] rotated ~ 0 run function deadism:zprivate/traps/turrets/levels/machine_gun/spawn

#> Turret Ranging:
execute as @e[tag=deadism.turret.Head,type=item_display] at @s run function deadism:zprivate/traps/turrets/raycast/init

#> Fire Rate:
execute as @e[tag=deadism.turret.Head,type=item_display] at @s run function deadism:zprivate/traps/turrets/fire_rate

#> Reset Place Score
scoreboard players reset @a deadism.player.trap.place