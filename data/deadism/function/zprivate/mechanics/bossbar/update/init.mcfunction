data remove storage deadism:storage TEMP.MACRO.PLAYER.BOSSBAR.STRING
execute store result storage deadism:storage TEMP.MACRO.PLAYER.ID int 1 run scoreboard players get @s deadism.player.ID
function deadism:zprivate/mechanics/fatigue/display/init
data modify storage deadism:storage TEMP.MACRO.PLAYER.BOSSBAR.STRING append value ", "
function deadism:zprivate/mechanics/infection/display/init
function deadism:zprivate/mechanics/bossbar/update/macro with storage deadism:storage TEMP.MACRO.PLAYER
