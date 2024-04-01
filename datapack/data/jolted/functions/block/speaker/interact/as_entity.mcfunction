data modify storage jolted:storage root.temp.text_data set from entity @s item.tag.display.Name

execute if data storage jolted:storage root.temp.item{id:"minecraft:white_dye"} run item modify entity @s container.0 jolted:speaker/white
execute if data storage jolted:storage root.temp.item{id:"minecraft:light_gray_dye"} run item modify entity @s container.0 jolted:speaker/light_gray
execute if data storage jolted:storage root.temp.item{id:"minecraft:gray_dye"} run item modify entity @s container.0 jolted:speaker/gray
execute if data storage jolted:storage root.temp.item{id:"minecraft:black_dye"} run item modify entity @s container.0 jolted:speaker/black
execute if data storage jolted:storage root.temp.item{id:"minecraft:brown_dye"} run item modify entity @s container.0 jolted:speaker/brown
execute if data storage jolted:storage root.temp.item{id:"minecraft:red_dye"} run item modify entity @s container.0 jolted:speaker/red
execute if data storage jolted:storage root.temp.item{id:"minecraft:orange_dye"} run item modify entity @s container.0 jolted:speaker/orange
execute if data storage jolted:storage root.temp.item{id:"minecraft:yellow_dye"} run item modify entity @s container.0 jolted:speaker/yellow
execute if data storage jolted:storage root.temp.item{id:"minecraft:lime_dye"} run item modify entity @s container.0 jolted:speaker/lime
execute if data storage jolted:storage root.temp.item{id:"minecraft:green_dye"} run item modify entity @s container.0 jolted:speaker/green
execute if data storage jolted:storage root.temp.item{id:"minecraft:cyan_dye"} run item modify entity @s container.0 jolted:speaker/cyan
execute if data storage jolted:storage root.temp.item{id:"minecraft:light_blue_dye"} run item modify entity @s container.0 jolted:speaker/light_blue
execute if data storage jolted:storage root.temp.item{id:"minecraft:blue_dye"} run item modify entity @s container.0 jolted:speaker/blue
execute if data storage jolted:storage root.temp.item{id:"minecraft:purple_dye"} run item modify entity @s container.0 jolted:speaker/purple
execute if data storage jolted:storage root.temp.item{id:"minecraft:magenta_dye"} run item modify entity @s container.0 jolted:speaker/magenta
execute if data storage jolted:storage root.temp.item{id:"minecraft:pink_dye"} run item modify entity @s container.0 jolted:speaker/pink

execute store success score #changed_text jolted.dummy run data modify storage jolted:storage root.temp.text_data set from entity @s item.tag.display.Name
execute if score #changed_text jolted.dummy matches 1 run function jolted:block/speaker/interact/update_dye
