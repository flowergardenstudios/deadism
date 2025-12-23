scoreboard players reset * deadism.viewmodel
execute store result score POS.X.INIT deadism.viewmodel run data get entity @s Pos[0] 1000
execute store result score POS.Y.INIT deadism.viewmodel run data get entity @s Pos[1] 1000
execute store result score POS.Z.INIT deadism.viewmodel run data get entity @s Pos[2] 1000
kill @s