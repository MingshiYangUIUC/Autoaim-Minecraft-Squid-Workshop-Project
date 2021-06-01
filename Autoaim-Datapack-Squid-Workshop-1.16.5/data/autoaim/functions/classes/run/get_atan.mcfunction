#in the function input called AutoAim_I,output called AutoAim_O

#ATAN is tan-1(AutoAim_x/AutoAim_z)!

#flip to positive with a new set of dummy
scoreboard players set Var AutoAim_Posxd 0
scoreboard players set Var AutoAim_Poszd 0
#tellraw @a [{"score":{"name":"Var","objective":"AutoAim_Posx"}}]
#tellraw @a [{"score":{"name":"Var","objective":"AutoAim_Posz"}}]
execute if score Var AutoAim_Posx matches ..-1 run scoreboard players operation Var AutoAim_Posxd -= Var AutoAim_Posx
execute if score Var AutoAim_Posx matches 0.. run scoreboard players operation Var AutoAim_Posxd += Var AutoAim_Posx
execute if score Var AutoAim_Posz matches ..-1 run scoreboard players operation Var AutoAim_Poszd -= Var AutoAim_Posz
execute if score Var AutoAim_Posz matches 0.. run scoreboard players operation Var AutoAim_Poszd += Var AutoAim_Posz

#division
scoreboard players set Var AutoAim_C10000 10000
scoreboard players set Var AutoAim_C10 10
execute if score Var AutoAim_Poszd matches 0 run scoreboard players set Var AutoAim_aTan 15708
execute unless score Var AutoAim_Poszd matches 0 run scoreboard players operation Var AutoAim_I = Var AutoAim_Posxd
execute unless score Var AutoAim_Poszd matches 0 run scoreboard players operation Var AutoAim_I *= Var AutoAim_C1000

#tellraw @a [{"score":{"name":"Var","objective":"AutoAim_I"}}]
execute unless score Var AutoAim_Poszd matches 0 run scoreboard players operation Var AutoAim_I /= Var AutoAim_Poszd
execute unless score Var AutoAim_Poszd matches 0 run scoreboard players operation Var AutoAim_I *= Var AutoAim_C10

#max AutoAim_Posz:200,0000, min AutoAim_z: 1


###-10 (100000):inc = 0.01 which is 100
execute if score Var AutoAim_I matches 0..99999 run scoreboard players set Var AutoAim_C100 100
execute if score Var AutoAim_I matches 0..99999 run scoreboard players operation Var AutoAim_Iint = Var AutoAim_I
execute if score Var AutoAim_I matches 0..99999 run scoreboard players operation Var AutoAim_Idec = Var AutoAim_I
execute if score Var AutoAim_I matches 0..99999 run scoreboard players operation Var AutoAim_Idec %= Var AutoAim_C100
execute if score Var AutoAim_I matches 0..99999 run scoreboard players operation Var AutoAim_Iint -= Var AutoAim_Idec
#get min value, AutoAim_Iint to AutoAim_O
execute if score Var AutoAim_I matches 0..99999 run function autoaim:classes/maps/map_atan_tiny
execute if score Var AutoAim_I matches 0..99999 run scoreboard players operation Var AutoAim_Omin = Var AutoAim_O
execute if score Var AutoAim_I matches 0..99999 run scoreboard players operation Var AutoAim_Iint += Var AutoAim_C100
#get max value
execute if score Var AutoAim_I matches 0..99999 run function autoaim:classes/maps/map_atan_tiny
execute if score Var AutoAim_I matches 0..99999 run scoreboard players operation Var AutoAim_Omax = Var AutoAim_O
#calculate
execute if score Var AutoAim_I matches 0..99999 run scoreboard players operation Var AutoAim_Omax -= Var AutoAim_Omin
execute if score Var AutoAim_I matches 0..99999 run scoreboard players operation Var AutoAim_Omax *= Var AutoAim_Idec
execute if score Var AutoAim_I matches 0..99999 run scoreboard players operation Var AutoAim_Omax /= Var AutoAim_C100
execute if score Var AutoAim_I matches 0..99999 run scoreboard players operation Var AutoAim_aTan = Var AutoAim_Omin
execute if score Var AutoAim_I matches 0..99999 run scoreboard players operation Var AutoAim_aTan += Var AutoAim_Omax

