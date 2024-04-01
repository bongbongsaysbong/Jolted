data modify storage jolted:storage root.temp.result set value "reduce_count"
playsound minecraft:item.dye.use block @a[distance=..16]

execute positioned ~ ~1 ~ run data modify entity @e[type=minecraft:text_display,tag=jolted.speaker_text,distance=..0.05,limit=1,sort=nearest] text set from entity @s item.tag.display.Name
