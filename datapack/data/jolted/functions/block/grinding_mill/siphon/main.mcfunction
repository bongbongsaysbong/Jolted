data remove storage nucleus:storage root.temp
data modify storage nucleus:storage root.temp.item set from block ~ ~ ~ Items[0]
function jolted:block/grinding_mill/siphon/check_item
execute if score #valid jolted.dummy matches 1 run return run function jolted:block/grinding_mill/siphon/slot/0

data remove storage nucleus:storage root.temp
data modify storage nucleus:storage root.temp.item set from block ~ ~ ~ Items[1]
function jolted:block/grinding_mill/siphon/check_item
execute if score #valid jolted.dummy matches 1 run return run function jolted:block/grinding_mill/siphon/slot/1

data remove storage nucleus:storage root.temp
data modify storage nucleus:storage root.temp.item set from block ~ ~ ~ Items[2]
function jolted:block/grinding_mill/siphon/check_item
execute if score #valid jolted.dummy matches 1 run return run function jolted:block/grinding_mill/siphon/slot/2

data remove storage nucleus:storage root.temp
data modify storage nucleus:storage root.temp.item set from block ~ ~ ~ Items[3]
function jolted:block/grinding_mill/siphon/check_item
execute if score #valid jolted.dummy matches 1 run return run function jolted:block/grinding_mill/siphon/slot/3

data remove storage nucleus:storage root.temp
data modify storage nucleus:storage root.temp.item set from block ~ ~ ~ Items[4]
function jolted:block/grinding_mill/siphon/check_item
execute if score #valid jolted.dummy matches 1 run return run function jolted:block/grinding_mill/siphon/slot/4
