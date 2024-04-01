scoreboard players reset #coin_type jolted.dummy
scoreboard players reset #coin_has_name jolted.dummy
execute if data storage jolted:storage root.temp.item{id:"minecraft:copper_ingot"} run scoreboard players set #coin_type jolted.dummy 1
execute if data storage jolted:storage root.temp.item{id:"minecraft:iron_ingot"} run scoreboard players set #coin_type jolted.dummy 2
execute if data storage jolted:storage root.temp.item{id:"minecraft:gold_ingot"} run scoreboard players set #coin_type jolted.dummy 3
execute if data storage jolted:storage root.temp.item{id:"minecraft:netherite_scrap"} run scoreboard players set #coin_type jolted.dummy 4

execute if data storage jolted:storage root.temp.item{id:"minecraft:netherite_ingot"} run scoreboard players set #coin_type jolted.dummy 5
execute if data storage jolted:storage root.temp.item{id:"minecraft:structure_block",tag:{jolted:{id:"cunife_ingot"}}} run scoreboard players set #coin_type jolted.dummy 6
execute if data storage jolted:storage root.temp.item{id:"minecraft:structure_block",tag:{jolted:{id:"electrum_ingot"}}} run scoreboard players set #coin_type jolted.dummy 7
execute if data storage jolted:storage root.temp.item{id:"minecraft:structure_block",tag:{jolted:{id:"rose_gold_ingot"}}} run scoreboard players set #coin_type jolted.dummy 8
execute if data storage jolted:storage root.temp.item{id:"minecraft:structure_block",tag:{jolted:{id:"pigsteel_ingot"}}} run scoreboard players set #coin_type jolted.dummy 9
execute if data storage jolted:storage root.temp.item{id:"minecraft:structure_block",tag:{jolted:{id:"rubrum_ingot"}}} run scoreboard players set #coin_type jolted.dummy 10
execute if data storage jolted:storage root.temp.item{id:"minecraft:structure_block",tag:{manic:{id:"anirrum_ingot"}}} run scoreboard players set #coin_type jolted.dummy 11
execute if data storage jolted:storage root.temp.item{id:"minecraft:structure_block",tag:{manic:{id:"charonite_ingot"}}} run scoreboard players set #coin_type jolted.dummy 12
execute if data storage jolted:storage root.temp.item{id:"minecraft:structure_block",tag:{manic:{id:"elderskin_inlay"}}} run scoreboard players set #coin_type jolted.dummy 13
execute if data storage jolted:storage root.temp.item{id:"endlessencore:teeyel_ingot"} run scoreboard players set #coin_type jolted.dummy 14

execute if data entity @s item.tag.jolted.text run function jolted:block/coin_press/interact/coin/set_name
execute if score #coin_type jolted.dummy matches 1.. run function jolted:block/coin_press/interact/coin/create_coin
