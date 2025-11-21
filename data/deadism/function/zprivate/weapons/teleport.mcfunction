
scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID
execute unless entity @p[predicate=deadism:id/weapons/id] on passengers run kill @s
execute unless entity @p[predicate=deadism:id/weapons/id] run return run kill @s


# // Legitimoose server
#ride @s mount @p[predicate=deadism:id/weapons/id]
#execute rotated as @p[predicate=deadism:id/weapons/id] run rotate @s ~ ~
#return fail

execute as @p[predicate=deadism:id/weapons/id,predicate=!deadism:key/sneak] at @s anchored eyes positioned ^ ^ ^ run tp @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] ~ ~ ~ ~ ~
execute as @p[predicate=deadism:id/weapons/id,predicate=deadism:key/sneak] at @s anchored eyes positioned ^ ^0.1 ^ run tp @n[tag=deadism.weapon,predicate=deadism:id/weapons/id] ~ ~ ~ ~ ~

#scoreboard objectives add deadism.TEMP dummy
#execute as @n[predicate=deadism:id/weapons/id,tag=deadism.weapon,type=item_display] store success entity @s OnGround byte 1 store success score @s deadism.TEMP unless score @s deadism.TEMP matches 1
