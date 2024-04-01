data modify storage jolted:storage root.temp.item.tag.CustomModelData set from storage jolted:storage root.temp.item.tag.jolted.gun.models.reload
execute if predicate jolted:item/gun/mainhand run item modify entity @s weapon.mainhand jolted:gun/reload_start
execute if predicate jolted:item/gun/offhand run item modify entity @s weapon.offhand jolted:gun/reload_start

attribute @s minecraft:generic.movement_speed modifier add 8-3-6-2501-14519 gun_speed -0.055 add
scoreboard players add @s jolted.gun_charge.segment 1
execute store result score #quick_charge jolted.dummy run data get storage jolted:storage root.temp.item.tag.Enchantments[{id:"minecraft:quick_charge"}].lvl
scoreboard players operation @s jolted.gun_charge.segment += #quick_charge jolted.dummy
execute if score @s jolted.gun_charge.segment matches 10.. run function jolted:item/gun/charge/update_segment

execute if score #charge_time jolted.dummy matches 2 run function jolted:item/gun/charge/display/2
execute if score #charge_time jolted.dummy matches 3 run function jolted:item/gun/charge/display/3
execute if score #charge_time jolted.dummy matches 4 run function jolted:item/gun/charge/display/4
execute if score #charge_time jolted.dummy matches 5 run function jolted:item/gun/charge/display/5
execute if score #charge_time jolted.dummy matches 6 run function jolted:item/gun/charge/display/6
execute if score #charge_time jolted.dummy matches 7 run function jolted:item/gun/charge/display/7
execute if score #charge_time jolted.dummy matches 8 run function jolted:item/gun/charge/display/8
function nucleus:entity/player/actionbar/message

execute if score @s jolted.gun_charge >= #charge_time jolted.dummy run function jolted:item/gun/charge/add_bullet
