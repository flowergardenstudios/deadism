# // d(axis) = Final Pos(axis) - Initial Pos(axis)
scoreboard players operation DX deadism.viewmodel = POS.X.FINAL deadism.viewmodel
scoreboard players operation DY deadism.viewmodel = POS.Y.FINAL deadism.viewmodel
scoreboard players operation DZ deadism.viewmodel = POS.Z.FINAL deadism.viewmodel

# // Subtract: Get Vector
scoreboard players operation DX deadism.viewmodel -= POS.X.INIT deadism.viewmodel
scoreboard players operation DY deadism.viewmodel -= POS.Y.INIT deadism.viewmodel
scoreboard players operation DZ deadism.viewmodel -= POS.Z.INIT deadism.viewmodel

data remove storage deadism:storage TEMP.VIEWMODEL_VEC
data modify storage deadism:storage TEMP.VIEWMODEL_VEC set value [0.0d, 0.0d, 0.0d]
execute store result storage deadism:storage TEMP.VIEWMODEL_VEC[0] double 0.001 run scoreboard players get DX deadism.viewmodel
execute store result storage deadism:storage TEMP.VIEWMODEL_VEC[1] double 0.001 run scoreboard players get DZ deadism.viewmodel
execute store result storage deadism:storage TEMP.VIEWMODEL_VEC[2] double 0.001 run scoreboard players get DY deadism.viewmodel
execute summon marker run function deadism:zprivate/weapons/viewmodel/pos/new_vector_head

execute positioned 0.0 0.0 0.0 facing entity @n[tag=deadism.viewmodel.velocity_head,type=marker] eyes rotated ~ ~ run rotate @n[tag=deadism.weapon,predicate=deadism:id/weapons/id,type=item_display] ~ ~
kill @e[tag=deadism.viewmodel.velocity_head]

scoreboard players operation POS.X.INIT deadism.viewmodel = POS.X.FINAL deadism.viewmodel
scoreboard players operation POS.Y.INIT deadism.viewmodel = POS.Y.FINAL deadism.viewmodel
scoreboard players operation POS.Z.INIT deadism.viewmodel = POS.Z.FINAL deadism.viewmodel
