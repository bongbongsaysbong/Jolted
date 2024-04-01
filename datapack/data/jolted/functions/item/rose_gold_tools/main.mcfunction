scoreboard players reset @s jolted.golden_sword
scoreboard players reset @s jolted.golden_pickaxe
scoreboard players reset @s jolted.golden_axe
scoreboard players reset @s jolted.golden_shovel
scoreboard players reset @s jolted.golden_hoe

data remove storage jolted:storage root.temp.item
execute if predicate jolted:item/rose_gold_tools/gold_mainhand run data modify storage jolted:storage root.temp.item set from entity @s SelectedItem
execute if predicate jolted:item/rose_gold_tools/gold_offhand run data modify storage jolted:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
execute unless entity @s[gamemode=creative] if data storage jolted:storage root.temp.item.tag.jolted{tool:"rose_gold"} run function jolted:item/rose_gold_tools/reduce_durability
