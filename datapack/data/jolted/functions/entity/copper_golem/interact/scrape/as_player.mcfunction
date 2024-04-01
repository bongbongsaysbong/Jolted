data modify storage jolted:storage root.temp.item set from entity @s SelectedItem

execute unless data storage jolted:storage root.temp.item.tag.jolted{id:"rose_gold_axe"} run function jolted:entity/copper_golem/interact/scrape/item/main
execute if data storage jolted:storage root.temp.item.tag.jolted{id:"rose_gold_axe"} run function nucleus:item/durability/damage_generic_amount/mainhand_1
