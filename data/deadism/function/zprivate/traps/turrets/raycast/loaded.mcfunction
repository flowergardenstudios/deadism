function deadism:zprivate/traps/turrets/arrow/decrement
data modify entity @s item.components."minecraft:charged_projectiles" set value [{id:"arrow",count:1}]
tag @s add deadism.turret.Fire