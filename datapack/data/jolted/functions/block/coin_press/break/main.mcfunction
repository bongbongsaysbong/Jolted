data remove storage jolted:storage root.temp
scoreboard players reset #has_name jolted.dummy
execute if data entity @s item.tag.jolted.text run function jolted:block/coin_press/break/set_data

execute store success score #dropped_item jolted.dummy run kill @e[type=minecraft:item,tag=!smithed.entity,limit=1,distance=..3,nbt={Age:0s,Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.jolted.coin_press.name","font":"jolted:technical"}'}}}}]
execute if entity @s[tag=jolted.coin_press.has_nametag] positioned ~ ~1.5 ~ run kill @e[type=minecraft:text_display,tag=jolted.coin_press_text,distance=..0.05,limit=1,sort=nearest]
particle item dropper{CustomModelData:8362029} ~ ~0.4 ~ 0.4 0.4 0.4 0.07 70 normal

execute if score #dropped_item jolted.dummy matches 1 run loot spawn ~ ~ ~ loot jolted:technical/blocks/coin_press
kill @s
function nucleus:block/hopper_updating/undo
