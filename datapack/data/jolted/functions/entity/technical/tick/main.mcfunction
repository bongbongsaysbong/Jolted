execute if entity @s[tag=jolted.block] if loaded ~ ~ ~ run function jolted:block/tick
execute if entity @s[tag=jolted.entity] run function jolted:entity/technical/tick/entity
