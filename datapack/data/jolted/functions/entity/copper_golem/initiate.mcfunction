data merge entity @s {Team:"smithed.prevent_aggression",Tags:["smithed.entity","nucleus.entity","nucleus.living_entity","nucleus.trader_entity","jolted.entity","jolted.copper_golem","jolted.tick","jolted.ten_second_clock","jolted.second_clock"],CustomName:'{"translate":"entity.jolted.copper_golem"}',Silent:1b,DeathTime:19s,Offers:{Recipes:[]},active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:structure_block",tag:{CustomModelData:8362000,nucleus:{custom_model_data:8362000,damage_data:{idle:0,moving:7}}}}],HandItems:[{id:"minecraft:leather_boots",Count:1b,tag:{CustomModelData:8362000,display:{color:0}}}],DeathLootTable:"jolted:entities/copper_golem",PersistenceRequired:1b,DespawnDelay:2147483647}
data merge entity @s {Rotation:[0.0f,0.0f]}
execute store result entity @s Rotation[0] int 1 run scoreboard players get #direction jolted.dummy

scoreboard players add #golem_oxidation_level jolted.dummy 0
scoreboard players operation @s jolted.dummy2 = #golem_oxidation_level jolted.dummy
execute if score @s jolted.dummy2 matches ..0 run scoreboard players set @s jolted.dummy2 0
execute if score @s jolted.dummy2 matches 3.. run scoreboard players set @s jolted.dummy2 3

execute if score @s jolted.dummy2 matches 1 run function jolted:entity/copper_golem/oxidation/exposed
execute if score @s jolted.dummy2 matches 2 run function jolted:entity/copper_golem/oxidation/weathered
execute if score @s jolted.dummy2 matches 3 run function jolted:entity/copper_golem/oxidation/oxidized
scoreboard players set #golem_oxidation_level jolted.dummy 0

execute if score #waxed_golem jolted.dummy matches 1 run tag @s add jolted.copper_golem.waxed
scoreboard players reset #waxed_golem jolted.dummy
