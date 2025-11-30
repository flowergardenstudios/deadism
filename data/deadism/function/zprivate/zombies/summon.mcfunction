#> Spawn Base Entity
summon husk ~ ~ ~ {attributes:[{id:"knockback_resistance", base:1000000f}],DeathLootTable:"",active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Tags:["deadism.ZOMBIE", "deadism.new"]}
execute rotated ~ 0 run function animated_java:zombie/summon {args:{ variant:'3'}}

#> Set ID
scoreboard players operation @n[tag=deadism.ZOMBIE,tag=deadism.new,type=husk] deadism.entity.ID = .global deadism.entity.ID
scoreboard players operation @n[tag=deadism.ZOMBIE.model,tag=deadism.new,type=item_display] deadism.entity.ID = .global deadism.entity.ID
scoreboard players add .global deadism.entity.ID 1

ride @n[tag=deadism.ZOMBIE.model,tag=deadism.new] mount @n[tag=deadism.ZOMBIE,tag=deadism.new]
tag @e remove deadism.new