execute if entity @s[tag=jolted.block] if loaded ~ ~ ~ run function jolted:block/second_clock
execute if entity @s[tag=jolted.entity] run function jolted:entity/technical/second_clock/entity
