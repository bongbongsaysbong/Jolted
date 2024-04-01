data modify storage jolted:storage root.temp.item set from entity @s Inventory[{Slot:24b}]
function jolted:item/cunife_compass/set/change_data
loot replace entity @s container.24 loot jolted:technical/items/copy_nbt/compass
