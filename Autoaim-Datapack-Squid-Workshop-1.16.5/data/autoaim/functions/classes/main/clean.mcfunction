scoreboard objectives remove AutoAim_C10
scoreboard objectives remove AutoAim_C100
scoreboard objectives remove AutoAim_C1000
scoreboard objectives remove AutoAim_C10000
scoreboard objectives remove AutoAim_C100000
scoreboard objectives remove AutoAim_C1000000
scoreboard objectives remove AutoAim_C180
scoreboard objectives remove AutoAim_C1800000
scoreboard objectives remove AutoAim_C3600000
scoreboard objectives remove AutoAim_C-1
scoreboard objectives remove AutoAim_C2
scoreboard objectives remove AutoAim_Pi

scoreboard objectives remove AutoAim_V00
scoreboard objectives remove AutoAim_V01
scoreboard objectives remove AutoAim_V02
scoreboard objectives remove AutoAim_V03
scoreboard objectives remove AutoAim_V04
scoreboard objectives remove AutoAim_V05
scoreboard objectives remove AutoAim_V06

scoreboard objectives remove AutoAim_Phi


scoreboard objectives remove AutoAim_Rpos
scoreboard objectives remove AutoAim_Rint
scoreboard objectives remove AutoAim_Rdec
scoreboard objectives remove AutoAim_ypos
scoreboard objectives remove AutoAim_yint
scoreboard objectives remove AutoAim_ydec

scoreboard objectives remove AutoAim_Ang
scoreboard objectives remove AutoAim_dAdR
scoreboard objectives remove AutoAim_dAdy
scoreboard objectives remove AutoAim_A

scoreboard objectives remove AutoAim_Tim
scoreboard objectives remove AutoAim_dTdR
scoreboard objectives remove AutoAim_dTdy
scoreboard objectives remove AutoAim_T

scoreboard objectives remove AutoAim_Posx0
scoreboard objectives remove AutoAim_Posy0
scoreboard objectives remove AutoAim_Posz0
scoreboard objectives remove AutoAim_Posx
scoreboard objectives remove AutoAim_Posy
scoreboard objectives remove AutoAim_Posz
scoreboard objectives remove AutoAim_Vx0
scoreboard objectives remove AutoAim_Vy0
scoreboard objectives remove AutoAim_Vz0
scoreboard objectives remove AutoAim_Vx
scoreboard objectives remove AutoAim_Vy
scoreboard objectives remove AutoAim_Vz
scoreboard objectives remove AutoAim_Posxd
scoreboard objectives remove AutoAim_Posyd
scoreboard objectives remove AutoAim_Poszd
scoreboard objectives remove AutoAim_I
scoreboard objectives remove AutoAim_O
scoreboard objectives remove AutoAim_Iint
scoreboard objectives remove AutoAim_Idec
scoreboard objectives remove AutoAim_Omin
scoreboard objectives remove AutoAim_Omax
scoreboard objectives remove AutoAim_aTan

scoreboard objectives remove AutoAim_SQ
scoreboard objectives remove AutoAim_tbase
scoreboard objectives remove AutoAim_tol
scoreboard objectives remove AutoAim_lr
scoreboard objectives remove AutoAim_grad
scoreboard objectives remove AutoAim_try
scoreboard objectives remove AutoAim_tryM
scoreboard objectives remove AutoAim_err
scoreboard objectives remove AutoAim_OOR

scoreboard objectives remove AutoAim_x
scoreboard objectives remove AutoAim_y
scoreboard objectives remove AutoAim_z
scoreboard objectives remove AutoAim_dx
scoreboard objectives remove AutoAim_dy
scoreboard objectives remove AutoAim_dz

scoreboard objectives remove AutoAim_Phase
scoreboard objectives remove AutoAim_AimMode
scoreboard objectives remove AutoAim_ID
scoreboard objectives remove AutoAim_Owner
scoreboard objectives remove AutoAim_RH
scoreboard objectives remove AutoAim_RV
scoreboard objectives remove AutoAim_RT

scoreboard objectives remove AutoAim_draw
scoreboard objectives remove AutoAim_shoot
scoreboard objectives remove AutoAim_Shift_

kill @e[tag=aahelp]
kill @e[tag=aahelp2]
tag @e remove aaslf
tag @e remove aatrt

tellraw @a [{"text":"Cleared all scoreboard objectives, tags, and helpers related to auto aim."}]