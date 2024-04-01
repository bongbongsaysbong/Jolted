scoreboard players add @s jolted.dummy 1
execute if score @s jolted.dummy matches 15.. if predicate nucleus:chance/0.1 run function jolted:entity/copper_golem/animation_begin/main
