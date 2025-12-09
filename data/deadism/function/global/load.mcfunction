# DEADISM TITLE COLOR: #FFE2BD
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule locatorBar false
tellraw @a { "color": "#FFE2DB", "bold":true,"text": "[DeadiSM] Loaded."}

function deadism:zprivate/other/init
function deadism:zprivate/player/init
function deadism:zprivate/traps/init
function deadism:zprivate/mechanics/init
function deadism:zprivate/weapons/init
function deadism:zprivate/zombies/init
function deadism:zprivate/light/init

function deadism:global/loop_1t

