scoreboard players set ROT.X.FINAL deadism.viewmodel 0
scoreboard players set ROT.Y.FINAL deadism.viewmodel 0

execute as @p[predicate=deadism:id/weapons/id] store result score ROT.X.FINAL deadism.viewmodel run data get entity @s Rotation[0] 1000
execute as @p[predicate=deadism:id/weapons/id] store result score ROT.Y.FINAL deadism.viewmodel run data get entity @s Rotation[1] 1000

scoreboard players operation ROT.X.FINAL deadism.viewmodel -= ROT.X.INIT deadism.viewmodel
scoreboard players operation ROT.Y.FINAL deadism.viewmodel -= ROT.Y.INIT deadism.viewmodel

execute store result storage deadism:storage TEMP.MACRO.ROTATION.X float 0.001 run scoreboard players get ROT.X.FINAL deadism.viewmodel
execute store result storage deadism:storage TEMP.MACRO.ROTATION.Y float 0.001 run scoreboard players get ROT.Y.FINAL deadism.viewmodel

#function deadism:zprivate/weapons/viewmodel/macro with storage deadism:storage TEMP.MACRO.ROTATION
execute as @p[predicate=deadism:id/weapons/id] store result score ROT.X.INIT deadism.viewmodel run data get entity @s Rotation[0] 1000
execute as @p[predicate=deadism:id/weapons/id] store result score ROT.Y.INIT deadism.viewmodel run data get entity @s Rotation[1] 1000
