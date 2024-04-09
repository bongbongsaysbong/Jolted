execute if entity @s[tag=jolted.alloy_forge.smelting] if predicate nucleus:chance/0.3 run playsound jolted:block.alloy_forge.ambient block @a[distance=..16] ~ ~ ~ 0.25
execute if entity @s[tag=jolted.grinding_mill] run function jolted:block/grinding_mill/second_clock
