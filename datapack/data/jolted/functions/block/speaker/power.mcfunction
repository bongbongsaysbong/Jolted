tag @s add jolted.speaker.powered

tag @a[distance=..16] add jolted.scheduled.stop_wrecker_sound
schedule function jolted:block/wrecker/scheduled/main 5t append

execute if data entity @s item.tag.jolted.text run tellraw @a[distance=..32] [{"text":"\ua000","font":"jolted:speaker","hoverEvent":{"action":"show_text","contents":[{"translate":"ui.jolted.speaker_indicator"}]}}," ",{"font":"minecraft:default","nbt":"item.tag.display.Name","entity":"@s","interpret":true}]
playsound jolted:block.speaker.activate block @a[distance=..16] ~ ~ ~ 0.5
