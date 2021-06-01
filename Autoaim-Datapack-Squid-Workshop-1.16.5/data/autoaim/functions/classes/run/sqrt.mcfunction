#input is AutoAim_SQ, output is AutoAim_SQ
execute if score Var AutoAim_SQ matches ..-1 run scoreboard players set Var AutoAim_SQ 0
scoreboard players operation SQRT AutoAim_V00 = Var AutoAim_SQ
scoreboard players set SQRT AutoAim_V01 4000
scoreboard players set SQRT AutoAim_V02 0
scoreboard players set SQRT AutoAim_V03 2
execute unless score SQRT AutoAim_V01 = SQRT AutoAim_V02 run function autoaim:classes/run/sqrt_operation
