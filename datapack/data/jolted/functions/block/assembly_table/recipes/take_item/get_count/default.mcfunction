$execute store result score #needed_count jolted.dummy run data get storage jolted:storage root.temp.recipe_output[{id:"$(item)"}].Count
$execute store result score #has_count jolted.dummy run clear @s $(item) 0
execute unless score #has_count jolted.dummy >= #needed_count jolted.dummy run scoreboard players set #invalid_count jolted.dummy 1
