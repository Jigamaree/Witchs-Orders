extends Resource

class_name SaveData_EndingTracker

var tracked_ending_data_dictionary: Dictionary

enum EndingEnum 			{
	CAPTURED = 1001, 
	BETTER_NOT_TO_THINK = 1002, 
	PRIZED_COW = 1003, 
	DESPERATE_MILKINGS = 1004, 
	KNOW_YOUR_PLACE = 1005, 
	MARKED_HEELED = 1006,
	PRETTY_PET = 1007,
	IGNUS_BITCH = 1008,
	TENTACLE_BAIT = 1009,
	TRUE_END = 1010,
	FAILED_TRUE_END = 1011,
	DID_LITERALLY_NOTHING = 1012}

func _init() -> void:
	tracked_ending_data_dictionary = default_ending_data_dictionary.duplicate(true)

func reset_endings_data(): tracked_ending_data_dictionary = default_ending_data_dictionary.duplicate(true)

var default_ending_data_dictionary: Dictionary = {
	# Special Endings: Triggered when at least 1 key has been aquirred
	"specialEnding_trueEnd": 		false,	# True End - Apprentice
	"specialEnding_failed": 		false,	# Bimbo End - failed apprentice
	"specialEnding_didNothing": 	false,	# Bimbo End - did like absolutely no chores
	
	# Soft Endings - triggered once chores are complete
	"softEnding_bimbo": 			false, 	# Bimbo End - 	"Better Not To Think"
	"softEnding_cow": 				false,	# Soft Cow End - "Prized Cow"
	"softEnding_demon": 			false,	# Soft Enthralled End - "A Steady Hand"
	"softEnding_pet": 				false, 	# Soft Pet End - "A Pretty Pet"
	
	# Hard Endings - triggered by mid-game actions
	"hardEnding_bad": 				false,	# Bad End - "Captured and Forgotten" 
	"hardEnding_cow":				false,	# Bad End - "Desperate Milkings"
	"hardEnding_demon":				false, 	# Bad End - "Know Your Place"
	"hardEnding_pet": 				false, 	# Bad End - "Ignus' Bitch"
	"hardEnding_tentacleBait":		false,	# Bad End - "Tentacle Bait"
}
