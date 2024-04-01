data modify storage jolted:storage root.temp.item set from entity @s Inventory[{Slot:27b}]
function jolted:item/cunife_compass/set/change_data
loot replace entity @s container.27 loot jolted:technical/items/copy_nbt/compass
