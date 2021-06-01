summon minecraft:armor_stand ~ ~ ~ {Tags:["aatrt","aaslf"]}
scoreboard players set @e[tag=aatrt,distance=..0.01] AutoAim_tryM 10
scoreboard players operation @e[tag=aatrt,distance=..0.01] AutoAim_AimMode = @s AutoAim_AimMode
scoreboard players operation @e[tag=aatrt,distance=..0.01] AutoAim_Owner = @s AutoAim_ID