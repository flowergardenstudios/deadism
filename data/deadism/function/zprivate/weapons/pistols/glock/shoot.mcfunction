scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID

scoreboard players remove @s deadism.weapon.AMMO.IN_GUN 1
#function deadism:zprivate/weapons/ammo/init

execute anchored eyes positioned ^ ^ ^ run function deadism:zprivate/weapons/pistols/glock/shoot/init

execute store result score #RANDOM_SWAY deadism.CONFIG run random value 1..5

execute if score #RANDOM_SWAY deadism.CONFIG matches 1 if score @s deadism.weapon.AMMO.IN_GUN matches 1.. as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:glock/animations/shoot/tween {to_frame:0, duration: 1}
execute if score #RANDOM_SWAY deadism.CONFIG matches 1 if score @s deadism.weapon.AMMO.IN_GUN matches ..0 as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:glock/animations/shoot_final/tween {to_frame:0, duration: 1}

execute if score #RANDOM_SWAY deadism.CONFIG matches 2 if score @s deadism.weapon.AMMO.IN_GUN matches 1.. as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:glock/animations/shoot2/tween {to_frame:0, duration: 1}
execute if score #RANDOM_SWAY deadism.CONFIG matches 2 if score @s deadism.weapon.AMMO.IN_GUN matches ..0 as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:glock/animations/shoot_final/tween {to_frame:0, duration: 1}

execute if score #RANDOM_SWAY deadism.CONFIG matches 3 if score @s deadism.weapon.AMMO.IN_GUN matches 1.. as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:glock/animations/shoot3/tween {to_frame:0, duration: 1}
execute if score #RANDOM_SWAY deadism.CONFIG matches 3 if score @s deadism.weapon.AMMO.IN_GUN matches ..0 as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:glock/animations/shoot_final/tween {to_frame:0, duration: 1}

execute if score #RANDOM_SWAY deadism.CONFIG matches 4 if score @s deadism.weapon.AMMO.IN_GUN matches 1.. as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:glock/animations/shoot4/tween {to_frame:0, duration: 1}
execute if score #RANDOM_SWAY deadism.CONFIG matches 4 if score @s deadism.weapon.AMMO.IN_GUN matches ..0 as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:glock/animations/shoot_final/tween {to_frame:0, duration: 1}

execute if score #RANDOM_SWAY deadism.CONFIG matches 5 if score @s deadism.weapon.AMMO.IN_GUN matches 1.. as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:glock/animations/shoot5/tween {to_frame:0, duration: 1}
execute if score #RANDOM_SWAY deadism.CONFIG matches 5 if score @s deadism.weapon.AMMO.IN_GUN matches ..0 as @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] run function animated_java:glock/animations/shoot_final/tween {to_frame:0, duration: 1}

#title @s actionbar [{"score":{name:"@s", "objective":"deadism.weapon.AMMO.IN_GUN"}, "font":"deadism:f25bankprinter"}, "/", {"score":{"name":"@s", objective:"deadism.weapon.AMMO.RELOADABLE_AMOUNT"}}]

# // Recoil
execute at @s rotated as @s run tp @s ~ ~ ~ ~ ~-3.4
