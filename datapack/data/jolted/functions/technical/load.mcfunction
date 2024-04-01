# Gamerules
gamerule commandBlockOutput false
gamerule logAdminCommands false

# Objectives
scoreboard objectives add jolted.dummy dummy
scoreboard objectives add jolted.dummy2 dummy

scoreboard objectives add jolted.rose_gold_delay dummy
scoreboard objectives add jolted.golden_sword minecraft.used:minecraft.golden_sword
scoreboard objectives add jolted.golden_pickaxe minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add jolted.golden_axe minecraft.used:minecraft.golden_axe
scoreboard objectives add jolted.golden_shovel minecraft.used:minecraft.golden_shovel
scoreboard objectives add jolted.golden_hoe minecraft.used:minecraft.golden_hoe

scoreboard objectives add jolted.gun_charge dummy
scoreboard objectives add jolted.gun_charge.segment dummy
scoreboard objectives add jolted.gun_slot dummy

# Initialise
scoreboard players set #jolted.installed manic.dummy 1
execute unless data storage jolted:storage root.version{major:0,release:1,semiver:0} run function jolted:technical/first_load
