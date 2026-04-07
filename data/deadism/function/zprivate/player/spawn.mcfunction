effect give @s invisibility infinite 255 true
execute rotated as @s run function animated_java:player/summon {args:{}}
tag @n[tag=deadism.player.NEW] add deadism.player.BODY
ride @n[tag=deadism.player.NEW] mount @s
tag @e remove deadism.player.NEW