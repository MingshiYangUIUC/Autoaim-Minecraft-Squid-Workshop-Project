#Need to be entity specific, store at aatgt, put things stored in var stored in @e[tag=aatgt,limit=1]

#tellraw @a [{"score":{"name":"@s","objective":"AutoAim_Phase"}}]
execute if score @s AutoAim_Phase matches 1 run execute store result score @e[tag=aatgt,limit=1] AutoAim_Vx run data get entity @e[tag=aatgt,limit=1] Pos[0] 10000
execute if score @s AutoAim_Phase matches 1 run execute store result score @e[tag=aatgt,limit=1] AutoAim_Vy run data get entity @e[tag=aatgt,limit=1] Pos[1] 10000
execute if score @s AutoAim_Phase matches 1 run execute store result score @e[tag=aatgt,limit=1] AutoAim_Vz run data get entity @e[tag=aatgt,limit=1] Pos[2] 10000
#tellraw @a [{"score":{"name":"Var","objective":"AutoAim_Vx"}}]
execute if score @s AutoAim_Phase matches 1 run execute store result score @s AutoAim_V01 run time query gametime

execute if score @s AutoAim_Phase matches 2 run execute store result score @e[tag=aatgt,limit=1] AutoAim_Vx0 run data get entity @e[tag=aatgt,limit=1] Pos[0] 10000
execute if score @s AutoAim_Phase matches 2 run execute store result score @e[tag=aatgt,limit=1] AutoAim_Vy0 run data get entity @e[tag=aatgt,limit=1] Pos[1] 10000
execute if score @s AutoAim_Phase matches 2 run execute store result score @e[tag=aatgt,limit=1] AutoAim_Vz0 run data get entity @e[tag=aatgt,limit=1] Pos[2] 10000

execute if score @s AutoAim_Phase matches 2 run execute store result score @s AutoAim_V02 run time query gametime

execute if score @s AutoAim_Phase matches 2 run scoreboard players operation @e[tag=aatgt,limit=1] AutoAim_Vx0 -= @e[tag=aatgt,limit=1] AutoAim_Vx
execute if score @s AutoAim_Phase matches 2 run scoreboard players operation @e[tag=aatgt,limit=1] AutoAim_Vy0 -= @e[tag=aatgt,limit=1] AutoAim_Vy
execute if score @s AutoAim_Phase matches 2 run scoreboard players operation @e[tag=aatgt,limit=1] AutoAim_Vz0 -= @e[tag=aatgt,limit=1] AutoAim_Vz

execute if score @s AutoAim_Phase matches 2 run scoreboard players operation @s AutoAim_V02 -= @s AutoAim_V01

execute if score @s AutoAim_Phase matches 2 run scoreboard players operation @e[tag=aatgt,limit=1] AutoAim_Vx0 /= @s AutoAim_V02
execute if score @s AutoAim_Phase matches 2 run scoreboard players operation @e[tag=aatgt,limit=1] AutoAim_Vy0 /= @s AutoAim_V02
execute if score @s AutoAim_Phase matches 2 run scoreboard players operation @e[tag=aatgt,limit=1] AutoAim_Vz0 /= @s AutoAim_V02

#execute if score @s[nbt={OnGround:1b}] AutoAim_Phase matches 2 run scoreboard players add @e[tag=aatgt,limit=1] AutoAim_Vy0 784

#say dpdt
#tellraw @a [{"score":{"name":"@e[tag=aatgt,limit=1]","objective":"AutoAim_Vx0"}}]
#tellraw @a[tag=aadebug] [{"score":{"name":"@e[tag=aatgt,limit=1]","objective":"AutoAim_Vy0"}}]
#execute if score @s AutoAim_Phase matches 2 run tellraw @a [{"score":{"name":"@s","objective":"T2"}}]