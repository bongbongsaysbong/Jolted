execute if block ~ ~-2 ~ #jolted:copper_golem_oxidation/default run function jolted:entity/copper_golem/placement/type/default
execute if block ~ ~-2 ~ #jolted:copper_golem_oxidation/exposed run function jolted:entity/copper_golem/placement/type/exposed
execute if block ~ ~-2 ~ #jolted:copper_golem_oxidation/weathered run function jolted:entity/copper_golem/placement/type/weathered
execute if block ~ ~-2 ~ #jolted:copper_golem_oxidation/oxidized run function jolted:entity/copper_golem/placement/type/oxidized
execute if block ~ ~-2 ~ #jolted:copper_golem_oxidation/waxed run scoreboard players set #waxed_golem jolted.dummy 1
execute if block ~ ~-1 ~ minecraft:carved_pumpkin[facing=north] run scoreboard players set #direction jolted.dummy 180
execute if block ~ ~-1 ~ minecraft:carved_pumpkin[facing=south] run scoreboard players set #direction jolted.dummy 0
execute if block ~ ~-1 ~ minecraft:carved_pumpkin[facing=east] run scoreboard players set #direction jolted.dummy 270
execute if block ~ ~-1 ~ minecraft:carved_pumpkin[facing=west] run scoreboard players set #direction jolted.dummy 90

fill ~ ~ ~ ~ ~-2 ~ air

scoreboard players set #no_spawn_message jolted.dummy 1
execute positioned ~ ~-2 ~ run function jolted:commands/summon/copper_golem
