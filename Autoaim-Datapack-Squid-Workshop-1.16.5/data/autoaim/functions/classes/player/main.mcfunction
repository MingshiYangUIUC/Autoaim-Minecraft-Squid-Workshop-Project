#executed as player at player, assumed player has tag "aaslf"
#target and set criteria for aim (set timer) when AutoAim_draw...

tag @s add aaslf

execute if score @s AutoAim_draw matches 1.. run function autoaim:classes/player/draw
execute if score @s AutoAim_shoot matches 1.. run function autoaim:classes/player/release
execute if score @s AutoAim_T matches 1.. run function autoaim:classes/player/aim
execute if score @s AutoAim_T matches 0 run function autoaim:classes/player/untarget
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{aa:1b}}]}] run function autoaim:classes/player/switch_run

scoreboard players remove @s[scores={AutoAim_T=0..}] AutoAim_T 1
scoreboard players set @s[scores={AutoAim_Shift_=1..}] AutoAim_Shift_ 0

tag @s remove aaslf