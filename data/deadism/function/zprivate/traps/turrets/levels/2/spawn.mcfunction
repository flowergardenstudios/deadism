#> Cosmetics
playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 1.75
particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0 100

#> Summon
summon minecraft:item_display ~ ~ ~ {Passengers: [{id: "minecraft:item_display", item: {count: 1, id: "minecraft:stick"}, transformation: {left_rotation: [0.12278777f, -0.6963641f, 0.4055798f, -0.5792281f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999995f, 0.99999934f, 0.999999f], translation: [-0.26229244f, -0.5f, -0.061035156f]}}, {id: "minecraft:item_display", item: {count: 1, id: "minecraft:stick"}, transformation: {left_rotation: [0.19996417f, 0.0828279f, -0.37361205f, 0.90198004f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.99999964f, 1.0000005f, 0.9999999f], translation: [0.044921875f, -0.5f, -0.24853516f]}}, {id: "minecraft:item_display", item: {count: 1, id: "minecraft:stick"}, transformation: {left_rotation: [-0.19996423f, -0.08282803f, -0.37361228f, 0.9019799f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.99999946f, 1.0000006f, 1.0000002f], translation: [0.044921875f, -0.5f, 0.25f]}}, {id: "minecraft:item_display", item: {count: 1, id: "minecraft:stick"}, transformation: {left_rotation: [0.4055798f, -0.5792281f, 0.12278777f, -0.69636416f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.99999917f, 0.9999994f, 0.99999875f], translation: [0.26245117f, -0.5f, -0.061035156f]}}],item: {components: {"minecraft:charged_projectiles": [{components: {"minecraft:intangible_projectile": {}}, count: 1, id: "minecraft:arrow"}]}, count: 1, \
    id: "minecraft:crossbow"}, Tags:["deadism.turret.Head", "deadism.turret.Level2"], transformation: {left_rotation: [0.65328145f, -0.27059814f, 0.27059814f, 0.65328145f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.99999934f, 0.9999983f], translation: [0.0f, 0.0f, 0.0f]}}

rotate @n[tag=deadism.turret.Head] ~ 0
kill @s[tag=deadism.turret.spawnMarker,type=marker]

