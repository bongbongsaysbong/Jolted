particle minecraft:poof ~ ~0.5 ~ 0.2 0.2 0.2 0.05 4 force
playsound jolted:block.grinding_mill.eject block @a[distance=..16]

data remove storage jolted:storage root.temp.extra_output

data modify storage jolted:storage root.temp.item set from block ~ ~ ~ Items[0]
execute unless data storage jolted:storage root.temp.extra_output.item{id:"minecraft:air"} run data modify storage jolted:storage root.temp.item.Count set value 1b
execute unless data storage jolted:storage root.temp.extra_output.item{id:"minecraft:air"} positioned ~ ~1 ~ run function nucleus:commands/macros/spawn_item with storage jolted:storage root.temp

function jolted:block/grinding_mill/output/blocked/reduce_count
