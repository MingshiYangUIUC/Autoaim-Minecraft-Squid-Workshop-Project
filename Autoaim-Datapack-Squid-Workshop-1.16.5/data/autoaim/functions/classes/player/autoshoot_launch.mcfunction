execute at @s positioned ~ ~-1.52 ~ run scoreboard players operation @s AutoAim_x = @e[tag=autoshooting,sort=nearest,limit=1] AutoAim_x
execute at @s positioned ~ ~-1.52 ~ run scoreboard players operation @s AutoAim_y = @e[tag=autoshooting,sort=nearest,limit=1] AutoAim_y
execute at @s positioned ~ ~-1.52 ~ run scoreboard players operation @s AutoAim_z = @e[tag=autoshooting,sort=nearest,limit=1] AutoAim_z
execute at @s run execute store result entity @s Motion[0] double .0001 run scoreboard players get @s AutoAim_x
execute at @s run execute store result entity @s Motion[1] double .0001 run scoreboard players get @s AutoAim_y
execute at @s run execute store result entity @s Motion[2] double .0001 run scoreboard players get @s AutoAim_z
