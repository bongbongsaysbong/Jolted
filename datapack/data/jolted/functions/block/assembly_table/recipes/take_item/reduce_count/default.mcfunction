$data modify storage jolted:storage root.temp.taken_output.id set from storage jolted:storage root.temp.recipe_output[{id:"$(item)"}].id
$data modify storage jolted:storage root.temp.taken_output.count set from storage jolted:storage root.temp.recipe_output[{id:"$(item)"}].Count
function jolted:block/assembly_table/recipes/take_item/reduce_count/default_cleared with storage jolted:storage root.temp.taken_output
