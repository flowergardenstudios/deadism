execute store result storage gib:storage MACRO.GIB.x float 0.01 run random value 0..10
execute store result storage gib:storage MACRO.GIB.y float 0.01 run random value 0..200
execute store result storage gib:storage MACRO.GIB.z float 0.01 run random value 0..10
execute store result storage gib:storage MACRO.GIB.rot_x float 0.1 run random value -3600..3600
execute store result storage gib:storage MACRO.GIB.rot_y float 0.01 run random value -2500..0
execute store result storage gib:storage MACRO.GIB.scale float 0.01 run random value 10..40
$execute store result storage gib:storage MACRO.GIB.block int 1 run random value 0..$(len)

function gib:zprivate/events/player_death/block_choose with storage gib:storage MACRO.GIB
function gib:zprivate/events/player_death/macro with storage gib:storage MACRO.GIB
scoreboard players remove #GibCount gib.CONFIG 1
$execute if score #GibCount gib.CONFIG matches 1.. run return run function gib:zprivate/events/player_death/randomize {len: $(len)}
