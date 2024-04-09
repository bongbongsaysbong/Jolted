execute if entity @s[tag=jolted.wrecker] positioned ~ ~-1 ~ run function jolted:block/wrecker/tick
execute if entity @s[tag=jolted.alloy_forge] positioned ~ ~-1 ~ run function jolted:block/alloy_forge/tick
execute if entity @s[tag=jolted.liquid_tank] positioned ~ ~-2 ~ if predicate jolted:block/liquid_tank/break run function jolted:block/liquid_tank/break
execute if entity @s[tag=jolted.coin_press] positioned ~ ~-1 ~ run function jolted:block/coin_press/tick
execute if entity @s[tag=jolted.grinding_mill] run function jolted:block/grinding_mill/tick
execute if entity @s[tag=jolted.speaker] positioned ~ ~-1 ~ run function jolted:block/speaker/tick
execute if entity @s[tag=jolted.assembly_table] positioned ~ ~-1 ~ run function jolted:block/assembly_table/tick
