playsound jolted:item.rose_gold_tools.low_durability player @s
data modify storage nucleus:storage root.temp.actionbar set value {freeze:45,priority:1,json:'{"translate":"ui.jolted.low_durability_warning","color":"red"}'}
function nucleus:entity/player/actionbar/message
