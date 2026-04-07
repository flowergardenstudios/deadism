# // Teleport the Hands at Eye Level
execute as @a at @s run function deadism:zprivate/weapons/control
execute as @a[tag=!deadism.weapon.reloading,scores={deadism.weapon.AMMO.IN_GUN=..0}] at @s run function deadism:zprivate/weapons/reload/init
execute as @a at @s anchored eyes positioned ^ ^-0.5 ^1.25 align xyz positioned ~0.5 ~0.5 ~0.5 run function deadism:zprivate/weapons/wall
