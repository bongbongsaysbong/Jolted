# Setup
tag @s remove jolted.grinding
scoreboard players reset @s jolted.dummy

# Determine output
data remove storage jolted:storage root.temp
data modify storage jolted:storage root.temp.item set from entity @s item.tag.jolted.items[0]
function jolted:block/grinding_mill/grinding/get_items

# Output item
execute positioned ~ ~-1 ~ if block ~ ~ ~ hopper unless entity @e[type=minecraft:item_display,tag=smithed.block,distance=..0.5] run return run function jolted:block/grinding_mill/output/inventory with storage jolted:storage root.temp.output
execute if block ~ ~-1 ~ #nucleus:passthrough positioned ~ ~-1 ~ run return run function jolted:block/grinding_mill/output/bottom with storage jolted:storage root.temp.output
execute if block ~ ~1 ~ #nucleus:passthrough positioned ~ ~1 ~ run return run function jolted:block/grinding_mill/output/top with storage jolted:storage root.temp.output
function jolted:block/grinding_mill/output/inventory with storage jolted:storage root.temp.output
