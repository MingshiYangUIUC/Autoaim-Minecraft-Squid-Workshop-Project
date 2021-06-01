scoreboard players add @e[type=arrow] AutoAim_T 1
#scoreboard players reset Arrow AutoAim_V04
#scoreboard players reset Arrow AutoAim_V05
#scoreboard players reset Arrow AutoAim_V06

execute as @e[type=arrow,scores={AutoAim_T=1}] store result score @s AutoAim_Vx run data get entity @s Motion[0] 1000
execute as @e[type=arrow,scores={AutoAim_T=1}] store result score @s AutoAim_Vy run data get entity @s Motion[1] 1000
execute as @e[type=arrow,scores={AutoAim_T=1}] store result score @s AutoAim_Vz run data get entity @s Motion[2] 1000

execute as @e[type=arrow,scores={AutoAim_T=1}] run scoreboard players operation @s AutoAim_Vx *= @s AutoAim_Vx
execute as @e[type=arrow,scores={AutoAim_T=1}] run scoreboard players operation @s AutoAim_Vy *= @s AutoAim_Vy
execute as @e[type=arrow,scores={AutoAim_T=1}] run scoreboard players operation @s AutoAim_Vz *= @s AutoAim_Vz

execute as @e[type=arrow,scores={AutoAim_T=1}] run scoreboard players add Arrow AutoAim_V05 1
execute as @e[type=arrow,scores={AutoAim_T=1}] run scoreboard players operation Arrow AutoAim_V04 += @s AutoAim_Vx
execute as @e[type=arrow,scores={AutoAim_T=1}] run scoreboard players operation Arrow AutoAim_V04 += @s AutoAim_Vy
execute as @e[type=arrow,scores={AutoAim_T=1}] run scoreboard players operation Arrow AutoAim_V04 += @s AutoAim_Vz

scoreboard players operation Arrow AutoAim_V06 = Arrow AutoAim_V04
scoreboard players operation Arrow AutoAim_V06 /= Arrow AutoAim_V05