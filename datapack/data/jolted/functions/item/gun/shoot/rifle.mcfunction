execute anchored eyes run particle minecraft:campfire_cosy_smoke ^ ^ ^0.5 0.5 0.5 0.5 0.05 6 normal
execute anchored eyes run particle minecraft:lava ^ ^ ^0.5 0.5 0.5 0.5 0.05 3 normal
playsound jolted:item.guns.shoot_rifle player @a[distance=..48] ~ ~ ~ 5
execute store result storage jolted:storage root.temp.macro.recoil.x int 1 run random value -5..5 jolted:rng/gun
execute store result storage jolted:storage root.temp.macro.recoil.y int 1 run random value -5..5 jolted:rng/gun
