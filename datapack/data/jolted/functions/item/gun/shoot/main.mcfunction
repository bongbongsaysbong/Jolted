scoreboard players reset #has_hit_player jolted.dummy
execute unless entity @s[gamemode=creative] store result storage jolted:storage root.temp.item.tag.jolted.gun.bullets int 1 run scoreboard players remove #bullets jolted.dummy 1
execute store result score #piercing_level jolted.dummy run data get storage jolted:storage root.temp.item.tag.Enchantments[{id:"minecraft:piercing"}].lvl

execute if predicate jolted:item/gun/mainhand run function jolted:item/gun/shoot/mainhand
execute if predicate jolted:item/gun/offhand run function jolted:item/gun/shoot/offhand
execute if data storage jolted:storage root.temp.item.tag.jolted{id:"anirrum_pistol"} run function jolted:item/gun/shoot/anirrum

tag @s add jolted.damager
data modify storage jolted:storage root.temp.rotation set from entity @s Rotation
execute if data storage jolted:storage root.temp.item.tag.jolted.gun{gun_type:"shotgun"} run function jolted:item/gun/shoot/shotgun/main
execute if data storage jolted:storage root.temp.item.tag.jolted.gun{gun_type:"pistol"} run function jolted:item/gun/shoot/pistol/main

tag @e[type=#nucleus:preset/can_take_damage/include_players,tag=jolted.took_bullet_damage] remove jolted.took_bullet_damage
tag @s remove jolted.damager

execute store result storage jolted:storage root.temp.macro.recoil.x int 1 run random value -3..3 jolted:rng/gun
execute store result storage jolted:storage root.temp.macro.recoil.y int 1 run random value -3..3 jolted:rng/gun
execute unless data storage jolted:storage root.temp.item.tag.jolted{id:"pigsteel_rifle"} run playsound jolted:item.guns.shoot player @a[distance=..48] ~ ~ ~ 3
execute if data storage jolted:storage root.temp.item.tag.jolted{id:"pigsteel_rifle"} run function jolted:item/gun/shoot/rifle
execute anchored eyes run particle minecraft:smoke ^ ^ ^0.75 0.25 0.25 0.25 0.05 20 normal
function jolted:item/gun/shoot/recoil with storage jolted:storage root.temp.macro.recoil

execute if score #has_hit_player jolted.dummy matches 1 run playsound minecraft:entity.arrow.hit_player player @s
