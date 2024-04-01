function jolted:block/assembly_table/reset_icons
scoreboard players set @s jolted.dummy 0
function jolted:block/assembly_table/updated_items
data modify entity @s item.tag.jolted.compared_items set from block ~ ~ ~ Items
