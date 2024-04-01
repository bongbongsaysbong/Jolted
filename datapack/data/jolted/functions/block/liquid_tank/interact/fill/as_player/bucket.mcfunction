item modify entity @s[gamemode=!creative] weapon.mainhand jolted:reduce_count/1

execute if predicate nucleus:entity/full_inventory if data entity @s SelectedItem run loot spawn ~ ~ ~ loot jolted:technical/items/bucket
execute unless predicate nucleus:entity/full_inventory if data entity @s SelectedItem run loot give @s loot jolted:technical/items/bucket
execute unless data entity @s SelectedItem run loot replace entity @s weapon.mainhand loot jolted:technical/items/bucket
