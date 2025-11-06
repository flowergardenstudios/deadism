# // Execute ALL Required Code as Gib.
return fail
execute as @e[type=marker,tag=gib.VECTOR, tag=!gib.FOUND_SURFACE] at @s rotated ~ ~ run function gib:zprivate/init
execute as @e[tag=gib.DISPLAY,type=item_display] at @s run function gib:zprivate/life/main
kill @e[tag=gib.VECTOR,tag=gib.FOUND_SURFACE]
