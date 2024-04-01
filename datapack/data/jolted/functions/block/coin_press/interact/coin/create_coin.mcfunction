playsound jolted:block.coin_press.activate block @a[distance=..16]
loot spawn ^ ^ ^0.75 loot jolted:technical/items/coin

data modify storage jolted:storage root.temp.result set value "reduce_count"
function jolted:block/coin_press/animate/begin
