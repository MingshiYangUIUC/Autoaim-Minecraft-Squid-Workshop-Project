tag @s add aauntgtlink

execute as @e[tag=aatgtcan] if score @s AutoAim_ID = @e[tag=aauntgtlink,limit=1] AutoAim_ID run tag @s remove aatgtcan

tag @s remove aauntgtlink

scoreboard players reset @s AutoAim_T
#say untgt