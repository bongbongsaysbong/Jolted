setblock ~ ~ ~ air
setblock ~ ~ ~ dropper[facing=down]{CustomName:'{"font":"jolted:technical","translate":"block.jolted.wrecker.name"}',Lock:"§wrecker\\uF001",TransferCooldown:9999}

execute unless score @s nucleus.sneak_time matches 1.. run function jolted:block/wrecker/place/not_sneaking
execute if score @s nucleus.sneak_time matches 1.. run function jolted:block/wrecker/place/sneaking

function nucleus:block/hopper_updating/fill/main
