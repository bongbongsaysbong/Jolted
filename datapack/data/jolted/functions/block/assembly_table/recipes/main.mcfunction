execute unless data block ~ ~ ~ Items[{Slot:0b}] run return 0
execute unless data block ~ ~ ~ Items[{Slot:4b}] run return 0
execute unless data block ~ ~ ~ Items[{Slot:5b}] run return 0
execute unless data block ~ ~ ~ Items[{Slot:6b}] run return 0
execute unless data block ~ ~ ~ Items[{Slot:7b}] run return 0
execute unless data block ~ ~ ~ Items[{Slot:8b}] run return 0

data modify storage jolted:storage root.temp.recipes set from entity @s item.tag.jolted.compared_items
data remove storage jolted:storage root.temp.recipes[0]
data remove storage jolted:storage root.temp.recipes[0]
data remove storage jolted:storage root.temp.recipes[0]
data remove storage jolted:storage root.temp.recipes[0]
data remove storage jolted:storage root.temp.recipes[0]
data remove storage jolted:storage root.temp.recipes[0]

execute store result score #total jolted.dummy run data get storage jolted:storage root.temp.recipes
scoreboard players add #total jolted.dummy 9
scoreboard players set #iterate jolted.dummy 9
function jolted:block/assembly_table/recipes/loop
