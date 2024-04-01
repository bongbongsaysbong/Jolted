advancement revoke @s only jolted:technical/item_used_on_block/coin_press

data remove storage jolted:storage root.temp
data modify storage jolted:storage root.temp.item set from entity @s SelectedItem

tag @s add jolted.interacting_player
scoreboard players set #raycast jolted.dummy 500
execute anchored eyes run function jolted:block/coin_press/interact/raycast
execute if data storage jolted:storage root.temp{result:"reduce_count"} run item modify entity @s[gamemode=!creative] weapon.mainhand jolted:reduce_count/1
tag @s remove jolted.interacting_player
