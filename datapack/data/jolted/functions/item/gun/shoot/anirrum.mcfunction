scoreboard players reset @s manic.dummy

execute if data storage jolted:storage root.temp.item.tag.Enchantments[{lvl:1s,id:"minecraft:unbreaking"}] if predicate nucleus:chance/0.75 run scoreboard players remove @s manic.dummy 7
execute if data storage jolted:storage root.temp.item.tag.Enchantments[{lvl:2s,id:"minecraft:unbreaking"}] if predicate nucleus:chance/0.6 run scoreboard players remove @s manic.dummy 7
execute if data storage jolted:storage root.temp.item.tag.Enchantments[{lvl:3s,id:"minecraft:unbreaking"}] if predicate nucleus:chance/0.45 run scoreboard players remove @s manic.dummy 7
execute unless data storage jolted:storage root.temp.item.tag.Enchantments[{id:"minecraft:unbreaking"}] run scoreboard players remove @s manic.dummy 7

scoreboard players operation @s manic.sanity += @s manic.dummy
execute if score @s manic.sanity matches ..-1 run scoreboard players operation @s manic.lunacy -= @s manic.sanity
execute if score @s manic.sanity matches ..-1 run scoreboard players set @s manic.sanity 0

execute if score @s manic.sanity matches ..2999 run data modify storage jolted:storage root.temp.item.tag.jolted.gun.damage set value 13
