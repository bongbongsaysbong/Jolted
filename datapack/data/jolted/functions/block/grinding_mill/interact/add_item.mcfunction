execute if data entity @s item.tag.jolted.items[0] run return run scoreboard players set #valid jolted.dummy 0
# this line controls how many items can be in its memory
# i nerfed it from 64 to 1 because it might be lagging idk

execute if data storage nucleus:storage root.temp{play_sound:1b} run playsound jolted:block.grinding_mill.insert block @a[distance=..16]
data modify entity @s item.tag.jolted.items append from storage nucleus:storage root.temp.item
data modify entity @s item.tag.jolted.items[-1].Count set value 1b
data modify storage jolted:storage root.temp.result set value "reduce_count"
function jolted:block/grinding_mill/grinding/start
