tellraw @s [{"text":""}]
tellraw @s [{"text":"You are given a carrot on a stick, current aim mode is set to 0. Use F to change the aim mode (Shift + F to scroll backward). The bow inherits most of data from the item you are currently holding"}]

scoreboard players set @s AutoAim_AimMode 0

summon minecraft:item ~ ~ ~ {Item:{id:carrot_on_a_stick,Count:1b}}

data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.Enchantments set from entity @s SelectedItem.tag.Enchantments
data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.display set from entity @s SelectedItem.tag.display
data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.AttributeModifiers set from entity @s SelectedItem.tag.AttributeModifiers
data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.Unbreakable set from entity @s SelectedItem.tag.Unbreakable
data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.HideFlags set from entity @s SelectedItem.tag.HideFlags
data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.CanDestroy set from entity @s SelectedItem.tag.CanDestroy

#data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.SkullOwner set from entity @s SelectedItem.tag.SkullOwner
#data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.PickupDelay set from entity @s SelectedItem.tag.PickupDelay
#data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.Age set from entity @s SelectedItem.tag.Age
#data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.generation set from entity @s SelectedItem.tag.generation


data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.aa set value 1b
data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.CustomModelData set value 99b
data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.display.Name set value "\"Player\""