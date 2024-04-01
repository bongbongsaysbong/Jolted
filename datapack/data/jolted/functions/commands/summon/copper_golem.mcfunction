execute if entity @s[type=minecraft:player] run scoreboard players set #golem_oxidation jolted.dummy 0
execute summon wandering_trader run function jolted:entity/copper_golem/initiate

execute store result score #sendCommandFeedback jolted.dummy run gamerule sendCommandFeedback
execute unless score #no_spawn_message jolted.dummy matches 1 if score #sendCommandFeedback jolted.dummy matches 1 run tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.jolted.copper_golem"}]}
execute if entity @s[type=minecraft:player] run function jolted:entity/player/gamerules/no_feedback/main

scoreboard players reset #no_spawn_message jolted.dummy
