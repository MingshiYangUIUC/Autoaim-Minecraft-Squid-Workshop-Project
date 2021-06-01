#replace with bow, set target, and aim timer
summon item ~ ~1 ~ {Item:{id:bow,Count:1b},PickupDelay:0}

data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:bow",Count:1b}}] Item.tag set from entity @s SelectedItem.tag

replaceitem entity @s weapon.mainhand air
scoreboard players reset @s AutoAim_draw

#set target
function autoaim:classes/player/target

#set timer
scoreboard players set @s AutoAim_T 60