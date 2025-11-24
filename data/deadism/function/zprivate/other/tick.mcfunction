execute store result score TimeInTicks Time run time query daytime
execute store result score Day Time run time query day

execute if score TimeInTicks Time matches 22000 as @a at @s run function deadism:zprivate/other/new_day/init
execute if score TimeInTicks Time matches 23090 as @a at @s run function deadism:zprivate/other/new_day/title
