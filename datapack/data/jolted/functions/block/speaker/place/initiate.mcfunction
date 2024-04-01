data modify storage jolted:storage root.temp.item.tag.display.Name set from storage jolted:storage root.temp.block_data.CustomName
execute summon text_display run function jolted:block/speaker/place/text
data modify entity @s item.tag.jolted.text set from storage jolted:storage root.temp.item.tag.display.Name
data modify entity @s item.tag.display.Name set from storage jolted:storage root.temp.item.tag.display.Name
tag @s add jolted.speaker.has_nametag
