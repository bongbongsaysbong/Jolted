item modify entity @s weapon.mainhand jolted:gun/bullet_count
data modify storage jolted:storage root.temp.bullet_lore set from entity @s SelectedItem.tag.display.Lore[0]
execute unless data storage jolted:storage root.temp.item.tag.jolted{id:"anirrum_pistol"} run data modify storage jolted:storage root.temp.item.tag.display.Lore[7] set from storage jolted:storage root.temp.bullet_lore
execute if data storage jolted:storage root.temp.item.tag.jolted{id:"anirrum_pistol"} run data modify storage jolted:storage root.temp.item.tag.display.Lore[6] set from storage jolted:storage root.temp.bullet_lore

item modify entity @s weapon.mainhand jolted:copy_nbt
