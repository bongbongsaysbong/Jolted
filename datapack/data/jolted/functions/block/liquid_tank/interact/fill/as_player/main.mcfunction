execute if data storage jolted:storage root.temp.item{id:"minecraft:potion"} run function nucleus:commands/macros/take_item {loot_table:"jolted:technical/items/bottle"}
execute if data storage jolted:storage root.temp.item{id:"minecraft:honey_bottle"} run function nucleus:commands/macros/take_item {loot_table:"jolted:technical/items/bottle"}
execute if data storage jolted:storage root.temp.item{id:"minecraft:water_bucket"} run function nucleus:commands/macros/take_item {loot_table:"jolted:technical/items/bucket"}
execute if data storage jolted:storage root.temp.item{id:"minecraft:lava_bucket"} run function nucleus:commands/macros/take_item {loot_table:"jolted:technical/items/bucket"}
execute if data storage jolted:storage root.temp.item{id:"minecraft:milk_bucket"} run function nucleus:commands/macros/take_item {loot_table:"jolted:technical/items/bucket"}

execute if data storage jolted:storage root.temp.item{id:"minecraft:structure_block",tag:{sanguine:{id:"blood_bottle"}}} run function nucleus:commands/macros/take_item {loot_table:"jolted:technical/items/bottle"}
execute if data storage jolted:storage root.temp.item{id:"minecraft:structure_block",tag:{manic:{id:"corpse_sap_bottle"}}} run function nucleus:commands/macros/take_item {loot_table:"jolted:technical/items/bottle"}
