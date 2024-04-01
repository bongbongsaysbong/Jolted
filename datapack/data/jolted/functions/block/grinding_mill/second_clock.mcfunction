execute unless data block ~ ~ ~ {Items:[]} run function jolted:block/grinding_mill/output/blocked/main
execute positioned ~ ~1 ~ if block ~ ~ ~ hopper unless data block ~ ~ ~ {Items:[]} unless entity @e[type=minecraft:item_display,tag=smithed.block,distance=..0.5] run function jolted:block/grinding_mill/siphon/main
