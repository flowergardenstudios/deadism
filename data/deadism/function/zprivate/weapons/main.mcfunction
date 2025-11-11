# // Teleport the Hands at Eye Level
execute as @a at @s run function deadism:zprivate/weapons/control
execute as @a[tag=!deadism.weapon.cooldown,tag=!deadism.weapon.reloading,scores={deadism.weapon.AMMO.IN_GUN=..0}] at @s run function deadism:zprivate/weapons/reload/init
