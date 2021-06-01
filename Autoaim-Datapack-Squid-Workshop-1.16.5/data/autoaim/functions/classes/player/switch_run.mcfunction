#change the mode, given player is tagged by "aaslf".
#Modes:
#	0: Player
#	1: Mobs
#	2: Dead Objects


scoreboard players add @s[scores={AutoAim_Shift_=..0}] AutoAim_AimMode 1
scoreboard players remove @s[scores={AutoAim_Shift_=1..}] AutoAim_AimMode 1
scoreboard players set @s[scores={AutoAim_AimMode=3}] AutoAim_AimMode 0
scoreboard players set @s[scores={AutoAim_AimMode=-1}] AutoAim_AimMode 2

summon item ~ ~ ~ {Item:{id:oak_button,Count:1b},PickupDelay:0}

data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:oak_button",Count:1b}}] Item set from entity @s Inventory[-1]
data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.CustomModelData set value 99b
execute if score @s AutoAim_AimMode matches 0 run data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.display.Name set value "\"Player\""
execute if score @s AutoAim_AimMode matches 1 run data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.display.Name set value "\"Mobs\""
execute if score @s AutoAim_AimMode matches 2 run data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.display.Name set value "\"Objects\""

replaceitem entity @s weapon.offhand air

