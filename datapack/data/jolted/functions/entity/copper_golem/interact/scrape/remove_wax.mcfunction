tag @s remove jolted.copper_golem.waxed
playsound minecraft:item.axe.wax_off neutral @a[distance=..16]
particle wax_off ~ ~0.65 ~ 0.25 0.65 0.25 1 10 force
data modify storage jolted:storage root.temp.success set value 1b
