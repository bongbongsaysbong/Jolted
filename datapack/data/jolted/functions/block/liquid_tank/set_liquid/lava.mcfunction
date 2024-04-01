data merge entity @s {item:{tag:{jolted:{custom_model_data:[8362009,8362010,8362011,8362012]}}}}
scoreboard players set @s jolted.dummy 2

execute if data storage jolted:storage root.temp{result:"fill"} run playsound jolted:block.liquid_tank.lava.fill block @a[distance=..16]
execute if data storage jolted:storage root.temp{result:"empty"} run playsound jolted:block.liquid_tank.lava.empty block @a[distance=..16]
