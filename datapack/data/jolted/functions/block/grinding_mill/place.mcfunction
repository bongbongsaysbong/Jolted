setblock ~ ~ ~ air
setblock ~ ~ ~ hopper[facing=down]{CustomName:'{"font":"jolted:technical","translate":"block.jolted.grinding_mill.name"}',Lock:"§jolted.grinding_mill\\uF001",TransferCooldown:9999}

summon item_display ~ ~ ~ {item:{id:"minecraft:hopper",Count:1b,tag:{CustomModelData:8362000}},transformation:{scale:[1.001,1.001,1.001],left_rotation:{axis:[0f,0f,0f],angle:0f},right_rotation:{axis:[0f,0f,0f],angle:0f},translation:[0,0,0]},Tags:["nucleus.entity","jolted.block","jolted.ten_second_clock","jolted.second_clock","jolted.tick","jolted.grinding_mill","smithed.entity","smithed.block","nucleus.prevents_hoppers","nucleus.prevents_hoppers.allow_bottom"]}
