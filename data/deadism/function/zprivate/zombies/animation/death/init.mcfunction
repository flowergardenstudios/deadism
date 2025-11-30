scoreboard players operation #ID deadism.entity.ID = @s deadism.entity.ID
execute on vehicle at @s run function deadism:zprivate/zombies/animation/death/ground


ride @s dismount
execute on vehicle at @s run tp @s ~ -1000 ~
function animated_java:zombie/animations/death1/tween {to_frame:0, duration:1}
tag @s add deadism.ZOMBIE.deathAnimationPlaying
tag @s remove deadism.ZOMBIE.model
tag @s add deadism.ZOMBIE.corpse