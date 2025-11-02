execute at @n[tag=deadism.rope.Knot,predicate=deadism:id/traps/rope/main] run playsound minecraft:item.lead.break
execute at @n[tag=deadism.rope.Knot2,predicate=deadism:id/traps/rope/main] run playsound minecraft:item.lead.break

execute at @n[tag=deadism.rope.Knot,predicate=deadism:id/traps/rope/main] run loot spawn ~ ~ ~ loot deadism:traps/strong_rope/give
execute at @n[tag=deadism.rope.Knot2,predicate=deadism:id/traps/rope/main] run loot spawn ~ ~ ~ loot deadism:traps/strong_rope/give
scoreboard players reset @a[predicate=deadism:id/traps/rope/main] deadism.rope.ID 
kill @e[predicate=deadism:id/traps/rope/main,type=!player]
