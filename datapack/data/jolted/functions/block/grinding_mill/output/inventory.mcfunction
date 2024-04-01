$loot insert ~ ~ ~ loot $(loot_table)
function jolted:block/grinding_mill/output/end
playsound jolted:block.grinding_mill.eject_container block @a[distance=..16]
