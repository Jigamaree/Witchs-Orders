extends Resource

class_name SaveData_CurrentGame

enum Clothing 			{NAKED, BUTTPLUG, COW_BIKINI, SLUTTY_OUTFIT, POET_SHIRT, STOLEN_ROBES}
#only need to track the ones that make a difference gamewise
enum Eaten_Item 		{NOTHING, BIRDSEED, DOGFOOD, BREAD, CORRUPTED_ITEM} 
enum Puzzle_State	 	{NOT_FINISHED, INCORRECT, CORRECT}

func _init() -> void:
	current_save_data_dictionary = default_save_data_dictionary
	

var default_save_data_dictionary: Dictionary = {
	# bedroom	
	"bedroom_waterDrunk": false,
	"bedroom_doorLocked": true,
	
	# the pit
	"thePit_hasTentacleFood": false,
	"thePit_hasCompletedStaircase": false,
	
	#lounge
	"lounge_enteredFirstTime": false,

	#immediate player-state data	
	"knight_clothing": Clothing.NAKED,
	"knight_fed": false,
	"knight_eaten_item": Eaten_Item.NOTHING,
	"stretched": false,
	"plant_guide_read": false,
	
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
	"dildo_usage": 0,
	"corruptionPoints_Cow": 0,
	"corruptionPoints_Demon": 0,
	"corruptionPoints_Pet": 0,	
	
	"finalEnding": null	
}

var current_save_data_dictionary: Dictionary

	
## bedroom
#@export var bedroom_waterDrunk: 	bool
#@export var bedroom_doorLocked: 	bool = true
#
## the pit
#@export var thePit_hasTentacleFood:			bool = false
#@export var thePit_hasCompletedStaircase:	bool = false
#
##immediate player-state data
#@export var knight_clothing: Clothing
#@export var knight_fed: bool 
#@export var knight_eaten_item = Eaten_Item 
#@export var stretched: bool
#@export var plant_guide_read: bool
#
#### chores
#@export var ignus_fed: bool
#@export var ignus_fucked: bool
#@export var pit_fed: bool
#@export var pit_fucked: bool
#@export var cauldron_state =  null #not finished, incorrect, correct
#@export var potion_state = null #not touched, incomplete, completed

#### apprentice
#@export var sword_interracted: bool 
#@export var armour_interracted: bool
#@export var looked_out_front_windows: bool
#@export var identified_bandages: bool
#@export var crow_key: bool
#@export var fire_key: bool
#@export var plant_key: bool
#@export var apprentice_seed_taken: bool #"pendant got"
#
#### other ending measures
#@export var dildo_usage: int
#@export var corruptionPoints_Cow: int
#@export var corruptionPoints_Demon: int
#@export var corruptionPoints_Pet: int
