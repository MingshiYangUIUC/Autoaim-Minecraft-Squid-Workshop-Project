summon item ~ ~1 ~ {Item:{id:carrot_on_a_stick,Count:1b},PickupDelay:0}

data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}] Item.tag set from entity @s SelectedItem.tag

replaceitem entity @s weapon.mainhand air
scoreboard players reset @s AutoAim_shoot
scoreboard players set @s AutoAim_T 0