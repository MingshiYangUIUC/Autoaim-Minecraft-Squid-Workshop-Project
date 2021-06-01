scoreboard objectives add AutoAim_C10 dummy
scoreboard objectives add AutoAim_C100 dummy
scoreboard objectives add AutoAim_C1000 dummy
scoreboard objectives add AutoAim_C10000 dummy
scoreboard objectives add AutoAim_C100000 dummy
scoreboard objectives add AutoAim_C1000000 dummy
scoreboard objectives add AutoAim_C180 dummy
scoreboard objectives add AutoAim_C1800000 dummy
scoreboard objectives add AutoAim_C3600000 dummy
scoreboard objectives add AutoAim_C-1 dummy
scoreboard objectives add AutoAim_C2 dummy
scoreboard objectives add AutoAim_Pi dummy

scoreboard players set Var AutoAim_C10 10
scoreboard players set Var AutoAim_C100 100
scoreboard players set Var AutoAim_C1000 1000
scoreboard players set Var AutoAim_C10000 10000
scoreboard players set Var AutoAim_C100000 100000
scoreboard players set Var AutoAim_C1000000 1000000
scoreboard players set Var AutoAim_C180 180
scoreboard players set Var AutoAim_C1800000 1800000
scoreboard players set Var AutoAim_C3600000 3600000
scoreboard players set Var AutoAim_C-1 -1
scoreboard players set Var AutoAim_C2 2
scoreboard players set Var AutoAim_Pi 31416

scoreboard objectives add AutoAim_V00 dummy
scoreboard objectives add AutoAim_V01 dummy
scoreboard objectives add AutoAim_V02 dummy
scoreboard objectives add AutoAim_V03 dummy
scoreboard objectives add AutoAim_V04 dummy
scoreboard objectives add AutoAim_V05 dummy
scoreboard objectives add AutoAim_V06 dummy

scoreboard objectives add AutoAim_Phi dummy


scoreboard objectives add AutoAim_Rpos dummy
scoreboard objectives add AutoAim_Rint dummy
scoreboard objectives add AutoAim_Rdec dummy
scoreboard objectives add AutoAim_ypos dummy
scoreboard objectives add AutoAim_yint dummy
scoreboard objectives add AutoAim_ydec dummy

scoreboard objectives add AutoAim_Ang dummy
scoreboard objectives add AutoAim_dAdR dummy
scoreboard objectives add AutoAim_dAdy dummy
scoreboard objectives add AutoAim_A dummy

scoreboard objectives add AutoAim_Tim dummy
scoreboard objectives add AutoAim_dTdR dummy
scoreboard objectives add AutoAim_dTdy dummy
scoreboard objectives add AutoAim_T dummy

scoreboard objectives add AutoAim_Posx0 dummy
scoreboard objectives add AutoAim_Posy0 dummy
scoreboard objectives add AutoAim_Posz0 dummy
scoreboard objectives add AutoAim_Posx dummy
scoreboard objectives add AutoAim_Posy dummy
scoreboard objectives add AutoAim_Posz dummy
scoreboard objectives add AutoAim_Vx0 dummy
scoreboard objectives add AutoAim_Vy0 dummy
scoreboard objectives add AutoAim_Vz0 dummy
scoreboard objectives add AutoAim_Vx dummy
scoreboard objectives add AutoAim_Vy dummy
scoreboard objectives add AutoAim_Vz dummy
scoreboard objectives add AutoAim_Posxd dummy
scoreboard objectives add AutoAim_Posyd dummy
scoreboard objectives add AutoAim_Poszd dummy
scoreboard objectives add AutoAim_I dummy
scoreboard objectives add AutoAim_O dummy
scoreboard objectives add AutoAim_Iint dummy
scoreboard objectives add AutoAim_Idec dummy
scoreboard objectives add AutoAim_Omin dummy
scoreboard objectives add AutoAim_Omax dummy
scoreboard objectives add AutoAim_aTan dummy

scoreboard objectives add AutoAim_SQ dummy
scoreboard objectives add AutoAim_tbase dummy
scoreboard objectives add AutoAim_tol dummy
scoreboard objectives add AutoAim_lr dummy
scoreboard objectives add AutoAim_grad dummy
scoreboard objectives add AutoAim_try dummy
scoreboard objectives add AutoAim_tryM dummy
scoreboard objectives add AutoAim_err dummy
scoreboard objectives add AutoAim_OOR dummy

scoreboard objectives add AutoAim_x dummy
scoreboard objectives add AutoAim_y dummy
scoreboard objectives add AutoAim_z dummy
scoreboard objectives add AutoAim_dx dummy
scoreboard objectives add AutoAim_dy dummy
scoreboard objectives add AutoAim_dz dummy

scoreboard objectives add AutoAim_Phase dummy
scoreboard objectives add AutoAim_AimMode dummy
scoreboard objectives add AutoAim_ID dummy
scoreboard objectives add AutoAim_Owner dummy
scoreboard objectives add AutoAim_RH dummy
scoreboard objectives add AutoAim_RV dummy
scoreboard objectives add AutoAim_RT dummy

scoreboard objectives add AutoAim_draw minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add AutoAim_shoot minecraft.used:minecraft.bow
scoreboard objectives add AutoAim_Shift_ minecraft.custom:minecraft.sneak_time
scoreboard players set @a AutoAim_Shift_ 0
scoreboard players set @a AutoAim_AimMode 0
scoreboard players set @a AutoAim_tryM 10

execute unless entity @e[tag=aahelp] run summon area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["aahelp"]}
execute unless entity @e[tag=aahelp2] run summon area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["aahelp2"]}


execute as @a store result score @s AutoAim_ID run data get entity @s UUID[2]
