function deadism:zprivate/weapons/rifles/akm/mag_math
function deadism:zprivate/weapons/ammo/init
execute as @p run title @s actionbar [{"score":{name:"@s", "objective":"deadism.weapon.AMMO.IN_GUN"}}, "/", {"score":{"name":"@s", objective:"deadism.weapon.AMMO.RELOADABLE_AMOUNT"}}]
