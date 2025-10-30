execute if data entity @s data.pathway.current run return 1
data modify entity @s data.pathway.current set from entity @s data.pathway.nodes[-1]
data remove entity @s data.pathway.nodes[-1]