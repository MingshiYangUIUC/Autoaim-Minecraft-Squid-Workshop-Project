#input is AutoAim_Posx,AutoAim_Posy,AutoAim_Posz
#output is R,ypos(AutoAim_Posy),and an AutoAim_Angle called AutoAim_Phi

scoreboard players set Var AutoAim_C10 10


scoreboard players operation Var AutoAim_Posxd = Var AutoAim_Posx
scoreboard players operation Var AutoAim_Poszd = Var AutoAim_Posz
tellraw @a[tag=aadebug] [{"text":"AutoAim_Posxd: "},{"score":{"name":"Var","objective":"AutoAim_Posxd"}}]
scoreboard players operation Var AutoAim_Posxd /= Var AutoAim_C10
scoreboard players operation Var AutoAim_Poszd /= Var AutoAim_C10
scoreboard players operation Var AutoAim_Posxd /= Var AutoAim_C2
scoreboard players operation Var AutoAim_Poszd /= Var AutoAim_C2

scoreboard players operation Var AutoAim_Posxd *= Var AutoAim_Posxd
scoreboard players operation Var AutoAim_Poszd *= Var AutoAim_Poszd

scoreboard players operation Var AutoAim_Posxd /= Var AutoAim_C10
scoreboard players operation Var AutoAim_Poszd /= Var AutoAim_C10
#scoreboard players operation Var AutoAim_Posxd /= Var AutoAim_C2
#scoreboard players operation Var AutoAim_Poszd /= Var AutoAim_C2

scoreboard players operation Var AutoAim_SQ = Var AutoAim_Posxd
scoreboard players operation Var AutoAim_SQ += Var AutoAim_Poszd

#scoreboard players operation Var AutoAim_SQ /= Var AutoAim_C2
#scoreboard players operation Var AutoAim_SQ /= Var AutoAim_C2

execute unless score Var AutoAim_SQ matches 0..214748363 run tag @s[tag=aaslf] add aafail
execute if score Var AutoAim_SQ matches 0..214748363 run scoreboard players operation Var AutoAim_SQ *= Var AutoAim_C10

tellraw @a[tag=aadebug] [{"text":"AutoAim_SQ: "},{"score":{"name":"Var","objective":"AutoAim_SQ"}}]

function autoaim:classes/run/sqrt
scoreboard players operation Var AutoAim_SQ *= Var AutoAim_C2
scoreboard players operation Var AutoAim_SQ *= Var AutoAim_C10

tellraw @a[tag=aadebug] [{"text":"AutoAim_SQ: "},{"score":{"name":"Var","objective":"AutoAim_SQ"}}]

scoreboard players operation Var AutoAim_Rpos = Var AutoAim_SQ
scoreboard players operation Var AutoAim_ypos = Var AutoAim_Posy

scoreboard players set Var AutoAim_Phi 0
execute unless entity @s[tag=aafail] run function autoaim:classes/run/get_atan
scoreboard players operation Var AutoAim_Phi = Var AutoAim_aTan