scoreboard players reset #valid jolted.dummy
execute store result score #valid jolted.dummy run function jolted:block/grinding_mill/valid_items
execute if score #valid jolted.dummy matches 1 run function jolted:block/grinding_mill/interact/add_item
execute unless score #valid jolted.dummy matches 1 run data remove storage jolted:storage root.temp.result
