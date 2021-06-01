#use AutoAim_Ang AutoAim_Angle and AutoAim_Phi AutoAim_Angle, tp to the specific facing


#summon area_effect_cloud ~ ~ ~ {Tags:["aarot"]}

tag @e[tag=aahelp] add aarot
tp @e[tag=aahelp] ~ ~ ~

execute store result entity @e[type=area_effect_cloud,tag=aarot,limit=1] Rotation[1] float -0.0001 run scoreboard players get Var AutoAim_Ang
tellraw @a[tag=aadebug3] [{"text":"AutoAim_Ang: "},{"score":{"name":"Var","objective":"AutoAim_Ang"}}]
execute store result entity @e[type=area_effect_cloud,tag=aarot,limit=1] Rotation[0] float -0.0001 run scoreboard players get Var AutoAim_Phi

execute as @e[type=area_effect_cloud,tag=aarot,limit=1] at @s run tp @e[tag=aaslf,distance=..0.1] ~ ~ ~ ~ ~

#kill @e[type=area_effect_cloud,tag=aarot,limit=1]

tag @e[tag=aahelp] remove aarot