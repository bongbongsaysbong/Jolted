execute if data storage jolted:storage root.temp.old_data run data modify entity @s item set from storage jolted:storage root.temp.old_data

data modify entity @s item.tag.CustomModelData set value 8362000
data remove entity @s item.tag.jolted.items[0]
execute if data entity @s item.tag.jolted.items[0] run function jolted:block/grinding_mill/grinding/start
