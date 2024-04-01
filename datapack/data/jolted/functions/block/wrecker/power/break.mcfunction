execute if block ~ ~ ~ #jolted:wrecker/cake at @s run particle heart ~ ~-1 ~ 0.5 0.5 0.5 0 5 normal
scoreboard players set #broken_block jolted.dummy 1

execute if block ~ ~ ~ snow run loot spawn ~ ~ ~ loot jolted:technical/items/snowball
setblock ~ ~ ~ air destroy
