extends Resource

class_name AllEndings_SaveData

### MULTI-RUN DATA ###
# Endings Unlocked
@export var endings: Dictionary = {
	# Special Endings: Triggered when at least 1 key has been aquirred
	"specialEnding_trueEnd": 	false,	# True End - Apprentice
	"specialEnding_failed": 	false,	# Bimbo End - failed apprentice
	
	# Soft Endings - triggered once chores are complete
	"softEnding_bimbo": 	false, 	# Bimbo End - 	"Better Not To Think"
	"softEnding_cow": 			false,	# Soft Cow End - "Prized Cow"
	"softEnding_demon": 		false,	# Soft Enthralled End - "A Steady Hand"
	"softEnding_pet": 			false, 	# Soft Pet End - "A Pretty Pet"
	
	# Hard Endings - triggered by mid-game actions
	"hardEnding_bad": 			false,	# Bad End - "Captured and Forgotten" 
	"hardEnding_cow":			false,	# Bad End - "Desperate Milkings"
	"hardEnding_demon":			false, 	# Bad End - "Know Your Place"
	"hardEnding_pet": 			false, 	# Bad End - "Ignus' Bitch"
	"hardEnding_tentacles":		false,	# Bad End - "Tentacle Bait"
}
