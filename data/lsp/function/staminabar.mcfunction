# 20 - {"text":"\u258b\u258b\u258b\u258b\u258b\u258b\u258b\u258b\u258b\u258b\u258b\u258b\u258b\u258b\u258b\u258b\u258b\u258b\u258b\u258b"}

scoreboard objectives add tempmath dummy
scoreboard players set .scale tempmath 100
scoreboard players operation .stamina tempmath = @s lsp.stamina
scoreboard players operation .stamina tempmath *= .scale tempmath
scoreboard players operation .staminaMAX tempmath = stamina lsp.Values
execute store result score .staminaRATIO tempmath run scoreboard players operation .stamina tempmath /= .staminaMAX tempmath
function lsp:display/init
#tellraw @a {score:{name:".staminaRATIO", objective:"tempmath"}}
