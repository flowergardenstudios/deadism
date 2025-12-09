# macros: 
# $(x_min), $(x_max), $(y_min), $(y_max)
$execute store result storage deadism:storage TEMP.MACRO.RECOIL.X float 0.01 run random value $(x_min)..$(x_max)
$execute store result storage deadism:storage TEMP.MACRO.RECOIL.Y float 0.01 run random value $(y_min)..$(y_max)
function deadism:zprivate/weapons/pistols/glock/recoil/macro with storage deadism:storage TEMP.MACRO.RECOIL
