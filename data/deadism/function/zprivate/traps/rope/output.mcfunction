# // This function file controls the type of Output Ropes can give.
#particle end_rod ~ ~ ~ 0 10 0 0 100 force

# // STATE: STATE of the Trap; 0 -> Inactive, 1 -> Active, 2 -> Tripped/Triggered
scoreboard players set @s deadism.trap.STATE 2
scoreboard players operation @s deadism.trap.STATE.old = @s deadism.trap.STATE

# // OUTPUT: Type of Entity detected by the Trap: 0 -> No Output, 1 -> Friendly, 2 -> Hostiles
execute if entity @n[distance=..0.5,type=#deadism:hostiles] run scoreboard players set @s deadism.trap.OUTPUT 2
execute if entity @n[distance=..0.5,type=#deadism:friendly] run scoreboard players set @s deadism.trap.OUTPUT 1
