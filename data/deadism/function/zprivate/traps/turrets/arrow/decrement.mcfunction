summon chest_minecart ~ 10000 ~ {NoGravity:True,Tags:["arrow_clear.temp"]}
data modify entity @n[type=chest_minecart,tag=arrow_clear.temp] Items append from block ~ ~ ~ Items[{id:"minecraft:arrow"}]
data modify entity @n[type=chest_minecart,tag=arrow_clear.temp] Items append from block ~ ~ ~ Items[{id:"minecraft:spectral_arrow"}]
data modify entity @n[type=chest_minecart,tag=arrow_clear.temp] Items append from block ~ ~ ~ Items[{id:"minecraft:tipped_arrow"}]


scoreboard objectives add deadism.temp dummy
execute store result score Count deadism.temp run data get entity @n[type=chest_minecart,tag=arrow_clear.temp] Items[-1].count
scoreboard players remove Count deadism.temp 1

execute store result entity @n[tag=arrow_clear.temp,type=chest_minecart] Items[-1].count int 1 run scoreboard players get Count deadism.temp
execute if score Count deadism.temp matches 0 run function deadism:zprivate/traps/turrets/arrow/replace with entity @n[tag=arrow_clear.temp,type=chest_minecart] Items[-1]

execute if score Count deadism.temp matches 1.. run data modify block ~ ~ ~ Items insert -1 from entity @n[tag=arrow_clear.temp,type=chest_minecart] Items[]
data remove entity @n[tag=arrow_clear.temp,type=chest_minecart] Items
kill @e[tag=arrow_clear.temp]

