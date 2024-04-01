$execute store result score #needed_count jolted.dummy run data get storage jolted:storage root.temp.recipe_output[{tag:{jolted:{id:"$(item)"}}}].Count
$execute store result score #has_count jolted.dummy run clear @s #jolted:custom_item_bases{jolted:{id:"$(item)"}} 0
execute unless score #has_count jolted.dummy >= #needed_count jolted.dummy run scoreboard players set #invalid_count jolted.dummy 1
