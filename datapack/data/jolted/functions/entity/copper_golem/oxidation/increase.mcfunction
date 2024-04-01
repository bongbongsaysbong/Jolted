scoreboard players add @s jolted.dummy2 1
execute if score @s jolted.dummy2 matches 2..3 run function jolted:entity/copper_golem/oxidation/exposed
execute if score @s jolted.dummy2 matches 4..5 run function jolted:entity/copper_golem/oxidation/weathered
execute if score @s jolted.dummy2 matches 6.. run function jolted:entity/copper_golem/oxidation/oxidized
execute if score @s jolted.dummy2 matches 7.. run scoreboard players set @s jolted.dummy2 6
