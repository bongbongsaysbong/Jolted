data remove storage jolted:storage root.temp
execute store result storage jolted:storage root.temp.liquid_tank.dummy int 1 run scoreboard players get @s jolted.dummy
execute store result storage jolted:storage root.temp.liquid_tank.dummy2 int 1 run scoreboard players get @s jolted.dummy2
data modify storage jolted:storage root.temp.liquid_tank.CustomModelData set from entity @s item.tag.CustomModelData
scoreboard players add @s jolted.dummy 0
scoreboard players add @s jolted.dummy2 0

kill @e[type=minecraft:item,tag=!smithed.entity,distance=..5,nbt={Age:0s,Item:{tag:{nucleus:{illegal_item:1b}}}}]
execute store success score #dropped_item jolted.dummy run kill @e[type=minecraft:item,tag=!smithed.entity,distance=..5,nbt={Age:0s,Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.jolted.liquid_tank.name","font":"jolted:technical"}'}}}}]
execute if score #dropped_item jolted.dummy matches 1 run loot spawn ~ ~ ~ loot jolted:technical/blocks/liquid_tank
particle item dropper{CustomModelData:8362004} ~ ~-0.5 ~ 0.4 0.8 0.4 0.07 70 normal

execute if block ~ ~1 ~ dropper{Lock:"§jolted.liquid_tank\\uF001"} run setblock ~ ~1 ~ air
execute if block ~ ~ ~ dropper{Lock:"§jolted.liquid_tank\\uF001"} run setblock ~ ~ ~ air

function nucleus:block/hopper_updating/undo
kill @s
