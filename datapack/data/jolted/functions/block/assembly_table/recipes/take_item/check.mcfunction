execute if entity @s[gamemode=creative] run return run function jolted:block/assembly_table/recipes/take_item/give_item with storage jolted:storage root.temp.recipe_output[0].output

scoreboard players reset #invalid_count jolted.dummy
function jolted:block/assembly_table/recipes/take_item/get_count/main
execute if score #invalid_count jolted.dummy matches 1 run return run tellraw @s {"translate":"ui.jolted.not_enough_items","color":"red"}

function jolted:block/assembly_table/recipes/take_item/reduce_count/main
function jolted:block/assembly_table/recipes/take_item/give_item with storage jolted:storage root.temp.recipe_output[0].output
