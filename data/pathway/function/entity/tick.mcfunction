execute unless data entity @s data.pathway.target run return 1

execute if predicate pathway:no_motion run data remove entity @s data.pathway.nodes
execute unless data entity @s data.pathway.nodes[] run function pathway:entity/init

function pathway:entity/move/more_near_check with entity @s data.pathway
function pathway:entity/move/remove_check with entity @s data.pathway
function pathway:entity/move/next_check
execute unless data entity @s data.pathway.current run data remove entity @s data.pathway.target

function pathway:entity/move/do with entity @s data.pathway