###10-100: inc=1
execute if score Var AutoAim_I matches 100000..999999 run scoreboard players set Var AutoAim_C10000 10000
execute if score Var AutoAim_I matches 100000..999999 run scoreboard players operation Var AutoAim_Iint = Var AutoAim_I
execute if score Var AutoAim_I matches 100000..999999 run scoreboard players operation Var AutoAim_Idec = Var AutoAim_I
execute if score Var AutoAim_I matches 100000..999999 run scoreboard players operation Var AutoAim_Idec %= Var AutoAim_C10000
execute if score Var AutoAim_I matches 100000..999999 run scoreboard players operation Var AutoAim_Iint -= Var AutoAim_Idec
#get min value, AutoAim_Iint to AutoAim_O
execute if score Var AutoAim_I matches 100000..999999 run function autoaim:classes/maps/map_atan_small
execute if score Var AutoAim_I matches 100000..999999 run scoreboard players operation Var AutoAim_Omin = Var AutoAim_O
execute if score Var AutoAim_I matches 100000..999999 run scoreboard players operation Var AutoAim_Iint += Var AutoAim_C10000
#get max value
execute if score Var AutoAim_I matches 100000..999999 run function autoaim:classes/maps/map_atan_small
execute if score Var AutoAim_I matches 100000..999999 run scoreboard players operation Var AutoAim_Omax = Var AutoAim_O
#calculate
execute if score Var AutoAim_I matches 100000..999999 run scoreboard players operation Var AutoAim_Omax -= Var AutoAim_Omin
execute if score Var AutoAim_I matches 100000..999999 run scoreboard players operation Var AutoAim_Omax *= Var AutoAim_Idec
execute if score Var AutoAim_I matches 100000..999999 run scoreboard players operation Var AutoAim_Omax /= Var AutoAim_C10000
execute if score Var AutoAim_I matches 100000..999999 run scoreboard players operation Var AutoAim_aTan = Var AutoAim_Omin
execute if score Var AutoAim_I matches 100000..999999 run scoreboard players operation Var AutoAim_aTan += Var AutoAim_Omax

###100-1000:inc=10
execute if score Var AutoAim_I matches 1000000..9999999 run scoreboard players set Var AutoAim_C100000 100000
execute if score Var AutoAim_I matches 1000000..9999999 run scoreboard players operation Var AutoAim_Iint = Var AutoAim_I
execute if score Var AutoAim_I matches 1000000..9999999 run scoreboard players operation Var AutoAim_Idec = Var AutoAim_I
execute if score Var AutoAim_I matches 1000000..9999999 run scoreboard players operation Var AutoAim_Idec %= Var AutoAim_C100000
execute if score Var AutoAim_I matches 1000000..9999999 run scoreboard players operation Var AutoAim_Iint -= Var AutoAim_Idec
#get min value, AutoAim_Iint to AutoAim_O
execute if score Var AutoAim_I matches 1000000..9999999 run function autoaim:classes/maps/map_atan_mid
execute if score Var AutoAim_I matches 1000000..9999999 run scoreboard players operation Var AutoAim_Omin = Var AutoAim_O
execute if score Var AutoAim_I matches 1000000..9999999 run scoreboard players operation Var AutoAim_Iint += Var AutoAim_C100000
#get max value
execute if score Var AutoAim_I matches 1000000..9999999 run function autoaim:classes/maps/map_atan_mid
execute if score Var AutoAim_I matches 1000000..9999999 run scoreboard players operation Var AutoAim_Omax = Var AutoAim_O
#calculate
execute if score Var AutoAim_I matches 1000000..9999999 run scoreboard players operation Var AutoAim_Omax -= Var AutoAim_Omin
execute if score Var AutoAim_I matches 1000000..9999999 run scoreboard players operation Var AutoAim_Omax *= Var AutoAim_Idec
execute if score Var AutoAim_I matches 1000000..9999999 run scoreboard players operation Var AutoAim_Omax /= Var AutoAim_C100000
execute if score Var AutoAim_I matches 1000000..9999999 run scoreboard players operation Var AutoAim_aTan = Var AutoAim_Omin
execute if score Var AutoAim_I matches 1000000..9999999 run scoreboard players operation Var AutoAim_aTan += Var AutoAim_Omax

