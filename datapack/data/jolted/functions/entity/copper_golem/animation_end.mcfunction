data modify entity @s ArmorItems[3].tag.nucleus.damage_data.idle set value 0
data modify entity @s[tag=jolted.copper_golem.oxidized] ArmorItems[3].tag.nucleus.damage_data.idle set value 7
data modify entity @s ArmorItems[3].tag.nucleus.damage_data.moving set value 7
attribute @s[tag=!jolted.copper_golem.oxidized] minecraft:generic.movement_speed modifier remove 8-3-6-2-2012
scoreboard players reset @s nucleus.frames
