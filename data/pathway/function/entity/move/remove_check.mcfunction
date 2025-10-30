$execute at $(current) align xyz unless entity @s[dx=0,dy=0,dz=0] run return 1
data remove entity @s data.pathway.current
$kill $(current)