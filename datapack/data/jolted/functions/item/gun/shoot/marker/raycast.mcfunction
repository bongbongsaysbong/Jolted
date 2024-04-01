tp @s ^ ^ ^0.2
scoreboard players remove @s jolted.dummy 1
particle mycelium ~ ~ ~ 0 0 0 0 1 force

execute as @e[predicate=jolted:entity/can_be_shot,dx=0,tag=!jolted.damager,tag=!jolted.took_bullet_damage,sort=nearest,limit=1] at @s run function jolted:item/gun/shoot/marker/as_entity
execute if block ^ ^ ^1 #nucleus:glass/all unless block ^ ^ ^1 minecraft:tinted_glass run setblock ^ ^ ^1 air destroy
execute if score @s jolted.dummy matches 1.. unless score #pierced_target jolted.dummy matches 1 at @s if block ^ ^ ^0.2 #nucleus:passthrough run function jolted:item/gun/shoot/marker/raycast
execute unless score @s jolted.dummy matches 1.. run kill @s
execute at @s unless block ^ ^ ^0.2 #nucleus:passthrough positioned ^ ^ ^0.2 run function jolted:item/gun/shoot/marker/hit_wall
execute if score #pierced_target jolted.dummy matches 1 run kill @s
