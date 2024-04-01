tag @s add jolted.speaker_text

data merge entity @s {billboard:"center",view_range:0.1}
data modify entity @s text set from storage jolted:storage root.temp.item.tag.display.Name
