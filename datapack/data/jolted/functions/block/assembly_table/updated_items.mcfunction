execute if predicate jolted:block/assembly_table_invalid_items run function jolted:block/assembly_table/manage_invalids/main

data remove storage jolted:storage root.temp
scoreboard players operation #old_select jolted.dummy = @s jolted.dummy
execute unless data block ~ ~ ~ Items[{Slot:0b}].tag.jolted{gui:"default"} run scoreboard players set @s jolted.dummy 0
execute unless data block ~ ~ ~ Items[{Slot:4b}].tag.jolted{gui:"cunife"} run scoreboard players set @s jolted.dummy 1
execute unless data block ~ ~ ~ Items[{Slot:5b}].tag.jolted{gui:"rose_gold"} run scoreboard players set @s jolted.dummy 2
execute unless data block ~ ~ ~ Items[{Slot:6b}].tag.jolted{gui:"electrum"} run scoreboard players set @s jolted.dummy 3
execute unless data block ~ ~ ~ Items[{Slot:7b}].tag.jolted{gui:"pigsteel"} run scoreboard players set @s jolted.dummy 4
execute unless data block ~ ~ ~ Items[{Slot:8b}].tag.jolted{gui:"rubrum"} run scoreboard players set @s jolted.dummy 5
execute if score #old_select jolted.dummy = @s jolted.dummy run function jolted:block/assembly_table/recipes/main

data remove block ~ ~ ~ Items
function jolted:block/assembly_table/reset_icons
execute if score @s jolted.dummy matches 0 run function jolted:block/assembly_table/page/default
execute if score @s jolted.dummy matches 1 run function jolted:block/assembly_table/page/cunife
execute if score @s jolted.dummy matches 2 run function jolted:block/assembly_table/page/rose_gold
execute if score @s jolted.dummy matches 3 run function jolted:block/assembly_table/page/electrum
execute if score @s jolted.dummy matches 4 run function jolted:block/assembly_table/page/pigsteel
execute if score @s jolted.dummy matches 5 run function jolted:block/assembly_table/page/rubrum
execute if data storage jolted:storage root.temp.item.slot run function jolted:block/assembly_table/recipes/determine_slot with storage jolted:storage root.temp.item

data modify entity @s item.tag.jolted.old_items set from block ~ ~ ~ Items
data modify entity @s item.tag.jolted.compared_items set from block ~ ~ ~ Items
execute if block ~ ~ ~ barrel[open=true] as @a[distance=..8] run function jolted:block/assembly_table/as_player
