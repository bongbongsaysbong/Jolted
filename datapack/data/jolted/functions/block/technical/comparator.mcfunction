data remove block ~ ~ ~ Items
execute if entity @s[tag=nucleus.double_tall] run data remove block ~ ~1 ~ Items

$loot insert ~ ~ ~ loot jolted:technical/comparator/$(value)
$execute if entity @s[tag=nucleus.double_tall] run loot insert ~ ~1 ~ loot jolted:technical/comparator/$(value)
