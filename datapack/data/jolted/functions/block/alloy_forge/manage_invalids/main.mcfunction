# Attempt Moving
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:redstone"}] unless data block ~ ~ ~ Items[{Slot:6b}] run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 6b
execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:redstone"}] unless data block ~ ~ ~ Items[{Slot:6b}] run data modify block ~ ~ ~ Items[{Slot:1b}].Slot set value 6b
execute if data block ~ ~ ~ Items[{Slot:1b}] run function jolted:block/alloy_forge/manage_invalids/ingots

# Fail
execute if predicate jolted:block/alloy_forge/input_0 run function jolted:block/alloy_forge/manage_invalids/dump_item/0
execute if data block ~ ~ ~ Items[{Slot:1b}] run function jolted:block/alloy_forge/manage_invalids/dump_item/1
execute if data block ~ ~ ~ Items[{Slot:2b}] run function jolted:block/alloy_forge/manage_invalids/dump_item/2
execute if predicate jolted:block/alloy_forge/input_1 run function jolted:block/alloy_forge/manage_invalids/dump_item/3
execute if predicate jolted:block/alloy_forge/timer run function jolted:block/alloy_forge/manage_invalids/dump_item/4
execute if predicate jolted:block/alloy_forge/output run function jolted:block/alloy_forge/manage_invalids/dump_item/5
execute if predicate jolted:block/alloy_forge/redstone run function jolted:block/alloy_forge/manage_invalids/dump_item/6
execute if data block ~ ~ ~ Items[{Slot:7b}] run function jolted:block/alloy_forge/manage_invalids/dump_item/7
execute if data block ~ ~ ~ Items[{Slot:8b}] run function jolted:block/alloy_forge/manage_invalids/dump_item/8
