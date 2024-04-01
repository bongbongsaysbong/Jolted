playsound jolted:block.grinding_mill.eject block @a[distance=..16]
particle minecraft:poof ~ ~0.5 ~ 0.2 0.2 0.2 0.05 4 force

data modify storage jolted:storage root.temp.old_data set from entity @s item
data remove storage jolted:storage root.temp.extra_output
data remove entity @s item

$loot replace entity @s container.0 loot $(loot_table)
data modify storage jolted:storage root.temp.extra_output.item set from entity @s item
execute unless data storage jolted:storage root.temp.extra_output.item{id:"minecraft:air"} run function nucleus:commands/macros/spawn_item with storage jolted:storage root.temp.extra_output

function jolted:block/grinding_mill/output/end
