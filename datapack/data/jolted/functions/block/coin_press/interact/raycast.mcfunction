execute if block ^ ^ ^0.01 minecraft:dropper{Lock:"§jolted.coin_press\\uF001"} positioned ^ ^ ^0.01 align xyz positioned ~ ~1 ~ as @e[dx=0,type=minecraft:item_display,tag=jolted.coin_press,limit=1] at @s positioned ~ ~-1 ~ run return run function jolted:block/coin_press/interact/as_entity

scoreboard players remove #raycast jolted.dummy 1
execute if score #raycast jolted.dummy matches 1.. positioned ^ ^ ^0.01 if block ~ ~ ~ #nucleus:raycast_ignore run function jolted:block/coin_press/interact/raycast
