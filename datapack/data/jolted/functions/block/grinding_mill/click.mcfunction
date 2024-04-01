advancement revoke @s only jolted:technical/item_used_on_block/grinding_mill

data remove storage nucleus:storage root.temp
data modify storage nucleus:storage root.temp.item set from entity @s SelectedItem
data modify storage nucleus:storage root.temp.play_sound set value 1b
function nucleus:item/check_vanilla_item

scoreboard players set #raycast jolted.dummy 500
execute anchored eyes run function jolted:block/grinding_mill/interact/raycast
execute if data storage jolted:storage root.temp{result:"reduce_count"} run item modify entity @s[gamemode=!creative] weapon.mainhand jolted:reduce_count/1
