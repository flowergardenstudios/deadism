scoreboard players add @e[tag=deadism.ZOMBIE.corpse] deadism.ZOMBIE.corpse.LIFE 1
execute as @e[tag=deadism.ZOMBIE.corpse,scores={deadism.ZOMBIE.corpse.LIFE=100..}] run function animated_java:zombie/remove/this


execute as @e[tag=deadism.ZOMBIE,type=#deadism:hostiles] at @s run function deadism:zprivate/zombies/as_zombie
execute as @e[tag=!deadism.ZOMBIE.deathAnimationPlaying,tag=deadism.ZOMBIE.model,type=item_display] on vehicle if data entity @s {Health:0f} on passengers as @s run function deadism:zprivate/zombies/animation/death/init
