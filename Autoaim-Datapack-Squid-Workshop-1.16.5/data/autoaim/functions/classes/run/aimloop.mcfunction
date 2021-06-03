#the loop.
#AutoAim_C10000 AutoAim_C2 AutoAim_C-1
#tellraw @a [{"text":"AutoAim_try "},{"score":{"name":"Var","objective":"AutoAim_try"}}]

#tell @a[tag=aadebug] loop

scoreboard players operation Var AutoAim_grad *= Var AutoAim_lr
scoreboard players operation Var AutoAim_grad /= Var AutoAim_C10000

scoreboard players operation Var AutoAim_tbase += Var AutoAim_grad

#tellraw @a [{"text":"AutoAim_tbase "},{"score":{"name":"Var","objective":"AutoAim_tbase"}}]

scoreboard players operation Var AutoAim_Vx = Var AutoAim_Vx0
scoreboard players operation Var AutoAim_Vy = Var AutoAim_Vy0
scoreboard players operation Var AutoAim_Vz = Var AutoAim_Vz0

scoreboard players operation Var AutoAim_Vx *= Var AutoAim_tbase
scoreboard players operation Var AutoAim_Vy *= Var AutoAim_tbase
scoreboard players operation Var AutoAim_Vz *= Var AutoAim_tbase

scoreboard players operation Var AutoAim_Vx /= Var AutoAim_C10000
scoreboard players operation Var AutoAim_Vy /= Var AutoAim_C10000
scoreboard players operation Var AutoAim_Vz /= Var AutoAim_C10000

scoreboard players operation Var AutoAim_Posx = Var AutoAim_Posx0
scoreboard players operation Var AutoAim_Posy = Var AutoAim_Posy0
scoreboard players operation Var AutoAim_Posz = Var AutoAim_Posz0

scoreboard players operation Var AutoAim_Posx += Var AutoAim_Vx
scoreboard players operation Var AutoAim_Posy += Var AutoAim_Vy
scoreboard players operation Var AutoAim_Posz += Var AutoAim_Vz


#tellraw @a [{"text":"Px  "},{"score":{"name":"Var","objective":"AutoAim_Posx"}}]

#tellraw @a [{"text":"AutoAim_Vz  "},{"score":{"name":"Var","objective":"AutoAim_Vz"}}]
#tellraw @a [{"text":"Pz  "},{"score":{"name":"Var","objective":"AutoAim_Posz"}}]
function autoaim:classes/run/cat_polar

#tellraw @a [{"text":"R "},{"score":{"name":"Var","objective":"AutoAim_Rpos"}}]
function autoaim:classes/run/get_tim
#tellraw @a [{"text":"AutoAim_Tim "},{"score":{"name":"Var","objective":"AutoAim_Tim"}}]
execute if score Var AutoAim_OOR matches 1 run scoreboard players operation Var AutoAim_err = Var AutoAim_tbase
execute unless score Var AutoAim_OOR matches 1 run scoreboard players operation Var AutoAim_err = Var AutoAim_Tim
execute unless score Var AutoAim_OOR matches 1 run scoreboard players operation Var AutoAim_err -= Var AutoAim_tbase


execute if score Var AutoAim_OOR matches 1 run scoreboard players operation Var AutoAim_err /= Var AutoAim_C2
execute if score Var AutoAim_OOR matches 1 run scoreboard players operation Var AutoAim_err *= Var AutoAim_C-1
scoreboard players operation Var AutoAim_grad = Var AutoAim_err

#tellraw @a [{"text":"AutoAim_grad "},{"score":{"name":"Var","objective":"AutoAim_grad"}}]

#tellraw @a [{"text":"Lp "}]

scoreboard players add Var AutoAim_try 1
#tellraw @a [{"score":{"name":"Var","objective":"AutoAim_Tim"}}]
#tellraw @a [{"score":{"name":"Var","objective":"AutoAim_err"}},{"text":"  "},{"score":{"name":"Var","objective":"AutoAim_tol"}}]

execute if score Var AutoAim_err matches ..-1 run scoreboard players operation Var AutoAim_err *= Var AutoAim_C-1

execute if score Var AutoAim_err > Var AutoAim_tol if score Var AutoAim_try < Var AutoAim_tryM run function autoaim:classes/run/aimloop