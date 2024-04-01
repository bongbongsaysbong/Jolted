execute unless block ~ ~ ~ dropper run function jolted:block/alloy_forge/break/main
execute if predicate jolted:block/alloy_forge/invalid_items run function jolted:block/alloy_forge/manage_invalids/main

execute store success score #updated jolted.dummy run data modify entity @s item.tag.jolted.old_items set from block ~ ~ ~ Items
data remove entity @s item.tag.jolted.old_items[{Slot:4b}]
execute if score #updated jolted.dummy matches 1 run function jolted:block/alloy_forge/updated_items

execute if score @s jolted.dummy2 matches 1.. run function jolted:block/alloy_forge/smelting/tick
execute if score @s jolted.dummy2 matches 0 run function jolted:block/alloy_forge/smelting/recipes
