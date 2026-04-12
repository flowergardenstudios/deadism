execute on vehicle if entity @s[tag=deadism.IsSprinting] run return fail
execute on vehicle if entity @s[tag=deadism.weapon.cooldown] run return fail
execute on vehicle if entity @s[tag=deadism.weapon.reloading] run return fail

# // GLOCK
execute if entity @s[tag=deadism.weapon.glock] on vehicle if entity @s[tag=!deadism.IsWalking] on passengers run function animated_java:glock/animations/walk/tween {to_frame: 0, duration: 7}
execute if entity @s[tag=deadism.weapon.glock] on vehicle if entity @s[tag=!deadism.IsWalking] run return run tag @s add deadism.IsWalking
execute if entity @s[tag=deadism.weapon.glock] on vehicle if entity @s[tag=deadism.IsWalking] on passengers run function animated_java:glock/animations/idle_still/tween {to_frame: 0, duration: 4}
execute if entity @s[tag=deadism.weapon.glock] on vehicle if entity @s[tag=deadism.IsWalking] run tag @s remove deadism.IsWalking

# // AKM
execute if entity @s[tag=deadism.weapon.akm] on vehicle if entity @s[tag=!deadism.IsWalking] on passengers run function animated_java:akm/animations/walk/tween {to_frame: 0, duration: 7}
execute if entity @s[tag=deadism.weapon.akm] on vehicle if entity @s[tag=!deadism.IsWalking] run return run tag @s add deadism.IsWalking
execute if entity @s[tag=deadism.weapon.akm] on vehicle if entity @s[tag=deadism.IsWalking] on passengers run function animated_java:akm/animations/equip/tween {to_frame: 30, duration: 7}
execute if entity @s[tag=deadism.weapon.akm] on vehicle if entity @s[tag=deadism.IsWalking] run tag @s remove deadism.IsWalking

# // CHROME SHOTGUN
execute if entity @s[tag=deadism.weapon.chrome_shotgun] on vehicle if entity @s[tag=!deadism.IsWalking] on passengers run function animated_java:chrome_shotgun/animations/walk/tween {to_frame: 0, duration: 7}
execute if entity @s[tag=deadism.weapon.chrome_shotgun] on vehicle if entity @s[tag=!deadism.IsWalking] run return run tag @s add deadism.IsWalking
execute if entity @s[tag=deadism.weapon.chrome_shotgun] on vehicle if entity @s[tag=deadism.IsWalking] on passengers run function animated_java:chrome_shotgun/animations/equip/tween {to_frame: 23, duration: 7}
execute if entity @s[tag=deadism.weapon.chrome_shotgun] on vehicle if entity @s[tag=deadism.IsWalking] run tag @s remove deadism.IsWalking

