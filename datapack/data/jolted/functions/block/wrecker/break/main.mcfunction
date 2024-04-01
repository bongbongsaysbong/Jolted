execute as @e[type=minecraft:item,tag=!smithed.entity,limit=1,distance=..3,nbt={Age:0s,Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.jolted.wrecker.name","font":"jolted:technical"}'}}}}] at @s run function jolted:block/wrecker/break/kill_item
particle item dropper{CustomModelData:8362000} ~ ~0.4 ~ 0.4 0.4 0.4 0.07 70 normal
kill @s
function nucleus:block/hopper_updating/undo
