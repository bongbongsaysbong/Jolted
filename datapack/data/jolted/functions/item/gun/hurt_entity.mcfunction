advancement revoke @s only jolted:technical/player_hurt_entity/disable_gun
execute if score @s jolted.gun_charge matches 1.. run function jolted:item/gun/charge/reset_speed
