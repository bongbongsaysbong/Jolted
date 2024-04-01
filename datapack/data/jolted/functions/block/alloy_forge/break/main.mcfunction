execute as @e[type=minecraft:item,tag=!smithed.entity,limit=1,distance=..3,nbt={Age:0s,Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.jolted.alloy_forge.gui","font":"jolted:alloy_forge","color":"white"}'}}}}] at @s run function jolted:block/alloy_forge/break/kill_item
particle item dropper{CustomModelData:8362002} ~ ~0.4 ~ 0.4 0.4 0.4 0.07 70 normal
kill @s
function nucleus:block/hopper_updating/undo
