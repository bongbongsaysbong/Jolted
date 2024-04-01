$data modify storage jolted:storage root.temp.invalid.item set from block ~ ~ ~ Items[{Slot:$(slot)b}]
$data remove block ~ ~ ~ Items[{Slot:$(slot)b}]
execute positioned ~ ~1 ~ run function nucleus:commands/macros/spawn_item with storage jolted:storage root.temp.invalid
