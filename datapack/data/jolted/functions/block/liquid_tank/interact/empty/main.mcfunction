scoreboard players operation #liquid_type jolted.dummy = @s jolted.dummy

scoreboard players remove @s jolted.dummy2 1
execute if score @s jolted.dummy matches 1 if data storage jolted:storage root.temp.item{id:"minecraft:bucket"} run scoreboard players remove @s jolted.dummy2 2

data modify storage jolted:storage root.temp.result set value "empty"
function jolted:block/liquid_tank/set_liquid/main
