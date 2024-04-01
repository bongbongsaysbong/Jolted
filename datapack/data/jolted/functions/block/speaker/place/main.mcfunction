data remove storage jolted:storage root.temp
data modify storage jolted:storage root.temp.block_data set from block ~ ~ ~

setblock ~ ~ ~ air
setblock ~ ~ ~ dropper[facing=down]{CustomName:'{"font":"jolted:technical","translate":"block.jolted.speaker.name"}',Lock:"§jolted.speaker\\uF001",TransferCooldown:9999}

summon item_display ~ ~1 ~ {item:{id:"minecraft:dropper",Count:1b,tag:{CustomModelData:8362034}},transformation:{scale:[1.001,1.001,1.001],left_rotation:{axis:[0f,0f,0f],angle:0f},right_rotation:{axis:[0f,0f,0f],angle:0f},translation:[0,-1,0]},Tags:["nucleus.entity","jolted.block","jolted.tick","jolted.speaker","smithed.entity","smithed.block","nucleus.prevents_hoppers","nucleus.offset_block_entity","nucleus.prevent_darkening"]}
execute positioned ~ ~1 ~ as @e[type=minecraft:item_display,tag=jolted.speaker,distance=..0.05,sort=nearest,limit=1] unless data storage jolted:storage root.temp.block_data{CustomName:'{"translate":"block.jolted.speaker","italic":false}'} run function jolted:block/speaker/place/initiate

function nucleus:block/hopper_updating/fill/main
