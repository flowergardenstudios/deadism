
execute as @s[tag=!deadism.IsSprinting, predicate=deadism:is_sprinting] at @s run function deadism:zprivate/player/sprint
execute as @s[tag=deadism.IsSprinting, predicate=!deadism:is_sprinting] at @s run function deadism:zprivate/player/sprint
execute as @s[scores={lsp.stamina=0},tag=!deadism.IsOutOfStamina] at @s run function deadism:zprivate/player/sprint
