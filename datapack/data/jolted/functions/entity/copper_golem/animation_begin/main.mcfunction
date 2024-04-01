tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]
execute store result score #taunt jolted.dummy run random value 1..4 jolted:rng/1_4

execute if score #taunt jolted.dummy matches 1 run function jolted:entity/copper_golem/animation_begin/spin
execute if score #taunt jolted.dummy matches 2 run function jolted:entity/copper_golem/animation_begin/intimidate
execute if score #taunt jolted.dummy matches 3 run function jolted:entity/copper_golem/animation_begin/dance
execute if score #taunt jolted.dummy matches 4 run function jolted:entity/copper_golem/animation_begin/repair

attribute @s minecraft:generic.movement_speed modifier add 8-3-6-2-2012 jolted.movement_speed -100 add
data modify entity @s ArmorItems[3].tag.nucleus.damage_data.moving set from entity @s ArmorItems[3].tag.nucleus.damage_data.idle
function nucleus:entity/technical/animate

scoreboard players set @s jolted.dummy -10
playsound jolted:entity.copper_golem.taunt neutral @a[distance=..16]
