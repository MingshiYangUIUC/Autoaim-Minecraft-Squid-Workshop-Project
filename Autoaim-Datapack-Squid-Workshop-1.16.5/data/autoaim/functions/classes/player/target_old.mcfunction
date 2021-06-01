execute if score @s AutoAim_AimMode matches 0 run tag @a[distance=0.1..64] add aainrange
execute if score @s AutoAim_AimMode matches 1 run tag @e[distance=..64,type=#autoaim:groundhostile] add aainrange
execute if score @s AutoAim_AimMode matches 2 run tag @e[distance=..64,type=#autoaim:flying] add aainrange
execute if score @s AutoAim_AimMode matches 3 run tag @e[distance=..64,type=#autoaim:groundpassive] add aainrange
execute if score @s AutoAim_AimMode matches 4 run tag @e[distance=..64,type=#autoaim:transport] add aainrange
execute if score @s AutoAim_AimMode matches 5 run tag @e[distance=..64,type=#autoaim:invulnerableprojectiles] add aainrange
execute if score @s AutoAim_AimMode matches 6 run tag @e[distance=..64,type=#autoaim:projectiles] add aainrange
execute if score @s AutoAim_AimMode matches 7 run tag @e[distance=..64,type=#autoaim:village] add aainrange
execute if score @s AutoAim_AimMode matches 8 run tag @e[distance=..64,type=#autoaim:misc] add aainrange

function autoaim:classes/player/vision


tag @s add aatgtlink

execute as @e[tag=aatgtcan] unless score @s AutoAim_ID = @e[tag=aatgtlink,limit=1] AutoAim_ID run execute store result score @s AutoAim_ID run data get entity @e[tag=aatgtlink,limit=1] UUID[2]

tag @s remove aatgtlink

#say tgt