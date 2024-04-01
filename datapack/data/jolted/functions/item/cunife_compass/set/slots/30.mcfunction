data modify storage jolted:storage root.temp.item set from entity @s Inventory[{Slot:30b}]
function jolted:item/cunife_compass/set/change_data
loot replace entity @s container.30 loot jolted:technical/items/copy_nbt/compass
