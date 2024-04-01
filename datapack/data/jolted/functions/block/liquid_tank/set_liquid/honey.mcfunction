data merge entity @s {item:{tag:{jolted:{custom_model_data:[8362017,8362018,8362019,8362020]}}}}
scoreboard players set @s jolted.dummy 4

execute if data storage jolted:storage root.temp{result:"fill"} run playsound jolted:block.liquid_tank.honey.fill block @a[distance=..16]
execute if data storage jolted:storage root.temp{result:"empty"} run playsound jolted:block.liquid_tank.honey.empty block @a[distance=..16]
