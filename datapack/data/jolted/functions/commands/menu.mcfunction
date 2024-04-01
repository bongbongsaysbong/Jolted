tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"\ua000","font":"jolted:tooltip","color":"white"}," ",{"translate":"pack.jolted","bold":true,"color":"#ffae17"},{"text":" >> ","color":"#d4c6ae"},{"translate":"settings.jolted.title","color":"#faef8c"},"\n",{"translate":"menu.nucleus.return","italic": true,"color":"#d4c6ae","clickEvent":{"action":"run_command","value":"/function nucleus:menu"}},"\n"]

tellraw @s [{"text":">> ","color":"#d4c6ae"},{"translate":"settings.jolted.items","color":"#faef8c","clickEvent":{"action":"suggest_command","value":"/loot give @s loot jolted:items/"},"hoverEvent":{"action":"show_text","value":"/loot give @s loot jolted:items/"}}]
tellraw @s [{"text":">> ","color":"#d4c6ae"},{"translate":"settings.jolted.summon","color":"#faef8c","clickEvent":{"action":"suggest_command","value":"/function jolted:commands/summon/"},"hoverEvent":{"action":"show_text","value":"/function jolted:commands/summon/"}}]

function nucleus:entity/player/commands/no_feedback/main
playsound minecraft:block.wooden_button.click_on block @s
