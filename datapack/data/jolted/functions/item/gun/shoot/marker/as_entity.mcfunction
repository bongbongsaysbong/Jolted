tag @s add jolted.took_bullet_damage
function jolted:item/gun/shoot/marker/deal_damage with storage jolted:storage root.temp.item.tag.jolted.gun
particle minecraft:smoke ~ ~0.75 ~ 0.25 0.5 0.25 0.05 8 normal

execute if score #piercing_level jolted.dummy matches 0 run scoreboard players set #pierced_target jolted.dummy 1
execute if score #targets_pierced jolted.dummy >= #piercing_level jolted.dummy run scoreboard players set #pierced_target jolted.dummy 1
execute if score #piercing_level jolted.dummy matches 1.. run scoreboard players add #targets_pierced jolted.dummy 1
execute if entity @s[type=minecraft:player] run scoreboard players set #has_hit_player jolted.dummy 1
