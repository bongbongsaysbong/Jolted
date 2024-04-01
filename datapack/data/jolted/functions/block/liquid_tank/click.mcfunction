advancement revoke @s only jolted:technical/item_used_on_block/liquid_tank

data remove storage jolted:storage root.temp
data modify storage jolted:storage root.temp.item set from entity @s SelectedItem

scoreboard players set #raycast jolted.dummy 500
execute anchored eyes run function jolted:block/liquid_tank/interact/raycast
execute if data storage jolted:storage root.temp{result:"fill"} run function jolted:block/liquid_tank/interact/fill/as_player/main
execute if data storage jolted:storage root.temp{result:"empty"} run function jolted:block/liquid_tank/interact/empty/as_player
execute if data storage jolted:storage root.temp.result run function jolted:block/liquid_tank/liquid_amount
