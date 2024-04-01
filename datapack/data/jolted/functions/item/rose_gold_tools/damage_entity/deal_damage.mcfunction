execute if score #dealt_damage jolted.dummy matches ..1 run damage @s 1 jolted:rose_gold_tools by @p[tag=jolted.damager]
execute if score #dealt_damage jolted.dummy matches 2 run damage @s 2 jolted:rose_gold_tools by @p[tag=jolted.damager]
execute if score #dealt_damage jolted.dummy matches 3 run damage @s 3 jolted:rose_gold_tools by @p[tag=jolted.damager]
execute if score #dealt_damage jolted.dummy matches 4 run damage @s 4 jolted:rose_gold_tools by @p[tag=jolted.damager]
execute if score #dealt_damage jolted.dummy matches 5 run damage @s 5 jolted:rose_gold_tools by @p[tag=jolted.damager]
execute if score #dealt_damage jolted.dummy matches 6 run damage @s 6 jolted:rose_gold_tools by @p[tag=jolted.damager]
execute if score #dealt_damage jolted.dummy matches 7 run damage @s 7 jolted:rose_gold_tools by @p[tag=jolted.damager]
execute if score #dealt_damage jolted.dummy matches 8.. run damage @s 8 jolted:rose_gold_tools by @p[tag=jolted.damager]

particle minecraft:wax_off ~ ~1 ~ 0.5 0.75 0.5 0.1 5 force
playsound jolted:item.rose_gold_tools.hit player @a[distance=..16]
