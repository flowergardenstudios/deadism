scoreboard players operation #ID deadism.weapon.ID = @s deadism.weapon.ID

# // Get Viewmodel Rotation
execute as @e[predicate=deadism:id/weapons/id,type=item_display,tag=deadism.weapon] at @s anchored eyes positioned ^ ^ ^100 summon marker run function deadism:zprivate/weapons/viewmodel/pos/1
# // Get Player Rotation
execute anchored eyes positioned ^ ^ ^100 summon marker run function deadism:zprivate/weapons/viewmodel/pos/2

# // Calculate the Velocity:
function deadism:zprivate/weapons/viewmodel/pos/subtract