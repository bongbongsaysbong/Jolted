execute store result score #temp_slot jolted.dummy run data get entity @s SelectedItemSlot
execute if score @s jolted.gun_charge matches 1.. unless score #temp_slot jolted.dummy = @s jolted.gun_slot run function jolted:item/gun/charge/reset_speed
scoreboard players operation @s jolted.gun_slot = #temp_slot jolted.dummy

function jolted:item/gun/set_data/main
execute store success score #ammo jolted.dummy if data entity @s Inventory[{id:"minecraft:structure_block",tag:{jolted:{gun_ammo:1b}}}]
execute if entity @s[gamemode=creative] run scoreboard players set #ammo jolted.dummy 1
execute if data storage jolted:storage root.temp.item.tag.jolted.gun{is_gun:1b} unless score #bullets jolted.dummy = #maximum_bullets jolted.dummy if score #ammo jolted.dummy matches 1.. run function jolted:item/gun/charge/main
