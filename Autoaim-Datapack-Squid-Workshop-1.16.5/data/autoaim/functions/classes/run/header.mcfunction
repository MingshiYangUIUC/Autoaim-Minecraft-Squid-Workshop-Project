#Format of coordinate: xxx,xxxx means abc.defg
#Format of AutoAim_Angle: same xxx,xxxx in degrees
#Format of time: same xxx,xxxx

scoreboard players set Var AutoAim_C10000 10000 

#R value from AutoAim_Rpos
scoreboard players operation Var AutoAim_Rdec = Var AutoAim_Rpos
scoreboard players operation Var AutoAim_Rdec %= Var AutoAim_C10000
scoreboard players operation Var AutoAim_Rint = Var AutoAim_Rpos
scoreboard players operation Var AutoAim_Rint -= Var AutoAim_Rdec

#AutoAim_y value from AutoAim_ypos
scoreboard players operation Var AutoAim_ydec = Var AutoAim_ypos
scoreboard players operation Var AutoAim_ydec %= Var AutoAim_C10000
scoreboard players operation Var AutoAim_yint = Var AutoAim_ypos
scoreboard players operation Var AutoAim_yint -= Var AutoAim_ydec



#get AutoAim_A and/or get AutoAim_T