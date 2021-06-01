#execute as the turret at @s

tag @e[tag=aatgt] add aatgttemp
tag @e[tag=aatgt] remove aatgt

execute as @a if score @s AutoAim_ID = @e[tag=aatrt,distance=0,limit=1] AutoAim_Owner run tag @s add aaown
scoreboard players operation @s AutoAim_AimMode = @a[tag=aaown,limit=1] AutoAim_AimMode
execute if score @s AutoAim_AimMode matches 0 run tag @a[tag=!aaown,limit=1,sort=nearest,distance=0.01..64] add aatgt
execute if score @s AutoAim_AimMode matches 1 run tag @e[limit=1,sort=nearest,distance=..64,type=#autoaim:living] add aatgt
execute if score @s AutoAim_AimMode matches 2 run tag @e[limit=1,sort=nearest,distance=0.01..64,type=#autoaim:nonliving] add aatgt


function autoaim:classes/turret/aim

tag @a remove aaown

tag @e[tag=aatgt] remove aatgt
tag @e[tag=aatgttemp] add aatgt
tag @e[tag=aatgttemp] remove aatgttemp