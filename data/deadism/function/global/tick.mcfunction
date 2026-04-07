xp set @a 0 levels
execute as @a on passengers store result entity @s OnGround byte 1 run data modify entity @s OnGround set value true
execute as @a on passengers run data modify entity @s teleport_duration set value 2
function deadism:zprivate/other/tick
