playsound jolted:block.assembly_table.craft block @a[distance=..16]

$execute if predicate nucleus:entity/full_inventory run loot spawn ~ ~ ~ loot $(loot_table)
$execute unless predicate nucleus:entity/full_inventory run loot give @s loot $(loot_table)
