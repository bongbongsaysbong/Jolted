data modify storage jolted:storage root.temp.result set value "fill"

execute if data storage jolted:storage root.temp.item{id:"minecraft:water_bucket"} run scoreboard players add @s jolted.dummy2 3
execute unless data storage jolted:storage root.temp.item{id:"minecraft:water_bucket"} run scoreboard players add @s jolted.dummy2 1
execute if score @s jolted.dummy2 matches 129.. run scoreboard players set @s jolted.dummy2 128

execute if data storage jolted:storage root.temp.item{id:"minecraft:water_bucket"} run scoreboard players set @s jolted.dummy 1
execute if data storage jolted:storage root.temp.item{id:"minecraft:potion",tag:{Potion:"minecraft:water"}} run scoreboard players set @s jolted.dummy 1
execute if data storage jolted:storage root.temp.item{id:"minecraft:lava_bucket"} run scoreboard players set @s jolted.dummy 2
execute if data storage jolted:storage root.temp.item{id:"minecraft:milk_bucket"} run scoreboard players set @s jolted.dummy 3
execute if data storage jolted:storage root.temp.item{id:"minecraft:honey_bottle"} run scoreboard players set @s jolted.dummy 4
execute if data storage jolted:storage root.temp.item{id:"minecraft:structure_block",tag:{manic:{id:"corpse_sap_bottle"}}} run scoreboard players set @s jolted.dummy 5
execute if data storage jolted:storage root.temp.item{id:"minecraft:structure_block",tag:{sanguine:{id:"blood_bottle"}}} run scoreboard players set @s jolted.dummy 6
function jolted:block/liquid_tank/set_liquid/main
