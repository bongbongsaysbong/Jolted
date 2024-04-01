function jolted:block/alloy_forge/recipes/get_ingredients
function jolted:block/alloy_forge/recipes/get_recipes

execute if score #recipe jolted.dummy matches 1.. unless score @s jolted.dummy = #recipe jolted.dummy if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:redstone"}] run function jolted:block/alloy_forge/smelting/main
execute unless score #recipe jolted.dummy matches 1.. if entity @s[tag=jolted.alloy_forge.smelting] run function jolted:block/alloy_forge/smelting/end
execute if entity @s[tag=jolted.alloy_forge.smelting] unless data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:redstone"}] run function jolted:block/alloy_forge/smelting/end
