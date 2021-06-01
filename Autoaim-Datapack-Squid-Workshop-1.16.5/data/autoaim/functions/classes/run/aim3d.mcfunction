#define some parameters

#AutoAim_Posxyz0 ,AutoAim_Vxyz for reference (float*10000)

#time to be found (float*10000)
scoreboard players set Var AutoAim_tbase 0

#tolerance of error (float*10000)
scoreboard players set Var AutoAim_tol 1000

#learning rate (float*10000)
scoreboard players set Var AutoAim_lr 11000

#AutoAim_try and max AutoAim_try to prevent overflow (integer)
scoreboard players set Var AutoAim_try 0
scoreboard players operation Var AutoAim_tryM = @s AutoAim_tryM

#gradient of learning (float*10000)
scoreboard players set Var AutoAim_grad 0

#error (float*10000)
scoreboard players set Var AutoAim_err 100000

#varying position: AutoAim_Posx,AutoAim_y,AutoAim_z d

#initialize Pos0,V is separate... because motion is quite wrong
#function aa:run/get_v3d
function autoaim:classes/run/get_disp3d

execute unless entity @e[tag=aatgt] run tag @s add aafail

execute if score Var AutoAim_Vx0 matches 0 if score Var AutoAim_Vy0 matches 0 if score Var AutoAim_Vz0 matches 0 run tag @s[tag=aaslf] add aasuc
tag @s[tag=aasuc] add aazero

#enter the loop, make the absolute value of error within the loop
execute unless entity @s[tag=aasuc] if score Var AutoAim_err > Var AutoAim_tol if score Var AutoAim_try < Var AutoAim_tryM run function autoaim:classes/run/aimloop

tellraw @a[tag=aadebug] [{"score":{"name":"Var","objective":"AutoAim_err"}}]
tellraw @a[tag=aadebug] [{"score":{"name":"Var","objective":"AutoAim_tol"}}]
tellraw @a[tag=aadebug] [{"score":{"name":"Var","objective":"AutoAim_try"}}]
tellraw @a[tag=aadebug] [{"score":{"name":"Var","objective":"AutoAim_tryM"}}]

#exit the loop, if not fail and not used up the amount of tries:
#calculate a from resulting position, combine with t

execute unless score Var AutoAim_OOR matches 1 if score Var AutoAim_err matches 1..3000 if score Var AutoAim_try < Var AutoAim_tryM run tag @s[tag=aaslf] add aasuc

#tellraw @a [{"score":{"name":"Var","objective":"AutoAim_try"}}]

execute if entity @s[tag=aasuc] run scoreboard players operation Var AutoAim_Posx = Var AutoAim_Posx0
execute if entity @s[tag=aasuc] run scoreboard players operation Var AutoAim_Posy = Var AutoAim_Posy0
execute if entity @s[tag=aasuc] run scoreboard players operation Var AutoAim_Posz = Var AutoAim_Posz0

execute if entity @s[tag=aasuc,tag=!aazero] run scoreboard players operation Var AutoAim_Posx += Var AutoAim_Vx
execute if entity @s[tag=aasuc,tag=!aazero] run scoreboard players operation Var AutoAim_Posy += Var AutoAim_Vy
execute if entity @s[tag=aasuc,tag=!aazero] run scoreboard players operation Var AutoAim_Posz += Var AutoAim_Vz
execute if entity @s[tag=aasuc] run function autoaim:classes/run/cat_polar

execute if entity @s[tag=aasuc] run function autoaim:classes/run/get_ang
execute if entity @s[tag=aasuc] run function autoaim:classes/run/get_tim
#tellraw @a [{"score":{"name":"Var","objective":"AutoAim_Tim"}}]
#tellraw @a [{"score":{"name":"Var","objective":"AutoAim_Rpos"}}]
execute if score Var AutoAim_Rpos matches 1.. if entity @s[tag=aasuc,tag=!aafail] run function autoaim:classes/run/face_dynamic

title @s[tag=aadebug,tag=aasuc] actionbar [{"score":{"name":"Var","objective":"AutoAim_try"}},{"text":" tries"}]
tellraw @s[tag=aadebug,tag=aasuc] [{"text":"ERR: "},{"score":{"name":"Var","objective":"AutoAim_err"}}]
tag @s[type=player] remove aasuc
tag @s remove aazero
tag @s remove aafail