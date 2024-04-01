execute if score #liquid_type jolted.dummy matches 1 if data storage jolted:storage root.temp.item{id:"minecraft:bucket"} run tag @s add jolted.water_bucket
function nucleus:commands/macros/take_item {loot_table:"jolted:technical/items/liquid_tank_fluid"}

tag @s remove jolted.water_bucket
