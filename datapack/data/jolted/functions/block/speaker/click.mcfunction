advancement revoke @s only jolted:technical/item_used_on_block/speaker

data remove storage jolted:storage root.temp
data modify storage jolted:storage root.temp.item set from entity @s SelectedItem

scoreboard players set #raycast jolted.dummy 500
execute anchored eyes run function jolted:block/speaker/interact/raycast
execute if data storage jolted:storage root.temp{result:"reduce_count"} run item modify entity @s[gamemode=!creative] weapon.mainhand jolted:reduce_count/1
