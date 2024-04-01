data modify storage jolted:storage root.temp.UUID.temp set from entity @s UUID
scoreboard players set #deal_damage jolted.dummy 1
execute if data entity @s Owner store result score #deal_damage jolted.dummy run data modify storage jolted:storage root.temp.UUID.temp set from entity @s Owner

execute if score #deal_damage jolted.dummy matches 1 run function jolted:item/rose_gold_tools/damage_entity/deal_damage
