execute if predicate jolted:item/rose_gold_tools/used_rose_gold run function jolted:item/rose_gold_tools/main
execute if score @s jolted.rose_gold_delay matches 1.. run scoreboard players remove @s jolted.rose_gold_delay 1

execute if predicate jolted:item/gun/holding_any run function jolted:item/gun/tick
execute if predicate jolted:item/gun/reset_speed run function jolted:item/gun/charge/reset_speed