###1000-30000:inc=100
execute if score Var AutoAim_I matches 10000000..299999999 run scoreboard players set Var AutoAim_C1000000 1000000
execute if score Var AutoAim_I matches 10000000..299999999 run scoreboard players operation Var AutoAim_Iint = Var AutoAim_I
execute if score Var AutoAim_I matches 10000000..299999999 run scoreboard players operation Var AutoAim_Idec = Var AutoAim_I
execute if score Var AutoAim_I matches 10000000..299999999 run scoreboard players operation Var AutoAim_Idec %= Var AutoAim_C1000000
execute if score Var AutoAim_I matches 10000000..299999999 run scoreboard players operation Var AutoAim_Iint -= Var AutoAim_Idec
#get min value, AutoAim_Iint to AutoAim_O
execute if score Var AutoAim_I matches 10000000..299999999 run function autoaim:classes/maps/map_atan_large
execute if score Var AutoAim_I matches 10000000..299999999 run scoreboard players operation Var AutoAim_Omin = Var AutoAim_O
execute if score Var AutoAim_I matches 10000000..299999999 run scoreboard players operation Var AutoAim_Iint += Var AutoAim_C1000000
#get max value
execute if score Var AutoAim_I matches 10000000..299999999 run function autoaim:classes/maps/map_atan_large
execute if score Var AutoAim_I matches 10000000..299999999 run scoreboard players operation Var AutoAim_Omax = Var AutoAim_O
#calculate
execute if score Var AutoAim_I matches 10000000..299999999 run scoreboard players operation Var AutoAim_Omax -= Var AutoAim_Omin
execute if score Var AutoAim_I matches 10000000..299999999 run scoreboard players operation Var AutoAim_Omax *= Var AutoAim_Idec
execute if score Var AutoAim_I matches 10000000..299999999 run scoreboard players operation Var AutoAim_Omax /= Var AutoAim_C1000000
execute if score Var AutoAim_I matches 10000000..299999999 run scoreboard players operation Var AutoAim_aTan = Var AutoAim_Omin
execute if score Var AutoAim_I matches 10000000..299999999 run scoreboard players operation Var AutoAim_aTan += Var AutoAim_Omax


###30000+: val =1.5708, 15708
execute if score Var AutoAim_I matches 300000000.. run scoreboard players set Var AutoAim_aTan 15708

#change to degrees
#tellraw @a [{"score":{"name":"Var","objective":"AutoAim_aTan"}}]
scoreboard players set Var AutoAim_C180 180
scoreboard players set Var AutoAim_C1000 1000
scoreboard players set Var AutoAim_Pi 31416
scoreboard players operation Var AutoAim_aTan *= Var AutoAim_C180
scoreboard players operation Var AutoAim_aTan *= Var AutoAim_C100
scoreboard players operation Var AutoAim_aTan /= Var AutoAim_Pi
scoreboard players operation Var AutoAim_aTan *= Var AutoAim_C100
#tellraw @a [{"score":{"name":"Var","objective":"AutoAim_aTan"}}]
scoreboard players set Var AutoAim_C1800000 1800000
scoreboard players set Var AutoAim_C3600000 3600000
scoreboard players set Var AutoAim_C-1 -1
execute if score Var AutoAim_Posx matches ..-1 run scoreboard players operation Var AutoAim_aTan *= Var AutoAim_C-1
execute if score Var AutoAim_aTan matches ..-1 run scoreboard players operation Var AutoAim_aTan += Var AutoAim_C3600000
execute if score Var AutoAim_Posz matches ..-1 run scoreboard players operation Var AutoAim_aTan -= Var AutoAim_C1800000
execute if score Var AutoAim_Posz matches ..-1 run scoreboard players operation Var AutoAim_aTan *= Var AutoAim_C-1
execute if score Var AutoAim_aTan matches ..-1 run scoreboard players operation Var AutoAim_aTan += Var AutoAim_C3600000