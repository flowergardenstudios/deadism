scoreboard players operation #ID gib.ID = @s gib.ID
particle minecraft:smoke ~ ~ ~ 0 0 0 0 10 force
kill @n[predicate=gib:id,tag=gib.VECTOR,predicate=gib:id]
kill @s