tag @s[predicate=deadism:is_sprinting,scores={lsp.stamina=1..}] add deadism.IsSprinting
tag @s[predicate=!deadism:is_sprinting] remove deadism.IsSprinting
tag @s[scores={lsp.stamina=0}] add deadism.IsOutOfStamina
tag @s[scores={lsp.stamina=1..}] remove deadism.IsOutOfStamina

scoreboard players operation #ID deadism.player.ID = @s deadism.player.ID
execute as @s[tag=deadism.IsOutOfStamina,tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading] as @n[tag=deadism.weapon.chrome_shotgun,predicate=deadism:id/weapons/id] run return run function animated_java:chrome_shotgun/animations/equip/tween {to_frame:20, duration: 5}
execute as @s[tag=deadism.IsSprinting,tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading] as @n[tag=deadism.weapon.chrome_shotgun,predicate=deadism:id/weapons/id] run return run function animated_java:chrome_shotgun/animations/run/tween {to_frame:0, duration: 5}
execute as @s[tag=!deadism.IsSprinting,tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading] as @n[tag=deadism.weapon.chrome_shotgun,predicate=deadism:id/weapons/id] run return run function animated_java:chrome_shotgun/animations/equip/tween {to_frame:20, duration: 5}

execute as @s[tag=deadism.IsOutOfStamina,tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading] as @n[tag=deadism.weapon.akm,predicate=deadism:id/weapons/id] run return run function animated_java:akm/animations/equip/tween {to_frame:13, duration: 5}
execute as @s[tag=deadism.IsSprinting,tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading] as @n[tag=deadism.weapon.akm,predicate=deadism:id/weapons/id] run return run function animated_java:akm/animations/run/tween {to_frame:0, duration: 5}
execute as @s[tag=!deadism.IsSprinting,tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading] as @n[tag=deadism.weapon.akm,predicate=deadism:id/weapons/id] run return run function animated_java:akm/animations/equip/tween {to_frame:13, duration: 5}
