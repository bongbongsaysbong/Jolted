execute store result score #sendCommandFeedback jolted.dummy run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
execute if score #sendCommandFeedback jolted.dummy matches 1.. run schedule function jolted:entity/player/gamerules/no_feedback/scheduled 1t
