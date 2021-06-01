summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["autoshootrng"]}
execute store result score @s AutoAim_dx run data get entity @e[sort=nearest,limit=1,tag=autoshootrng] UUID[1]
execute positioned ~ ~-1.52 ~ run scoreboard players operation @s AutoAim_dx %= @e[tag=autoshootrandom,limit=1,sort=nearest] AutoAim_V01
execute positioned ~ ~-1.52 ~ run scoreboard players operation @s AutoAim_dx -= @e[tag=autoshootrandom,limit=1,sort=nearest] AutoAim_V02
execute store result score @s AutoAim_dy run data get entity @e[sort=nearest,limit=1,tag=autoshootrng] UUID[2]
execute positioned ~ ~-1.52 ~ run scoreboard players operation @s AutoAim_dy %= @e[tag=autoshootrandom,limit=1,sort=nearest] AutoAim_V01
execute positioned ~ ~-1.52 ~ run scoreboard players operation @s AutoAim_dy -= @e[tag=autoshootrandom,limit=1,sort=nearest] AutoAim_V02
execute store result score @s AutoAim_dz run data get entity @e[sort=nearest,limit=1,tag=autoshootrng] UUID[3]
execute positioned ~ ~-1.52 ~ run scoreboard players operation @s AutoAim_dz %= @e[tag=autoshootrandom,limit=1,sort=nearest] AutoAim_V01
execute positioned ~ ~-1.52 ~ run scoreboard players operation @s AutoAim_dz -= @e[tag=autoshootrandom,limit=1,sort=nearest] AutoAim_V02
kill @e[tag=autoshootrng,sort=nearest,limit=1]