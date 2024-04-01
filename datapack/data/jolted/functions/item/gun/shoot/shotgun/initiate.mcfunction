data modify entity @s Rotation set from storage jolted:storage root.temp.rotation
scoreboard players reset #targets_pierced jolted.dummy
scoreboard players reset #pierced_target jolted.dummy

scoreboard players operation @s jolted.dummy = #range jolted.dummy
scoreboard players operation @s jolted.dummy *= #5 nucleus.dummy

execute store result score #pitch jolted.dummy run random value 1..6 jolted:rng/1_6
execute store result score #yaw jolted.dummy run random value 1..6 jolted:rng/1_6

execute if score #pitch jolted.dummy matches 1 run tp @s ~ ~ ~ ~-3 ~
execute if score #pitch jolted.dummy matches 2 run tp @s ~ ~ ~ ~-6 ~
execute if score #pitch jolted.dummy matches 3 run tp @s ~ ~ ~ ~-9 ~
execute if score #pitch jolted.dummy matches 4 run tp @s ~ ~ ~ ~3 ~
execute if score #pitch jolted.dummy matches 5 run tp @s ~ ~ ~ ~6 ~
execute if score #pitch jolted.dummy matches 6 run tp @s ~ ~ ~ ~9 ~

execute at @s run function jolted:item/gun/shoot/shotgun/initiate_yaw

function jolted:item/gun/shoot/marker/raycast
