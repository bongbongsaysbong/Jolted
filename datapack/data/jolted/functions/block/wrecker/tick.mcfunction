execute unless block ~ ~ ~ dropper run function jolted:block/wrecker/break/main

execute if entity @s[tag=jolted.wrecker.powered] if block ~ ~ ~ dropper[triggered=false] run function jolted:block/wrecker/unpower
execute unless entity @s[tag=jolted.wrecker.powered] if block ~ ~ ~ dropper[triggered=true] run function jolted:block/wrecker/power/main
