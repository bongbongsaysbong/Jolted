data modify entity @s ArmorItems[3].tag.nucleus.custom_model_data set value 8362002
data modify entity @s ArmorItems[3].tag.nucleus.damage_data.idle set value 39
data modify entity @s ArmorItems[3].tag.nucleus.damage_data.moving set value 39
scoreboard players set @s nucleus.frames 21
tag @s remove jolted.copper_golem.oxidized
function nucleus:entity/technical/animate
