execute if score Var AutoAim_Phase matches 1 run execute store result score Var AutoAim_Vx run data get entity @e[tag=aatgt,limit=1] Pos[0] 10000
execute if score Var AutoAim_Phase matches 1 run execute store result score Var AutoAim_Vy run data get entity @e[tag=aatgt,limit=1] Pos[1] 10000
execute if score Var AutoAim_Phase matches 1 run execute store result score Var AutoAim_Vz run data get entity @e[tag=aatgt,limit=1] Pos[2] 10000

execute if score Var AutoAim_Phase matches 1 run execute store result score Time1 AutoAim_T run time query gametime

execute if score Var AutoAim_Phase matches 2 run execute store result score Var AutoAim_Vx0 run data get entity @e[tag=aatgt,limit=1] Pos[0] 10000
execute if score Var AutoAim_Phase matches 2 run execute store result score Var AutoAim_Vy0 run data get entity @e[tag=aatgt,limit=1] Pos[1] 10000
execute if score Var AutoAim_Phase matches 2 run execute store result score Var AutoAim_Vz0 run data get entity @e[tag=aatgt,limit=1] Pos[2] 10000

execute if score Var AutoAim_Phase matches 2 run execute store result score Time2 AutoAim_T run time query gametime

execute if score Var AutoAim_Phase matches 2 run scoreboard players operation Var AutoAim_Vx0 -= Var AutoAim_Vx
execute if score Var AutoAim_Phase matches 2 run scoreboard players operation Var AutoAim_Vy0 -= Var AutoAim_Vy
execute if score Var AutoAim_Phase matches 2 run scoreboard players operation Var AutoAim_Vz0 -= Var AutoAim_Vz

execute if score Var AutoAim_Phase matches 2 run scoreboard players operation Time2 AutoAim_T -= Time1 AutoAim_T

execute if score Var AutoAim_Phase matches 2 run scoreboard players operation Var AutoAim_Vx0 /= Time2 AutoAim_T
execute if score Var AutoAim_Phase matches 2 run scoreboard players operation Var AutoAim_Vy0 /= Time2 AutoAim_T
execute if score Var AutoAim_Phase matches 2 run scoreboard players operation Var AutoAim_Vz0 /= Time2 AutoAim_T
