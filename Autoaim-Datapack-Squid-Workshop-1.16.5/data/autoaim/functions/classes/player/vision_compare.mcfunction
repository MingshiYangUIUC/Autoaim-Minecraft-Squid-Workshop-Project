#say me

execute as @a[tag=aaslf,limit=1] at @s anchored eyes run tp @e[tag=aahelp2,limit=1] ^ ^ ^

execute at @s anchored eyes run tp @e[tag=aahelp] ^ ^ ^ facing entity @e[tag=aahelp2,limit=1]

execute store result score Var AutoAim_RH run data get entity @e[tag=aahelp,limit=1] Rotation[0] 10
execute store result score Var AutoAim_RV run data get entity @e[tag=aahelp,limit=1] Rotation[1] -10

tellraw @a[tag=aadebug2] [{"text":"VarAutoAim_RH: "},{"score":{"name":"Var","objective":"AutoAim_RH"}}]

scoreboard players add Var AutoAim_RH 1800

execute if score Var AutoAim_RH matches ..-1 run scoreboard players add Var AutoAim_RH 3600
execute if score Var AutoAim_RV matches ..-1 run scoreboard players add Var AutoAim_RV 3600

tellraw @a[tag=aadebug2] [{"text":"VarAutoAim_RH: "},{"score":{"name":"Var","objective":"AutoAim_RH"}}]
tellraw @a[tag=aadebug2] [{"text":"RSAutoAim_RV: "},{"score":{"name":"RS","objective":"AutoAim_RV"}}]


scoreboard players operation Var AutoAim_RH -= RS AutoAim_RH
scoreboard players operation Var AutoAim_RV -= RS AutoAim_RV



execute if score Var AutoAim_RH matches ..-1 run scoreboard players operation Var AutoAim_RH *= Var AutoAim_C-1
execute if score Var AutoAim_RV matches ..-1 run scoreboard players operation Var AutoAim_RV *= Var AutoAim_C-1

#AutoAim_RT^2 = (AutoAim_RH*cos(AutoAim_RV))^2+AutoAim_RV^2 for small AutoAim_RH,AutoAim_RV, afterwards just compare AutoAim_RT^2 using variablename AutoAim_RT

scoreboard players operation COSIN AutoAim_RV = Var AutoAim_RV
scoreboard players operation COSIN AutoAim_RV *= Var AutoAim_C1000

function autoaim:classes/run/cosdeg

#scoreboard players operation COSOUT AutoAim_V00 /= Var AutoAim_C100
scoreboard players operation Var AutoAim_RH *= COSOUT AutoAim_V00
scoreboard players operation Var AutoAim_RH /= Var AutoAim_C10000

scoreboard players operation Var AutoAim_RH *= Var AutoAim_RH

scoreboard players operation Var AutoAim_RV *= Var AutoAim_RV

scoreboard players operation @s AutoAim_RT = Var AutoAim_RH
scoreboard players operation @s AutoAim_RT += Var AutoAim_RV

execute if score @s AutoAim_RT < RM AutoAim_RT run tag @s add aasight
execute at @s if score @s AutoAim_RT < RM AutoAim_RT run tag @e[tag=aasight,distance=0.001..] remove aasight

scoreboard players operation RM AutoAim_RT < @s AutoAim_RT



tellraw @a[tag=aadebug2] [{"text":"RMRT: "},{"score":{"name":"RM","objective":"AutoAim_RT"}}]
tellraw @a[tag=aadebug2] [{"text":"@sRT: "},{"score":{"name":"@s","objective":"AutoAim_RT"}}]