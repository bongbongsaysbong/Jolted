data remove storage jolted:storage root.temp.item
execute if predicate jolted:item/gun/mainhand run data modify storage jolted:storage root.temp.item set from entity @s SelectedItem
execute if predicate jolted:item/gun/offhand run data modify storage jolted:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
execute unless data storage jolted:storage root.temp.item.tag.jolted.gun{is_gun:1b} run data remove storage jolted:storage root.temp.item
execute if data storage jolted:storage root.temp.item.tag.jolted.gun{is_gun:1b} run function jolted:item/gun/set_data/set_scores
