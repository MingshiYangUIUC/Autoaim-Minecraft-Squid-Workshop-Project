#Target tag: aatgt
#self tag: aaslf, selector: @s

execute store result score Slf AutoAim_Posx run data get entity @s[tag=aaslf] Pos[0] 10000
execute store result score Slf AutoAim_Posy run data get entity @s[tag=aaslf] Pos[1] 10000
execute store result score Slf AutoAim_Posz run data get entity @s[tag=aaslf] Pos[2] 10000

execute as @e[tag=aatgt] at @s anchored eyes run tp @e[tag=aahelp,limit=1] ^ ^ ^

execute store result score Var AutoAim_Posx run data get entity @e[tag=aatgt,limit=1] Pos[0] 10000
execute store result score Var AutoAim_Posy run data get entity @e[tag=aahelp,limit=1] Pos[1] 10000
execute store result score Var AutoAim_Posz run data get entity @e[tag=aatgt,limit=1] Pos[2] 10000


scoreboard players operation Var AutoAim_Posx -= Slf AutoAim_Posx
scoreboard players operation Var AutoAim_Posy -= Slf AutoAim_Posy
scoreboard players operation Var AutoAim_Posz -= Slf AutoAim_Posz

#modify AutoAim_y value due to arrow spawn height
scoreboard players remove Var AutoAim_Posy 15200

#hitbox correction
#scoreboard players add Var AutoAim_Posy 1500

#save a Pos0 as constant

scoreboard players set Var AutoAim_Posx0 0
scoreboard players set Var AutoAim_Posy0 0
scoreboard players set Var AutoAim_Posz0 0

execute if entity @e[tag=aatgt] run scoreboard players operation Var AutoAim_Posx0 = Var AutoAim_Posx
execute if entity @e[tag=aatgt] run scoreboard players operation Var AutoAim_Posy0 = Var AutoAim_Posy
execute if entity @e[tag=aatgt] run scoreboard players operation Var AutoAim_Posz0 = Var AutoAim_Posz