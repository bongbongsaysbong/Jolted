$data modify storage jolted:storage root.temp.taken_output.id set value "$(item)"
$execute store result storage jolted:storage root.temp.taken_output.count int 1 run data get storage jolted:storage root.temp.recipe_output[{tag:{jolted:{id:"$(item)"}}}].Count
function jolted:block/assembly_table/recipes/take_item/reduce_count/jolted_cleared with storage jolted:storage root.temp.taken_output
