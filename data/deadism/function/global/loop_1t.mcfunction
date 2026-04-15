execute as @a run attribute @s attack_damage base set 0
execute as @a run attribute @s entity_interaction_range base reset

function deadism:zprivate/player/tick
#function deadism:zprivate/traps/main
#function deadism:zprivate/mechanics/main
function deadism:zprivate/weapons/main
#function deadism:zprivate/zombies/tick
#function deadism:zprivate/light/tick

schedule function deadism:global/loop_1t 2t replace