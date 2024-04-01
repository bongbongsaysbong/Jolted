data modify entity @s item.tag.CustomModelData set value 8362004
scoreboard players reset @s jolted.dummy
scoreboard players reset @s jolted.dummy2

execute if score #liquid_type jolted.dummy matches 1 run playsound jolted:block.liquid_tank.water.empty block @a[distance=..16]
execute if score #liquid_type jolted.dummy matches 2 run playsound jolted:block.liquid_tank.lava.empty block @a[distance=..16]
execute if score #liquid_type jolted.dummy matches 3 run playsound jolted:block.liquid_tank.milk.empty block @a[distance=..16]
execute if score #liquid_type jolted.dummy matches 4 run playsound jolted:block.liquid_tank.honey.empty block @a[distance=..16]
execute if score #liquid_type jolted.dummy matches 5 run playsound jolted:block.liquid_tank.corpse_sap.empty block @a[distance=..16]
execute if score #liquid_type jolted.dummy matches 6 run playsound jolted:block.liquid_tank.blood.empty block @a[distance=..16]
