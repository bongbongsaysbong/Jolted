execute as @e[type=minecraft:item,tag=!smithed.entity,limit=1,distance=..3,nbt={Age:0s,Item:{id:"minecraft:hopper",tag:{display:{Name:'{"translate":"block.jolted.grinding_mill.name","font":"jolted:technical"}'}}}}] at @s run function jolted:block/grinding_mill/break/kill_item
particle item hopper{CustomModelData:8362000} ~ ~0.4 ~ 0.4 0.4 0.4 0.07 70 normal

execute if data entity @s item.tag.jolted.items[0] run function jolted:block/grinding_mill/break/output

kill @s
function nucleus:block/hopper_updating/undo
