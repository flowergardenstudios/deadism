function deadism:zprivate/zombies/smooth_rotation

execute as @s[tag=!deadism.IsWalking,predicate=deadism:movement/is_walking] run function deadism:zprivate/zombies/animation/walk_toggle/init
execute as @s[tag=deadism.IsWalking,predicate=!deadism:movement/is_walking] run function deadism:zprivate/zombies/animation/walk_toggle/init

execute at @s if entity @n[type=#deadism:friendly,distance=..2,gamemode=!spectator,gamemode=!creative] on passengers run function deadism:zprivate/zombies/animation/attack/init
execute at @s unless entity @n[type=#deadism:friendly,distance=..2,gamemode=!spectator,gamemode=!creative] on passengers run tag @s remove deadism.ZOMBIE.attackAnimationPlaying