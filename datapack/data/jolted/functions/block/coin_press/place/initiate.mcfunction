data modify storage jolted:storage root.temp.item.tag.display.Name set from storage jolted:storage root.temp.block_data.CustomName
execute positioned ~ ~0.5 ~ summon text_display run function jolted:block/coin_press/place/text
data modify entity @s item.tag.jolted.text set from storage jolted:storage root.temp.item.tag.display.Name
tag @s add jolted.coin_press.has_nametag
