function deadism:zprivate/light/flicker/macro with storage deadism:storage CONFIG.LIGHT.FLICKER
scoreboard players remove @s light.TIMER 1
execute if score @s light.TIMER matches ..0 run function deadism:zprivate/light/flicker/flick