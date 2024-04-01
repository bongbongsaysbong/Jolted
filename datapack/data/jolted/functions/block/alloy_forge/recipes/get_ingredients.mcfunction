scoreboard players set #recipe jolted.dummy 0
data remove storage jolted:storage root.temp

data modify storage jolted:storage root.temp.alloy_forge.input set value [{},{}]
data modify storage jolted:storage root.temp.alloy_forge.input[0] set from block ~ ~ ~ Items[{Slot:0b}]
data modify storage jolted:storage root.temp.alloy_forge.input[1] set from block ~ ~ ~ Items[{Slot:3b}]

execute store result score #gold_ingot jolted.dummy run data get storage jolted:storage root.temp.alloy_forge.input[{id:"minecraft:gold_ingot"}].Count
execute store result score #iron_ingot jolted.dummy run data get storage jolted:storage root.temp.alloy_forge.input[{id:"minecraft:iron_ingot"}].Count
execute store result score #copper_ingot jolted.dummy run data get storage jolted:storage root.temp.alloy_forge.input[{id:"minecraft:copper_ingot"}].Count
execute store result score #netherite_scrap jolted.dummy run data get storage jolted:storage root.temp.alloy_forge.input[{id:"minecraft:netherite_scrap"}].Count
