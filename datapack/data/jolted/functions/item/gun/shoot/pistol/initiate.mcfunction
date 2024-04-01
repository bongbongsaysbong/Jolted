data modify entity @s Rotation set from storage jolted:storage root.temp.rotation
scoreboard players reset #targets_pierced jolted.dummy
scoreboard players reset #pierced_target jolted.dummy
execute if score #deviation jolted.dummy matches 1 run tp @s ~ ~ ~ ~25 ~
execute if score #deviation jolted.dummy matches 2 run tp @s ~ ~ ~ ~-25 ~

scoreboard players operation @s jolted.dummy = #range jolted.dummy
scoreboard players operation @s jolted.dummy *= #5 nucleus.dummy

function jolted:item/gun/shoot/marker/raycast
