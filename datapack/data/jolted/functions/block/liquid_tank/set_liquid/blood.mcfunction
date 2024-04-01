data merge entity @s {item:{tag:{jolted:{custom_model_data:[8362025,8362026,8362027,8362028]}}}}
scoreboard players set @s jolted.dummy 6

execute if data storage jolted:storage root.temp{result:"fill"} run playsound jolted:block.liquid_tank.blood.fill block @a[distance=..16]
execute if data storage jolted:storage root.temp{result:"empty"} run playsound jolted:block.liquid_tank.blood.empty block @a[distance=..16]
