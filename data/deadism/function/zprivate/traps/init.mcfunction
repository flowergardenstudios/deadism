#> Trap place:
scoreboard objectives add deadism.player.trap.place minecraft.used:minecraft.allay_spawn_egg

#> Scoreboards:
# // Globals:
    # // STATE: STATE of the Trap; 0 -> Inactive, 1 -> Active, 2 -> Tripped/Triggered
    scoreboard objectives add deadism.trap.STATE dummy
    scoreboard objectives add deadism.trap.STATE.old dummy

    # // OUTPUT: Type of Entity detected by the Trap: 0 -> No Output, 1 -> Friendly, 2 -> Hostiles
    scoreboard objectives add deadism.trap.OUTPUT dummy
    # // AGE: Age of the Trap in Ticks since last placed.
    scoreboard objectives add deadism.trap.AGE dummy
    # // DURABILITY: Number of times the Trap can work before it breaks down.
    scoreboard objectives add deadism.trap.DURABILITY dummy

# // Trap: Turret
scoreboard objectives add deadism.turret.Values dummy
scoreboard players set Level1.FireRate deadism.turret.Values 30
scoreboard players set Level1.Range deadism.turret.Values 15
scoreboard players set Level2.FireRate deadism.turret.Values 10
scoreboard players set Level2.Range deadism.turret.Values 45
scoreboard objectives add deadism.turret.FireRate.timer dummy


# // Trap: Rope
scoreboard objectives add deadism.rope.ID dummy
scoreboard players add .global deadism.rope.ID 1
scoreboard objectives add deadism.rope.RAYCAST dummy

# Scheduled Tick Files
function deadism:zprivate/traps/rope/loop

