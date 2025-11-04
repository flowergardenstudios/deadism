scoreboard objectives add deadism.CONFIG dummy

# // Difficulty: 1 = Normal, 2 = Hard, 3 = Brutal
execute unless score Difficulty deadism.CONFIG matches -2147483648..2147483647 run scoreboard players set Difficulty deadism.CONFIG 1
execute store result storage deadism:storage CONFIG.difficulty.number int 1 run scoreboard players get Difficulty deadism.CONFIG
execute if score Difficulty deadism.CONFIG matches 1 run data modify storage deadism:storage CONFIG.difficulty.string set value "Normal"
execute if score Difficulty deadism.CONFIG matches 2 run data modify storage deadism:storage CONFIG.difficulty.string set value "Hard"
execute if score Difficulty deadism.CONFIG matches 3 run data modify storage deadism:storage CONFIG.difficulty.string set value "Brutal"

