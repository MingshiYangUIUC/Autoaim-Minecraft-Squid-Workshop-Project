scoreboard players operation @e[tag=aahelp,limit=1] AutoAim_V00 = COSIN AutoAim_V00
execute as @e[tag=aahelp,limit=1] at @s run tp @s ~ ~ ~ 0 0
execute store result entity @e[tag=aahelp,limit=1] Rotation[0] float 0.0001 run scoreboard players get @e[tag=aahelp,limit=1] AutoAim_V00
execute as @e[tag=aahelp,limit=1] at @s run tp @e[tag=aahelp2,limit=1] ^ ^ ^-1
execute as @e[tag=aahelp,limit=1] store result score @s AutoAim_V01 run data get entity @s Pos[2] 10000
execute as @e[tag=aahelp2,limit=1] store result score @s AutoAim_V02 run data get entity @s Pos[2] 10000
execute as @e[tag=aahelp,limit=1] run scoreboard players operation @s AutoAim_V01 -= @e[tag=aahelp2,limit=1] AutoAim_V02
scoreboard players operation COSOUT AutoAim_V00 = @e[tag=aahelp,limit=1] AutoAim_V01
