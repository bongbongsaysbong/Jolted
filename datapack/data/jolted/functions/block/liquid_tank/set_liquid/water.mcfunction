data merge entity @s {item:{tag:{jolted:{custom_model_data:[8362005,8362006,8362007,8362008]}}}}
scoreboard players set @s jolted.dummy 1

execute if data storage jolted:storage root.temp{result:"fill"} run playsound jolted:block.liquid_tank.water.fill block @a[distance=..16]
execute if data storage jolted:storage root.temp{result:"empty"} run playsound jolted:block.liquid_tank.water.empty block @a[distance=..16]
