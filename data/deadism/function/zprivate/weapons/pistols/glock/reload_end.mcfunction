function deadism:zprivate/weapons/pistols/glock/mag_math
function deadism:zprivate/weapons/ammo/init
execute as @p run title @s actionbar [{"score":{name:"@s", "objective":"deadism.weapon.AMMO.IN_GUN"}, "font":"deadism:f25bankprinter"}, "/", {"score":{"name":"@s", objective:"deadism.weapon.AMMO.RELOADABLE_AMOUNT"}}]
