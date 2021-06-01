function autoaim:classes/run/header

#check if in range
scoreboard players set Var AutoAim_OOR 0
scoreboard players set Var AutoAim_T -99999999

#Rint get value of AutoAim_T
function autoaim:classes/run/map_t
execute if score Var AutoAim_T matches -99999999 run scoreboard players set Var AutoAim_OOR 1

#Rint get value of dT/dR,dT/dy
execute unless score Var AutoAim_OOR matches 1 run function autoaim:classes/run/map_tg

#AutoAim_Tim = AutoAim_T + AutoAim_dTdR*Rdec + AutoAim_dTdy*ydec


scoreboard players operation Var AutoAim_Rdec /= Var AutoAim_C10
scoreboard players operation Var AutoAim_dTdR *= Var AutoAim_Rdec
scoreboard players operation Var AutoAim_dTdR /= Var AutoAim_C1000

scoreboard players operation Var AutoAim_ydec /= Var AutoAim_C10
scoreboard players operation Var AutoAim_dTdy *= Var AutoAim_ydec
scoreboard players operation Var AutoAim_dTdy /= Var AutoAim_C1000

scoreboard players operation Var AutoAim_Tim = Var AutoAim_T
scoreboard players operation Var AutoAim_Tim += Var AutoAim_dTdR
scoreboard players operation Var AutoAim_Tim += Var AutoAim_dTdy