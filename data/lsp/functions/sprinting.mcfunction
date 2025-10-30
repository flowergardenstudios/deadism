execute unless score @s lsp.stamina matches ..0 run scoreboard players operation @s lsp.stamina -= sprint.stamina.consumption lsp.Values
execute if score @s lsp.stamina matches ..0 run function lsp:change_speed with storage lsp:macro stamina
execute if score @s lsp.stamina matches ..0 run scoreboard players set @s lsp.stamina 0