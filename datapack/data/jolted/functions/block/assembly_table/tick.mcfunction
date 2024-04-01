execute unless block ~ ~ ~ barrel run function jolted:block/assembly_table/break/main
execute if block ~ ~ ~ barrel[open=false] unless score @s jolted.dummy matches 0 run function jolted:block/assembly_table/place/initiate

execute store success score #updated jolted.dummy run data modify entity @s item.tag.jolted.old_items set from block ~ ~ ~ Items
execute if score #updated jolted.dummy matches 1 run function jolted:block/assembly_table/updated_items
