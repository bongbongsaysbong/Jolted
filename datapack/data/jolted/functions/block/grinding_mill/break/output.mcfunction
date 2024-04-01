data modify storage jolted:storage root.temp.item set from entity @s item.tag.jolted.items[0]
data remove entity @s item.tag.jolted.items[0]
function nucleus:commands/macros/spawn_item with storage jolted:storage root.temp
execute if data entity @s item.tag.jolted.items[0] run function jolted:block/grinding_mill/break/output
