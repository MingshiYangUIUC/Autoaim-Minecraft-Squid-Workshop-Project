#change the mode, given player is tagged by "aaslf".
#Modes:
#	0: Player
#	1: GroundEnemy
#	2: FlyingMob
#	3: GroundPassive
#	4: Transport
#	5: InvulProj
#	6: Projectile
#	7: Village
#	8: Misc


scoreboard players add @s[scores={AutoAim_Shift_=..0}] AutoAim_AimMode 1
scoreboard players remove @s[scores={AutoAim_Shift_=1..}] AutoAim_AimMode 1
scoreboard players set @s[scores={AutoAim_AimMode=9}] AutoAim_AimMode 0
scoreboard players set @s[scores={AutoAim_AimMode=-1}] AutoAim_AimMode 8

summon item ~ ~1 ~ {Item:{id:oak_button,Count:1b},PickupDelay:0}
data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:oak_button",Count:1b}}] Item set from entity @s Inventory[-1]
execute if score @s AutoAim_AimMode matches 0 run data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.display.Name set value "\"Player\""
execute if score @s AutoAim_AimMode matches 1 run data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.display.Name set value "\"GroundHostile\""
execute if score @s AutoAim_AimMode matches 2 run data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.display.Name set value "\"FlyingMob\""
execute if score @s AutoAim_AimMode matches 3 run data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.display.Name set value "\"GroundPassive\""
execute if score @s AutoAim_AimMode matches 4 run data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.display.Name set value "\"Transport\""
execute if score @s AutoAim_AimMode matches 5 run data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.display.Name set value "\"InvulProj\""
execute if score @s AutoAim_AimMode matches 6 run data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.display.Name set value "\"Projectile\""
execute if score @s AutoAim_AimMode matches 7 run data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.display.Name set value "\"Village\""
execute if score @s AutoAim_AimMode matches 8 run data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.display.Name set value "\"Misc\""
replaceitem entity @s weapon.offhand air

