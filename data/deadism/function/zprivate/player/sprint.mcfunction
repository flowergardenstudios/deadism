#return fail

# scoreboard players operation #ID deadism.player.ID = @s deadism.player.ID

tag @s[predicate=deadism:is_sprinting] add deadism.IsSprinting
tag @s[predicate=!deadism:is_sprinting] remove deadism.IsSprinting

# execute as @s[tag=deadism.IsOutOfStamina,tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading] on passengers as @s[tag=deadism.weapon, tag=deadism.weapon.chrome_shotgun] run return run function animated_java:chrome_shotgun/animations/equip/tween {to_frame:20, duration: 4}
execute as @s[tag=deadism.IsSprinting,tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading] on passengers as @s[tag=deadism.weapon, tag=deadism.weapon.chrome_shotgun] run return run function animated_java:chrome_shotgun/animations/run/tween {to_frame:0, duration: 5}
execute as @s[tag=!deadism.IsSprinting,tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading] on passengers as @s[tag=deadism.weapon, tag=deadism.weapon.chrome_shotgun] run return run function animated_java:chrome_shotgun/animations/equip/tween {to_frame:20, duration: 4}

# execute as @s[tag=deadism.IsOutOfStamina,tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading] on passengers as @s[tag=deadism.weapon, tag=deadism.weapon.akm] run return run function animated_java:akm/animations/equip/tween {to_frame:13, duration: 4}
execute as @s[tag=deadism.IsSprinting,tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading] on passengers as @s[tag=deadism.weapon, tag=deadism.weapon.akm] run return run function animated_java:akm/animations/run/tween {to_frame:0, duration: 5}
execute as @s[tag=!deadism.IsSprinting,tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading] on passengers as @s[tag=deadism.weapon, tag=deadism.weapon.akm] run return run function animated_java:akm/animations/equip/tween {to_frame:13, duration: 4}

# execute as @s[tag=deadism.IsOutOfStamina,tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading] on passengers as @s[tag=deadism.weapon, tag=deadism.weapon.glock] run return run function animated_java:glock/animations/idle2/tween {to_frame:20, duration: 4}
execute as @s[tag=deadism.IsSprinting,tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading] on passengers as @s[tag=deadism.weapon, tag=deadism.weapon.glock] run return run function animated_java:glock/animations/sprint/tween {to_frame:3, duration: 5}
execute as @s[tag=!deadism.IsSprinting,tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading] on passengers as @s[tag=deadism.weapon, tag=deadism.weapon.glock] run return run function animated_java:glock/animations/idle2/tween {to_frame:20, duration: 4}
