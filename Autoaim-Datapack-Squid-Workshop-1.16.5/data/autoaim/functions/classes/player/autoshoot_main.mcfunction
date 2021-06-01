tag @s add autoshooting

execute at @s[tag=autoshooting] run summon area_effect_cloud ^ ^ ^-3 {Invisible:1b,Tags:["v"]}
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run execute store result score @e[tag=v,distance=..0.1,limit=1] AutoAim_x run data get entity @e[tag=v,distance=..0.1,limit=1] Pos[0] 10000
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run execute store result score @e[tag=v,distance=..0.1,limit=1] AutoAim_y run data get entity @e[tag=v,distance=..0.1,limit=1] Pos[1] 10000
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run execute store result score @e[tag=v,distance=..0.1,limit=1] AutoAim_z run data get entity @e[tag=v,distance=..0.1,limit=1] Pos[2] 10000
execute at @s[tag=autoshooting] run execute store result score @s AutoAim_x run data get entity @s Pos[0] 10000
execute at @s[tag=autoshooting] run execute store result score @s AutoAim_y run data get entity @s Pos[1] 10000
execute at @s[tag=autoshooting] run execute store result score @s AutoAim_z run data get entity @s Pos[2] 10000
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run scoreboard players operation @s AutoAim_x -= @e[tag=v,distance=..0.1,limit=1] AutoAim_x
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run scoreboard players operation @s AutoAim_y -= @e[tag=v,distance=..0.1,limit=1] AutoAim_y
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run scoreboard players operation @s AutoAim_z -= @e[tag=v,distance=..0.1,limit=1] AutoAim_z
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run kill @e[tag=v,distance=..0.1]


execute at @s[tag=autoshooting] positioned ~ ~1.52 ~ run tag @e[type=arrow,distance=..0.1] add proj


execute at @s[tag=autoshooting] positioned ~ ~1.52 ~ as @e[type=arrow,distance=..1,tag=proj] run function autoaim:classes/player/autoshoot_launch

tag @s remove autoshooting
