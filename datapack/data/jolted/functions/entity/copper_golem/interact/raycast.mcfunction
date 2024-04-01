execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,type=minecraft:wandering_trader,tag=jolted.copper_golem] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] at @s run function jolted:entity/copper_golem/interact/as_entity
execute if entity @s[distance=..5] unless data storage jolted:storage root.temp{success:1b} positioned ^ ^ ^0.01 run function jolted:entity/copper_golem/interact/raycast
