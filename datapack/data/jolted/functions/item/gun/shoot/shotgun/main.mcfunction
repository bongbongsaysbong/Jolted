execute anchored eyes run particle minecraft:campfire_cosy_smoke ^ ^ ^0.5 0.5 0.5 0.5 0.05 6 normal
execute anchored eyes run particle minecraft:lava ^ ^ ^0.5 0.5 0.5 0.5 0.05 3 normal

scoreboard players set #shotgun_loop jolted.dummy 5
execute if data storage jolted:storage root.temp.item.tag.Enchantments[{id:"minecraft:multishot"}] run scoreboard players set #shotgun_loop jolted.dummy 15
function jolted:item/gun/shoot/shotgun/loop
