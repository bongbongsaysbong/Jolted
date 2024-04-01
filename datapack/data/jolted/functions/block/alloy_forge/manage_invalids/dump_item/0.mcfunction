data modify storage jolted:storage root.temp.removed_item set from block ~ ~ ~ Items[{Slot:0b}]
data remove block ~ ~ ~ Items[{Slot:0b}]

summon item ~ ~1 ~ {Tags:["jolted.removed_alloy_forge_item"],Item:{id:"minecraft:dirt",Count:1b}}
execute positioned ~ ~1 ~ as @e[type=minecraft:item,tag=jolted.removed_alloy_forge_item,dy=0,sort=nearest,limit=1] run function jolted:block/alloy_forge/manage_invalids/as_item
