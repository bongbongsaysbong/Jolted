function nucleus:item/check_vanilla_item
scoreboard players reset #valid jolted.dummy
execute if data storage nucleus:storage root.temp.item store result score #valid jolted.dummy run function jolted:block/grinding_mill/valid_items
