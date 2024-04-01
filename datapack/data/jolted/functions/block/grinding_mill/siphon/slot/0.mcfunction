execute store result score #count jolted.dummy run data get block ~ ~ ~ Items[0].Count
execute if score #count jolted.dummy matches 1 run data remove block ~ ~ ~ Items[0]
execute if score #count jolted.dummy matches 2.. store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players remove #count jolted.dummy 1
function jolted:block/grinding_mill/interact/add_item
