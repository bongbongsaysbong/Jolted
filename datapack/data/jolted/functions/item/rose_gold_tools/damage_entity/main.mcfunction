advancement revoke @s only jolted:technical/player_hurt_entity/used_rose_gold

execute store result score #dealt_damage jolted.dummy run attribute @s minecraft:generic.attack_damage get
scoreboard players set @s jolted.rose_gold_delay 10

data remove storage jolted:storage root.temp
data modify storage jolted:storage root.temp.UUID set from entity @s UUID

tag @s add jolted.damager
execute positioned ^ ^ ^3 as @e[type=#nucleus:preset/can_take_damage/include_players,predicate=nucleus:entity/neutral,distance=..3.5,tag=!jolted.damager] at @s run function jolted:item/rose_gold_tools/damage_entity/as_entity
tag @s remove jolted.damager
