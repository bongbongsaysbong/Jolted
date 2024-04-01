playsound jolted:item.guns.load player @a[distance=..16]
execute store result storage jolted:storage root.temp.item.tag.jolted.gun.bullets int 1 run scoreboard players add #bullets jolted.dummy 1
clear @s[gamemode=!creative] structure_block{jolted:{gun_ammo:1b}} 1

execute if predicate jolted:item/gun/mainhand run function jolted:item/gun/set_data/update_lore/mainhand
execute if predicate jolted:item/gun/offhand run function jolted:item/gun/set_data/update_lore/offhand
function jolted:item/gun/charge/reset_speed
