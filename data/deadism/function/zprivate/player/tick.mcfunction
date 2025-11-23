# // Set ID if the player doesnt have ID:
execute as @a unless score @s deadism.player.ID matches -2147483648..2147483647 run function deadism:zprivate/player/id/set

execute as @a[tag=!deadism.IsSprinting] at @s if predicate deadism:is_sprinting run function deadism:zprivate/player/sprint
execute as @a[tag=deadism.IsSprinting] at @s unless predicate deadism:is_sprinting run function deadism:zprivate/player/sprint
execute as @a[scores={lsp.stamina=0},tag=!deadism.IsOutOfStamina] at @s run function deadism:zprivate/player/sprint
