# Ran from deadism:zprivate/mechanics/bossbar/update
execute store result storage deadism:storage TEMP.MACRO.PLAYER.INFECTION float 0.01 run scoreboard players get @s deadism.player.INFECTION 
data modify storage deadism:storage TEMP.MACRO.PLAYER.INFECTION set string storage deadism:storage TEMP.MACRO.PLAYER.INFECTION 0 -1
function deadism:zprivate/mechanics/infection/display/macro with storage deadism:storage TEMP.MACRO.PLAYER
