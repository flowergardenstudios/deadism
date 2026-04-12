execute on vehicle if entity @s[tag=deadism.IsSprinting] run return fail
execute on vehicle if entity @s[tag=deadism.weapon.cooldown] run return fail
execute on vehicle if entity @s[tag=deadism.weapon.reloading] run return fail

execute if entity @s[tag=deadism.weapon.glock] on vehicle if entity @s[tag=!deadism.IsWalking] on passengers run function animated_java:glock/animations/walk/tween {to_frame: 0, duration: 7}
execute if entity @s[tag=deadism.weapon.glock] on vehicle if entity @s[tag=!deadism.IsWalking] run return run tag @s add deadism.IsWalking

execute if entity @s[tag=deadism.weapon.glock] on vehicle if entity @s[tag=deadism.IsWalking] on passengers run function animated_java:glock/animations/idle_still/tween {to_frame: 0, duration: 4}
execute if entity @s[tag=deadism.weapon.glock] on vehicle if entity @s[tag=deadism.IsWalking] run tag @s remove deadism.IsWalking
