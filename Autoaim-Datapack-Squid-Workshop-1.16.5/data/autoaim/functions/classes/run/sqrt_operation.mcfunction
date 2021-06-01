scoreboard players operation SQRT AutoAim_V04 = SQRT AutoAim_V00
scoreboard players operation SQRT AutoAim_V04 /= SQRT AutoAim_V01
scoreboard players operation SQRT AutoAim_V04 += SQRT AutoAim_V01
scoreboard players operation SQRT AutoAim_V04 /= SQRT AutoAim_V03
scoreboard players operation SQRT AutoAim_V02 = SQRT AutoAim_V01
scoreboard players operation SQRT AutoAim_V05 = SQRT AutoAim_V04
scoreboard players operation SQRT AutoAim_V05 -= SQRT AutoAim_V02
execute if score SQRT AutoAim_V05 matches -1..1 run scoreboard players operation Var AutoAim_SQ = SQRT AutoAim_V04
execute unless score SQRT AutoAim_V05 matches -1..1 run scoreboard players operation SQRT AutoAim_V01 = SQRT AutoAim_V04
execute unless score SQRT AutoAim_V05 matches -1..1 run function autoaim:classes/run/sqrt_operation