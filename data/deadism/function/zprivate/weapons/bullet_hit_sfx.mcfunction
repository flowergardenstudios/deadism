# BULLET HIT SFX

particle mycelium ^ ^ ^-0.1 0 0 0 0 10 force


execute if block ~ ~ ~ bell run return run playsound block.bell.use
execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #deadism:weapons/bullet_hit/glass run fill ~ ~ ~ ~ ~ ~ air destroy
execute if block ~ ~ ~ #deadism:weapons/bullet_hit/wood run return run playsound deadism:sfx.physics.wood.hit
execute unless block ~ ~ ~ #deadism:weapons/bullet_hit/wood run return run playsound deadism:sfx.physics.concrete.hit

