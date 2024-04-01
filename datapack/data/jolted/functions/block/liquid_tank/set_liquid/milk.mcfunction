data merge entity @s {item:{tag:{jolted:{custom_model_data:[8362013,8362014,8362015,8362016]}}}}
scoreboard players set @s jolted.dummy 3

execute if data storage jolted:storage root.temp{result:"fill"} run playsound jolted:block.liquid_tank.milk.fill block @a[distance=..16]
execute if data storage jolted:storage root.temp{result:"empty"} run playsound jolted:block.liquid_tank.milk.empty block @a[distance=..16]
