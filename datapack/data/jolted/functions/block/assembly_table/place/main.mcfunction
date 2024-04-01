data remove storage jolted:storage root.temp
data modify storage jolted:storage root.temp.block_data set from block ~ ~ ~

setblock ~ ~ ~ air
setblock ~ ~ ~ barrel{CustomName:'{"color":"white","font":"jolted:assembly_table","translate":"block.jolted.assembly_table.gui","with":[{"translate":"block.jolted.assembly_table","color":"#3F3F3F","font":"minecraft:default"}]}',TransferCooldown:9999}

summon item_display ~ ~1 ~ {item:{id:"minecraft:barrel",Count:1b,tag:{CustomModelData:8362000}},transformation:{scale:[1.001,1.001,1.001],left_rotation:{axis:[0f,0f,0f],angle:0f},right_rotation:{axis:[0f,0f,0f],angle:0f},translation:[0,-1,0]},Tags:["nucleus.entity","jolted.block","jolted.tick","jolted.assembly_table","smithed.entity","smithed.block","nucleus.prevents_hoppers","nucleus.offset_block_entity","nucleus.prevent_darkening"]}
execute positioned ~ ~1 ~ as @e[type=minecraft:item_display,tag=jolted.assembly_table,sort=nearest,limit=1] positioned ~ ~-1 ~ run function jolted:block/assembly_table/place/initiate

function nucleus:block/hopper_updating/fill/main
