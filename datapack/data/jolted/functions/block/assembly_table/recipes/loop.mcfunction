execute store result storage jolted:storage root.temp.iterate.slot int 1 run scoreboard players get #iterate jolted.dummy
function jolted:block/assembly_table/recipes/compare with storage jolted:storage root.temp.iterate

scoreboard players add #iterate jolted.dummy 1
execute if score #iterate jolted.dummy >= #total jolted.dummy run return 0
function jolted:block/assembly_table/recipes/loop
