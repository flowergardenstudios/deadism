execute as @e[tag=light,type=item_display] if score @s light.STATE matches 1 run playsound deadism:ambience.led ambient @a ~ ~ ~ 0.1 0.8
schedule function deadism:zprivate/light/ambience 1s