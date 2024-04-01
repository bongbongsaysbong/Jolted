item replace block ~ ~ ~ container.4 with barrier{CustomModelData:8362001,nucleus:{illegal_item:1b},jolted:{alloy_forge_timer:1b},display:{Name:'{"translate":"ui.jolted.alloy_forge.timer","color":"white"}'}}

data modify entity @s item.tag.CustomModelData set value 8362003
tag @s add jolted.alloy_forge.smelting
scoreboard players operation @s jolted.dummy = #recipe jolted.dummy

scoreboard players set @s jolted.dummy2 200
