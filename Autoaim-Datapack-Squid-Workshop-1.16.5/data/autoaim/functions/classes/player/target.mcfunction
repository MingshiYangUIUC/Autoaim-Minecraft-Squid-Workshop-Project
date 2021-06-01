execute as @e[tag=aatrt] if score @s AutoAim_Owner = @a[distance=0,limit=1] AutoAim_ID run tag @s add aafri


execute if score @s AutoAim_AimMode matches 0 run tag @a[distance=0.1..64] add aainrange
execute if score @s AutoAim_AimMode matches 1 run tag @e[distance=..64,type=#autoaim:living] add aainrange
execute if score @s AutoAim_AimMode matches 2 run tag @e[tag=!aafri,distance=..64,type=#autoaim:nonliving] add aainrange

tag @e[tag=aatrt] remove aafri

function autoaim:classes/player/vision


tag @s add aatgtlink

execute as @e[tag=aatgtcan] unless score @s AutoAim_ID = @e[tag=aatgtlink,limit=1] AutoAim_ID run execute store result score @s AutoAim_ID run data get entity @e[tag=aatgtlink,limit=1] UUID[2]

tag @s remove aatgtlink

#say tgt