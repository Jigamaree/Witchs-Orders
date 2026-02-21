extends Resource

class_name SaveData_CurrentGame

enum Clothing 			{NAKED, BUTTPLUG, COW_BIKINI, SLUTTY_OUTFIT, POET_SHIRT, STOLEN_ROBES}
#only need to track the ones that make a difference gamewise
enum Eaten_Item 		{NOTHING, BIRDSEED, DOGFOOD, BREAD, CORRUPTED_ITEM} 
enum Puzzle_State	 	{NOT_FINISHED, INCORRECT, CORRECT}

var current_save_data_dictionary: Dictionary

func _init() -> void:
	current_save_data_dictionary = default_save_data_dictionary

func reset_current_game_data(): current_save_data_dictionary = default_save_data_dictionary
	
var default_save_data_dictionary: Dictionary = {
	#tracking stuff
	"plant_guide_read": false,	
	"started_game": false,
	
	# bedroom	
	"bedroom_prologuePlayed": false,	
	"bedroom_noteRead": false,	
	"bedroom_waterDrunk": false,
	"bedroom_doorLocked": true,
	"bedroom_testedTheDoor": false,
	"bedroom_testedTheDoorTwice": false,
	
	"bathroom_furnaceFern": false,
	
	# the pit
	"thePit_hasTentacleFood": false,
	"thePit_hasCompletedStaircase": false,
	
	#lounge
	"lounge_enteredFirstTime": false,

	#immediate player-state data	
	"knight_clothing": Clothing.NAKED,
	"knight_clothed": false,
	"knight_fed": false,
	"knight_eaten_item": Eaten_Item.NOTHING,
	"stretched": false,
	
	# chores	
	"ignus_fed": false,
	"ignus_fucked": false,
	"pit_fed": false,
	"pit_fucked": false,
	"cauldron_state":  Puzzle_State.NOT_FINISHED,
	"potion_state": Puzzle_State.NOT_FINISHED, #not touched, incomplete, completed
	
	### apprentice
	"sword_interracted": false, 
	"armour_interracted": false, 
	"looked_out_front_windows": false, 
	"identified_bandages": false, 
	"crow_key": false, 
	"fire_key": false, 
	"plant_key": false, 
	"apprentice_seed_taken": false,  #"pendant got"

	### other ending measures
	"imp_dildo_fucked_first": false,
	"imp_dildo_fucked_second": false,
	"imp_dildo_fucked_third": false,	
	"corruptionPoints_Cow": 0,
	"corruptionPoints_Imp": 0,
	"corruptionPoints_Pet": 0,	
	
	"finalEnding": null	
}
