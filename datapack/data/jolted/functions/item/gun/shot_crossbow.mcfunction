advancement revoke @s only jolted:technical/shot_crossbow/shot_gun
function jolted:item/gun/charge/reset_speed
item modify entity @s weapon.mainhand jolted:gun/reset_gun

function jolted:item/gun/set_data/main
execute unless score #bullets jolted.dummy matches 1.. run data modify storage nucleus:storage root.temp.actionbar set value {freeze:45,priority:1,json:'{"color":"red","translate":"ui.jolted.gun_description.charge","with":[{"keybind":"key.sneak"}]}'}
execute unless score #bullets jolted.dummy matches 1.. run function nucleus:entity/player/actionbar/message
execute if score #bullets jolted.dummy matches 1.. run function jolted:item/gun/shoot/main
