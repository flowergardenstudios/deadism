scoreboard players operation @s deadism.player.ID = .global deadism.player.ID
scoreboard players add .global deadism.player.ID 1

execute store result storage deadism:storage TEMP.MACRO.PLAYER.ID int 1 run scoreboard players get @s deadism.player.ID
function deadism:zprivate/mechanics/bossbar/create with storage deadism:storage TEMP.MACRO.PLAYER
