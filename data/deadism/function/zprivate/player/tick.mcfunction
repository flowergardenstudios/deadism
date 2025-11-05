# // Set ID if the player doesnt have ID:
execute as @a unless score @s deadism.player.ID matches -2147483648..2147483647 run function deadism:zprivate/player/id/set
