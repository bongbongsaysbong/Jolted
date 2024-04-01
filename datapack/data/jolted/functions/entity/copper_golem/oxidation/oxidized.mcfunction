attribute @s minecraft:generic.movement_speed modifier add 8-3-6-2-2012 jolted.movement_speed -100 add
data modify entity @s ArmorItems[3].tag.nucleus.custom_model_data set value 8362003
tag @s add jolted.copper_golem.oxidized

data modify entity @s ArmorItems[3].tag.nucleus.damage_data.idle set value 0
data modify entity @s ArmorItems[3].tag.nucleus.damage_data.moving set value 0
scoreboard players set @s nucleus.frames 46

function nucleus:entity/technical/animate
