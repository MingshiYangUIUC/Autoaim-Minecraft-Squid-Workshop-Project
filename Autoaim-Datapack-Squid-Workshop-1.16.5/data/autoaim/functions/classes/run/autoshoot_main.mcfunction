tag @s add autoshooting

scoreboard players set @s[tag=autoshooting,tag=autoshootrandom] AutoAim_V01 2000
scoreboard players set @s[tag=autoshooting,tag=autoshootrandom] AutoAim_V02 1000
execute at @s[tag=autoshooting] positioned ~ ~1.52 ~ run kill @e[type=arrow,distance=..0.5]
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

execute at @s[tag=autoshooting] run summon arrow ~ ~1.52 ~ {damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon arrow ~ ~1.52 ~ {damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon arrow ~ ~1.52 ~ {damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon arrow ~ ~1.52 ~ {damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon arrow ~ ~1.52 ~ {damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon arrow ~ ~1.52 ~ {damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon arrow ~ ~1.52 ~ {damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon arrow ~ ~1.52 ~ {damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon arrow ~ ~1.52 ~ {damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon arrow ~ ~1.52 ~ {damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,NoGravity:0b}

#execute as @a[tag=autoshooting] at @s positioned ~ ~1.52 ~ run execute as @e[tag=proj,distance=0] positioned ~ ~-1.52 ~ run data modify entity @s Owner set from entity @e[limit=1,sort=nearest,tag=autoshooting] UUID
execute as @s[tag=autoshooting] at @s positioned ~ ~1.52 ~ run execute as @e[tag=proj,distance=0] positioned ~ ~-1.52 ~ run data modify entity @s Owner set from entity @e[tag=aaown,limit=1] UUID
execute at @s[tag=autoshooting,tag=autoshootrandom] positioned ~ ~1.52 ~ as @e[distance=0,tag=proj] run function autoaim:classes/run/autoshoot_random
execute at @s[tag=autoshooting] positioned ~ ~1.52 ~ as @e[distance=0,tag=proj] run function autoaim:classes/run/autoshoot_launch
tag @s remove autoshooting
