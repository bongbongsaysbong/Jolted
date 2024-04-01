execute unless entity @s[tag=jolted.copper_golem.waxed] if score @s jolted.dummy2 matches 1.. run function jolted:entity/copper_golem/oxidation/decrease
execute if entity @s[tag=jolted.copper_golem.waxed] run function jolted:entity/copper_golem/interact/scrape/remove_wax
