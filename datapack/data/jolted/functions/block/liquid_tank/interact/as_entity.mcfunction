scoreboard players reset #success jolted.dummy
data modify storage jolted:storage root.temp.result set value "check"

execute unless score @s jolted.dummy matches 1.. run function jolted:block/liquid_tank/interact/validate
execute if score @s jolted.dummy matches 1 if data storage jolted:storage root.temp.item{id:"minecraft:water_bucket"} run scoreboard players set #success jolted.dummy 1
execute if score @s jolted.dummy matches 1 if data storage jolted:storage root.temp.item{id:"minecraft:potion",tag:{Potion:"minecraft:water"}} run scoreboard players set #success jolted.dummy 1
execute if score @s jolted.dummy matches 2 if data storage jolted:storage root.temp.item{id:"minecraft:lava_bucket"} run scoreboard players set #success jolted.dummy 1
execute if score @s jolted.dummy matches 3 if data storage jolted:storage root.temp.item{id:"minecraft:milk_bucket"} run scoreboard players set #success jolted.dummy 1
execute if score @s jolted.dummy matches 4 if data storage jolted:storage root.temp.item{id:"minecraft:honey_bottle"} run scoreboard players set #success jolted.dummy 1
execute if score @s jolted.dummy matches 5 if data storage jolted:storage root.temp.item{id:"minecraft:structure_block",tag:{manic:{id:"corpse_sap_bottle"}}} run scoreboard players set #success jolted.dummy 1
execute if score @s jolted.dummy matches 6 if data storage jolted:storage root.temp.item{id:"minecraft:structure_block",tag:{sanguine:{id:"blood_bottle"}}} run scoreboard players set #success jolted.dummy 1

execute if score #success jolted.dummy matches 1 if score @s jolted.dummy2 matches 128.. run scoreboard players reset #success jolted.dummy
execute if score #success jolted.dummy matches 1 run function jolted:block/liquid_tank/interact/fill/main

execute if data storage jolted:storage root.temp.item{id:"minecraft:glass_bottle"} if score @s jolted.dummy2 matches 1.. unless score @s jolted.dummy matches 2..3 run function jolted:block/liquid_tank/interact/empty/main
execute if data storage jolted:storage root.temp.item{id:"minecraft:bucket"} if score @s jolted.dummy2 matches 1.. unless score @s jolted.dummy matches 1 unless score @s jolted.dummy matches 4..6 run function jolted:block/liquid_tank/interact/empty/main
execute if data storage jolted:storage root.temp.item{id:"minecraft:bucket"} if score @s jolted.dummy2 matches 3.. if score @s jolted.dummy matches 1 run function jolted:block/liquid_tank/interact/empty/main

scoreboard players operation #liquid_amount jolted.dummy = @s jolted.dummy2
scoreboard players operation #liquid_variant jolted.dummy = @s jolted.dummy
