scoreboard players add @s gib.LIFE 1
execute if score @s gib.LIFE = GibLife gib.CONFIG run function gib:zprivate/life/kill

