scoreboard players remove @s jolted.dummy2 1

execute unless data block ~ ~ ~ Items[{Slot:4b}] as @a[distance=..8] run function nucleus:item/clear_illegal_item
item replace block ~ ~ ~ container.4 with barrier{CustomModelData:8362001,nucleus:{illegal_item:1b},jolted:{alloy_forge_timer:1b},display:{Name:'{"translate":"ui.jolted.alloy_forge.timer","color":"white"}'}}

scoreboard players operation #charge_timer jolted.dummy = @s jolted.dummy2
scoreboard players operation #charge_timer jolted.dummy *= #10 nucleus.dummy
scoreboard players operation #charge_timer jolted.dummy /= #125 nucleus.dummy
execute store result block ~ ~ ~ Items[{Slot:4b}].tag.CustomModelData int 1 run scoreboard players add #charge_timer jolted.dummy 8362001

execute if predicate nucleus:chance/0.3 positioned ^ ^ ^0.5 run particle dust_color_transition 0.808 0.043 0.031 1 0.569 0.000 0.000 ~ ~ ~ 0.25 0.25 0.25 1 2 normal
