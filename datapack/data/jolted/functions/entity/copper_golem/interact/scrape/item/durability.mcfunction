execute store result score #item_damage jolted.dummy run data get storage jolted:storage root.temp.item.tag.Damage
execute store result storage jolted:storage root.temp.item.tag.Damage int 1 run scoreboard players add #item_damage jolted.dummy 1
item modify entity @s weapon.mainhand jolted:copy_nbt

execute if data storage jolted:storage root.temp.item{id:"minecraft:netherite_axe",tag:{Damage:2031}} run function jolted:entity/copper_golem/interact/scrape/item/break_item
execute if data storage jolted:storage root.temp.item{id:"minecraft:diamond_axe",tag:{Damage:1561}} run function jolted:entity/copper_golem/interact/scrape/item/break_item
execute if data storage jolted:storage root.temp.item{id:"minecraft:iron_axe",tag:{Damage:250}} run function jolted:entity/copper_golem/interact/scrape/item/break_item
execute if data storage jolted:storage root.temp.item{id:"minecraft:golden_axe",tag:{Damage:32}} run function jolted:entity/copper_golem/interact/scrape/item/break_item
execute if data storage jolted:storage root.temp.item{id:"minecraft:stone_axe",tag:{Damage:131}} run function jolted:entity/copper_golem/interact/scrape/item/break_item
execute if data storage jolted:storage root.temp.item{id:"minecraft:wooden_axe",tag:{Damage:59}} run function jolted:entity/copper_golem/interact/scrape/item/break_item
