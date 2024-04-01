scoreboard players remove @s jolted.dummy2 2
execute if score @s jolted.dummy2 matches ..1 run scoreboard players set @s jolted.dummy2 0
execute if score @s jolted.dummy2 matches 0..1 run function jolted:entity/copper_golem/oxidation/clear
execute if score @s jolted.dummy2 matches 2..3 run function jolted:entity/copper_golem/oxidation/exposed
execute if score @s jolted.dummy2 matches 4..5 run function jolted:entity/copper_golem/animation_begin/unoxidize
playsound minecraft:item.axe.scrape neutral @a[distance=..16]
particle scrape ~ ~0.65 ~ 0.25 0.65 0.25 1 10 force
data modify storage jolted:storage root.temp.success set value 1b
