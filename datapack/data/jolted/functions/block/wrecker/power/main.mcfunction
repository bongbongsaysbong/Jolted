tag @s add jolted.wrecker.powered
data modify entity @s item.tag.CustomModelData set value 8362001
tag @a[distance=..16] add jolted.scheduled.stop_wrecker_sound
schedule function jolted:block/wrecker/scheduled/main 5t append

scoreboard players reset #broken_block jolted.dummy
execute if entity @s[tag=jolted.wrecker.north] positioned ~ ~ ~-1 run function jolted:block/wrecker/power/at_block
execute if entity @s[tag=jolted.wrecker.south] positioned ~ ~ ~1 run function jolted:block/wrecker/power/at_block
execute if entity @s[tag=jolted.wrecker.west] positioned ~-1 ~ ~ run function jolted:block/wrecker/power/at_block
execute if entity @s[tag=jolted.wrecker.east] positioned ~1 ~ ~ run function jolted:block/wrecker/power/at_block

execute if score #broken_block jolted.dummy matches 1 run playsound jolted:block.wrecker.close block @a[distance=..16]
execute unless score #broken_block jolted.dummy matches 1 run playsound jolted:block.wrecker.fail block @a[distance=..16] ~ ~ ~ 0.5
