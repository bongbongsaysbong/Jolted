data merge entity @s {item:{tag:{jolted:{custom_model_data:[8362021,8362022,8362023,8362024]}}}}
scoreboard players set @s jolted.dummy 5

execute if data storage jolted:storage root.temp{result:"fill"} run playsound jolted:block.liquid_tank.corpse_sap.fill block @a[distance=..16]
execute if data storage jolted:storage root.temp{result:"empty"} run playsound jolted:block.liquid_tank.corpse_sap.empty block @a[distance=..16]
