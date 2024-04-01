playsound jolted:block.assembly_table.click block @s ~ ~ ~ 0.25 1

execute if data storage jolted:storage root.temp.recipe_output{cannot_craft:1b} run tellraw @s {"translate":"ui.jolted.cannot_craft","color":"red"}
execute if data storage jolted:storage root.temp.recipe_output unless data storage jolted:storage root.temp.recipe_output{cannot_craft:1b} run function jolted:block/assembly_table/recipes/take_item/check
