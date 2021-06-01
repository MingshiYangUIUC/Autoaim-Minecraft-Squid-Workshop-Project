#get velocity of target [AutoAim_x,AutoAim_y,AutoAim_z]

execute store result score Var AutoAim_Vx0 run data get entity @e[tag=aatgt,limit=1] Motion[0] 10000
execute store result score Var AutoAim_Vy0 run data get entity @e[tag=aatgt,limit=1] Motion[1] 10000
execute store result score Var AutoAim_Vz0 run data get entity @e[tag=aatgt,limit=1] Motion[2] 10000

execute if entity @e[tag=aatgt,limit=1,nbt={OnGround:1b}] run scoreboard players set Var AutoAim_Vy0 0 