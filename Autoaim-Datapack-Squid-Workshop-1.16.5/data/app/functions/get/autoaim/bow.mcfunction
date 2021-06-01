tellraw @s [{"text":""}]
tellraw @s [{"text":"You are given a carrot on a stick, current aim mode is set to 0. Use F to change the aim mode (Shift + F to scroll backward). The bow inherits most of data from the item you are currently holding"}]

scoreboard players set @s AutoAim_AimMode 0

summon minecraft:item ~ ~ ~ {Item:{id:carrot_on_a_stick,Count:1b}}
data modify entity @e[type=item,limit=1,sort=nearest] Item.tag set from entity @s SelectedItem.tag
data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.aa set value 1b
data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.CustomModelData set value 99b
data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.display.Name set value "\"Player\""