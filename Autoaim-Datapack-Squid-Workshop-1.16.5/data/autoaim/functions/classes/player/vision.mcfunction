# choose from "in range" entities, the one least deviated from line of sight.


execute store result score RS AutoAim_RH run data get entity @s Rotation[0] 10
execute store result score RS AutoAim_RV run data get entity @s Rotation[1] 10

execute if score RS AutoAim_RH matches ..-1 run scoreboard players add RS AutoAim_RH 3600
execute if score RS AutoAim_RV matches ..-1 run scoreboard players add RS AutoAim_RV 3600

scoreboard players set RM AutoAim_RT 999999999

execute as @e[tag=aainrange] run function autoaim:classes/player/vision_compare

tag @e[tag=aainrange,tag=aasight] add aatgtcan
tag @e[tag=aasight] remove aasight
tag @e[tag=aainrange] remove aainrange
effect give @e[tag=aatgtcan] glowing 1 1 true