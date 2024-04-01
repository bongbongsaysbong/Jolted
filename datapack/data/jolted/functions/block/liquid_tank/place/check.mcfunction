data remove storage jolted:storage root.temp
data modify storage jolted:storage root.temp.liquid_tank set from block ~ ~ ~ Items[0].tag.nucleus.block.jolted.liquid_tank
setblock ~ ~ ~ air

execute if predicate jolted:block/liquid_tank/place run function jolted:block/liquid_tank/place/place
execute unless entity @s[tag=jolted.placed_block] positioned ~ ~-1 ~ if predicate jolted:block/liquid_tank/place run function jolted:block/liquid_tank/place/place

execute unless entity @s[tag=jolted.placed_block] run loot spawn ~ ~ ~ loot jolted:technical/blocks/liquid_tank
tag @s remove jolted.placed_block
