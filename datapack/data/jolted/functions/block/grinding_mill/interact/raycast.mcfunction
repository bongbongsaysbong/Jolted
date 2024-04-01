execute if block ^ ^ ^0.01 minecraft:hopper{Lock:"§jolted.grinding_mill\\uF001"} positioned ^ ^ ^0.01 align xyz as @e[dx=0,type=minecraft:item_display,tag=jolted.grinding_mill,limit=1] at @s run return run function jolted:block/grinding_mill/interact/as_entity

scoreboard players remove #raycast jolted.dummy 1
execute if score #raycast jolted.dummy matches 1.. positioned ^ ^ ^0.01 if block ~ ~ ~ #nucleus:raycast_ignore run function jolted:block/grinding_mill/interact/raycast
