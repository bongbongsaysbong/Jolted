execute if data block ~ ~ ~ Items[{Slot:5b}] store result block ~ ~ ~ Items[{Slot:5b}].Count int -1 run data get block ~ ~ ~ Items[{Slot:5b}].Count -1.0000000001
execute unless data block ~ ~ ~ Items[{Slot:5b}] run function jolted:block/alloy_forge/recipes/craft/add_item

execute unless score #recipe jolted.dummy matches 5 run function jolted:block/alloy_forge/recipes/reduce_count/1
execute if score #recipe jolted.dummy matches 5 run function jolted:block/alloy_forge/recipes/reduce_count/4
item modify block ~ ~ ~ container.6 jolted:reduce_count/1

playsound jolted:block.alloy_forge.smelt block @a[distance=..16] ~ ~ ~ 0.25
