$tag $(end) add pathway.init
summon marker ~ ~ ~ {UUID:[I;-544421500,202392802,-1557463372,1015396595]}
data modify entity df8cc984-0c10-44e2-a32a-feb43c85b8f3 Pos set from entity @s data.pathway.target
tag df8cc984-0c10-44e2-a32a-feb43c85b8f3 add pathway.init
tag @n[tag=pathway.init,sort=furthest] remove pathway.init
function pathway:entity/move/is_shorter_available with entity @s data.pathway
tag df8cc984-0c10-44e2-a32a-feb43c85b8f3 remove pathway.init
$tag $(end) remove pathway.init