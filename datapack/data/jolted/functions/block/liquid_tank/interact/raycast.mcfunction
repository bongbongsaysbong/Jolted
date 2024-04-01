execute positioned ^ ^ ^0.01 if block ~ ~ ~ minecraft:dropper{Lock:"§jolted.liquid_tank\\uF001"} unless block ~ ~-1 ~ minecraft:dropper{Lock:"§jolted.liquid_tank\\uF001"} align xyz positioned ~ ~2 ~ as @e[dx=0,type=minecraft:item_display,tag=jolted.liquid_tank,limit=1] at @s positioned ~ ~-2 ~ run return run function jolted:block/liquid_tank/interact/as_entity
execute positioned ^ ^ ^0.01 if block ~ ~ ~ minecraft:dropper{Lock:"§jolted.liquid_tank\\uF001"} if block ~ ~-1 ~ minecraft:dropper{Lock:"§jolted.liquid_tank\\uF001"} align xyz positioned ~ ~1 ~ as @e[dx=0,type=minecraft:item_display,tag=jolted.liquid_tank,limit=1] at @s positioned ~ ~-2 ~ run return run function jolted:block/liquid_tank/interact/as_entity

scoreboard players remove #raycast jolted.dummy 1
execute if score #raycast jolted.dummy matches 1.. positioned ^ ^ ^0.01 if block ~ ~ ~ #nucleus:raycast_ignore run function jolted:block/liquid_tank/interact/raycast
