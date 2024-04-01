execute unless block ~ ~ ~ dropper run function jolted:block/speaker/break/main

execute if entity @s[tag=jolted.speaker.powered] if block ~ ~ ~ dropper[triggered=false] run tag @s remove jolted.speaker.powered
execute unless entity @s[tag=jolted.speaker.powered] if block ~ ~ ~ dropper[triggered=true] run function jolted:block/speaker/power
