data remove storage jolted:storage root.temp
scoreboard players reset #has_name jolted.dummy
execute if data entity @s item.tag.jolted.text run function jolted:block/speaker/break/set_data

execute store success score #dropped_item jolted.dummy run kill @e[type=minecraft:item,tag=!smithed.entity,limit=1,distance=..3,nbt={Age:0s,Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.jolted.speaker.name","font":"jolted:technical"}'}}}}]
execute if entity @s[tag=jolted.speaker.has_nametag] positioned ~ ~1 ~ run kill @e[type=minecraft:text_display,tag=jolted.speaker_text,distance=..0.05,limit=1,sort=nearest]
particle item dropper{CustomModelData:8362034} ~ ~0.4 ~ 0.4 0.4 0.4 0.07 70 normal

execute if score #dropped_item jolted.dummy matches 1 run loot spawn ~ ~ ~ loot jolted:technical/blocks/speaker
kill @s
function nucleus:block/hopper_updating/undo
