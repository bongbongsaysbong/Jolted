scoreboard players reset #recipe jolted.dummy

execute if score #iron_ingot jolted.dummy matches 1.. if score #gold_ingot jolted.dummy matches 1.. if predicate jolted:block/alloy_forge/recipes/electrum run scoreboard players set #recipe jolted.dummy 1
execute if score #iron_ingot jolted.dummy matches 1.. if score #copper_ingot jolted.dummy matches 1.. if predicate jolted:block/alloy_forge/recipes/cunife run scoreboard players set #recipe jolted.dummy 2
execute if score #iron_ingot jolted.dummy matches 1.. if score #netherite_scrap jolted.dummy matches 1.. if predicate jolted:block/alloy_forge/recipes/pigsteel run scoreboard players set #recipe jolted.dummy 3
execute if score #gold_ingot jolted.dummy matches 1.. if score #copper_ingot jolted.dummy matches 1.. if predicate jolted:block/alloy_forge/recipes/rose_gold run scoreboard players set #recipe jolted.dummy 4
execute if score #gold_ingot jolted.dummy matches 4.. if score #netherite_scrap jolted.dummy matches 4.. if predicate jolted:block/alloy_forge/recipes/netherite run scoreboard players set #recipe jolted.dummy 5
execute if score #copper_ingot jolted.dummy matches 1.. if score #netherite_scrap jolted.dummy matches 1.. if predicate jolted:block/alloy_forge/recipes/rubrum run scoreboard players set #recipe jolted.dummy 6
