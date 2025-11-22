# BULLET HIT SFX

particle mycelium ^ ^ ^-0.1 0 0 0 0 10 force

execute if block ~ ~ ~ #deadism:weapons/bullet_hit/glass align xyz positioned ~0.5 ~0.5 ~0.5 run fill ~ ~ ~ ~ ~ ~ air destroy
execute if block ~ ~ ~ #deadism:weapons/bullet_hit/wood run return run playsound deadism:sfx.physics.wood.hit master @a ~ ~ ~ 100 1
execute unless block ~ ~ ~ #deadism:weapons/bullet_hit/wood run return run playsound deadism:sfx.physics.concrete.hit master @a ~ ~ ~ 100 1

