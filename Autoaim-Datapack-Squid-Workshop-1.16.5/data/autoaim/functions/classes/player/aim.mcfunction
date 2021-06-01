#If the executor of this function is tagged "aaslf", this function tries to aim at the nearest target with tag "aatgt". The tags should be defined elsewhere. (i.e. the target.mcfunction in this folder)
#	These tags should be applied in caution: keep in mind the limited range of bow and arrow.
#	Actual frequency is half of execution frequency due to caveats of minecraft Motion vector.

#Things it does when success:
#	Rotate the player to complete the aim.

#Things it does when failed:
#	Notify the respective player if they are tagged with "aadebug".

#Things it uses:
#	Other functions in /run.


#BEGIN


tag @s add aatgtlink

execute as @e[tag=aatgtcan] if score @s AutoAim_ID = @e[tag=aatgtlink,limit=1] AutoAim_ID run tag @s add aatgt

tag @s remove aatgtlink

function autoaim:classes/player/get_dpdt

scoreboard players operation Var AutoAim_Vx0 = @e[tag=aatgt,limit=1] AutoAim_Vx0
scoreboard players operation Var AutoAim_Vy0 = @e[tag=aatgt,limit=1] AutoAim_Vy0
scoreboard players operation Var AutoAim_Vz0 = @e[tag=aatgt,limit=1] AutoAim_Vz0

execute if score @s AutoAim_Phase matches 1..2 if entity @e[tag=aatgt] run function autoaim:classes/run/aim3d

#execute if entity @e[tag=aatgt] run function autoaim:classes/run/autoshoot_main
tag @e[tag=aatgt] remove aatgt

scoreboard players add @s AutoAim_Phase 1
execute if score @s AutoAim_Phase matches 3 run scoreboard players set @s AutoAim_Phase 1
#END