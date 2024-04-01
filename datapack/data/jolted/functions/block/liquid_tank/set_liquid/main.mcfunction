execute if score @s jolted.dummy2 matches 0 run function jolted:block/liquid_tank/set_liquid/empty
execute if score @s jolted.dummy matches 1 run function jolted:block/liquid_tank/set_liquid/water
execute if score @s jolted.dummy matches 2 run function jolted:block/liquid_tank/set_liquid/lava
execute if score @s jolted.dummy matches 3 run function jolted:block/liquid_tank/set_liquid/milk
execute if score @s jolted.dummy matches 4 run function jolted:block/liquid_tank/set_liquid/honey
execute if score @s jolted.dummy matches 5 run function jolted:block/liquid_tank/set_liquid/corpse_sap
execute if score @s jolted.dummy matches 6 run function jolted:block/liquid_tank/set_liquid/blood

execute if score @s jolted.dummy2 matches 1..32 run data modify entity @s item.tag.CustomModelData set from entity @s item.tag.jolted.custom_model_data[0]
execute if score @s jolted.dummy2 matches 33..64 run data modify entity @s item.tag.CustomModelData set from entity @s item.tag.jolted.custom_model_data[1]
execute if score @s jolted.dummy2 matches 65..96 run data modify entity @s item.tag.CustomModelData set from entity @s item.tag.jolted.custom_model_data[2]
execute if score @s jolted.dummy2 matches 97..128 run data modify entity @s item.tag.CustomModelData set from entity @s item.tag.jolted.custom_model_data[3]

scoreboard players operation #value jolted.dummy = @s jolted.dummy2
scoreboard players operation #value jolted.dummy *= #1000 nucleus.dummy
scoreboard players operation #value jolted.dummy /= #128 nucleus.dummy
scoreboard players operation #value jolted.dummy *= #14 nucleus.dummy
scoreboard players operation #value jolted.dummy /= #1000 nucleus.dummy

execute unless score @s jolted.dummy2 matches 0 run scoreboard players add #value jolted.dummy 1
execute if score @s jolted.dummy2 matches 0 run scoreboard players set #value jolted.dummy 0
execute if score @s jolted.dummy2 matches 128 run scoreboard players set #value jolted.dummy 15

execute store result storage jolted:storage root.temp.math.value int 1 run scoreboard players get #value jolted.dummy
function jolted:block/technical/comparator with storage jolted:storage root.temp.math
