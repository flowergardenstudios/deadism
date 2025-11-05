# Ran from deadism:zprivate/mechanics/bossbar/update
execute store result storage deadism:storage TEMP.MACRO.PLAYER.FATIGUE float 0.01 run scoreboard players get @s deadism.player.FATIGUE 
data modify storage deadism:storage TEMP.MACRO.PLAYER.FATIGUE set string storage deadism:storage TEMP.MACRO.PLAYER.FATIGUE 0 -1
function deadism:zprivate/mechanics/fatigue/display/macro with storage deadism:storage TEMP.MACRO.PLAYER

