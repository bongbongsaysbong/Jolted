tag @s add jolted.copper_golem.waxed
playsound minecraft:item.honeycomb.wax_on neutral @a[distance=..16]
particle wax_on ~ ~0.65 ~ 0.25 0.65 0.25 1 10 force
data modify storage jolted:storage root.temp.success set value 1b
