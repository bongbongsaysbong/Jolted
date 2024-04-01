playsound jolted:block.grinding_mill.eject block @a[distance=..16]
particle minecraft:poof ~ ~-0.5 ~ 0.2 0.2 0.2 0.05 4 force
$loot spawn ~ ~-0.5 ~ loot $(loot_table)

function jolted:block/grinding_mill/output/end
