# Clear Storage
data remove storage jolted:storage root.temp
data modify storage jolted:storage root.temp.item set from entity @s SelectedItem

# Actions
execute if entity @s[advancements={jolted:technical/player_interacted_with_entity/copper_golem={scrape=true}}] run data modify storage jolted:storage root.temp.action set value 1
execute if entity @s[advancements={jolted:technical/player_interacted_with_entity/copper_golem={wax=true}}] run data modify storage jolted:storage root.temp.action set value 2
execute anchored eyes run function jolted:entity/copper_golem/interact/raycast
execute if data storage jolted:storage root.temp{success:1b} run function jolted:entity/corpsecreep/interact/as_player/main

# Finish
execute unless entity @s[gamemode=creative] if data storage jolted:storage root.temp{success:1b,action:1} run function jolted:entity/copper_golem/interact/scrape/as_player
execute unless entity @s[gamemode=creative] if data storage jolted:storage root.temp{success:1b,action:2} run item modify entity @s weapon.mainhand jolted:reduce_count/1
advancement revoke @s only jolted:technical/player_interacted_with_entity/copper_golem
