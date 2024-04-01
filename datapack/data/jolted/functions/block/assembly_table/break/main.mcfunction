execute as @e[type=minecraft:item,tag=!smithed.entity,limit=1,distance=..3,nbt={Age:0s,Item:{id:"minecraft:barrel",tag:{display:{Name:'{"translate":"block.jolted.assembly_table.gui","with":[{"translate":"block.jolted.assembly_table","font":"minecraft:default","color":"#3F3F3F"}],"font":"jolted:assembly_table","color":"white"}'}}}}] at @s run function jolted:block/assembly_table/break/kill_item
kill @e[type=minecraft:item,tag=!smithed.entity,distance=..3,nbt={Age:0s,Item:{tag:{jolted:{gui_item:1b}}}}]
particle item barrel{CustomModelData:8362000} ~ ~0.4 ~ 0.4 0.4 0.4 0.07 70 normal

kill @s
function nucleus:block/hopper_updating/undo
