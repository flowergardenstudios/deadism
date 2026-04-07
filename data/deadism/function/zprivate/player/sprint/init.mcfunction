execute as @s[tag=deadism.weapon.equippedEmptyGun] run return fail

execute as @s[tag=!deadism.IsSprinting, predicate=deadism:is_sprinting] at @s run function deadism:zprivate/player/sprint
execute as @s[tag=deadism.IsSprinting, predicate=!deadism:is_sprinting] at @s run function deadism:zprivate/player/sprint
execute as @s[tag=!deadism.IsOutOfStamina] at @s run function deadism:zprivate/player/sprint
