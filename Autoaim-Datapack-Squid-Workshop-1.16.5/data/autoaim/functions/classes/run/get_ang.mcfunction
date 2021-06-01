function autoaim:classes/run/header

scoreboard players set Var AutoAim_A -99999999
scoreboard players set Var AutoAim_dAdR -99999999
scoreboard players set Var AutoAim_dAdy -99999999

#Rint get value of AutoAim_A
execute unless entity @s[tag=aafail] run function autoaim:classes/run/map_a

execute if score Var AutoAim_A matches -99999999 run tag @s[tag=aaslf] add aafail
#execute if entity @s[tag=aafail] run say fail
#Rint get value of dA/dR,dA/dy
execute unless entity @s[tag=aafail] run function autoaim:classes/run/map_ag

execute if score Var AutoAim_dAdR matches -99999999 run tag @s[tag=aaslf] add aafail
execute if score Var AutoAim_dAdy matches -99999999 run tag @s[tag=aaslf] add aafail

#Ang = AutoAim_A + AutoAim_dAdR*Rdec + AutoAim_dAdy*ydec

#tellraw @a [{"score":{"name":"Var","objective":"Rdec"}},{"text":"  "},{"score":{"name":"Var","objective":"dAdR"}}]
#tellraw @a [{"score":{"name":"Var","objective":"ydec"}},{"text":"  "},{"score":{"name":"Var","objective":"dAdy"}}]

scoreboard players operation Var AutoAim_Rdec /= Var AutoAim_C10
scoreboard players operation Var AutoAim_dAdR *= Var AutoAim_Rdec
scoreboard players operation Var AutoAim_dAdR /= Var AutoAim_C1000

scoreboard players operation Var AutoAim_ydec /= Var AutoAim_C10
scoreboard players operation Var AutoAim_dAdy *= Var AutoAim_ydec
scoreboard players operation Var AutoAim_dAdy /= Var AutoAim_C1000

#tellraw @a [{"score":{"name":"Var","objective":"Rdec"}},{"text":"  "},{"score":{"name":"Var","objective":"dAdR"}}]
#tellraw @a [{"score":{"name":"Var","objective":"ydec"}},{"text":"  "},{"score":{"name":"Var","objective":"dAdy"}}]

scoreboard players operation Var AutoAim_Ang = Var AutoAim_A
#tellraw @a [{"score":{"name":"Var","objective":"Ang"}}]
scoreboard players operation Var AutoAim_Ang += Var AutoAim_dAdR
scoreboard players operation Var AutoAim_Ang += Var AutoAim_dAdy

#tellraw @a [{"score":{"name":"Var","objective":"Ang"}}]