extends Resource

class_name SaveData_CurrentGame

enum Clothing 			{
	NAKED = 10, 
	BUTTPLUG = 11, 
	COW_BIKINI = 12, 
	SLUTTY_OUTFIT = 13, 
	POET_SHIRT = 14, 
	STOLEN_ROBES = 15}
	
enum Eaten_Item 		{
	NOTHING = 100, 
	BIRDSEED = 101, 
	DOGFOOD = 102, 
	BREAD = 103, 
	CHEESE = 104, 
	MILK = 105,
	BUTTER = 106} 
	
enum Puzzle_State	 	{
	NOT_FINISHED  = 200, 
	INCORRECT=  204,  
	CORRECT = 222, }

enum Corruption_Type {
	NONE = 300,
	COW = 301,
	IMP = 302,
	PET = 303,
	APPRENTICE = 304,
	UNDEFINED = 305,
}

@export var current_save_data_dictionary: Dictionary

func _init() -> void:
	current_save_data_dictionary = default_save_data_dictionary.duplicate(true)

func reset_current_game_data(): 
	current_save_data_dictionary = default_save_data_dictionary.duplicate(true)

func getCurrentSaveData():
	return current_save_data_dictionary

var default_save_data_dictionary: Dictionary = {
	"current_room": GlobalVariables.roomsInHouse.SLEEPYROOM,
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
	"bedroom_openedToyChest": false,
	
	"bathroom_furnaceFern": false,
		
	# the pit
	"thePit_warned": false,
	"thePit_hasCompletedStaircase": false,
	"thePit_seenConvo": false,
	
	#lounge
	"lounge_enteredFirstTime": false,
	"lounge_takenWateringCan": false,
	"lounge_fireplaceLit": false,
	"lounge_firstIgnusInteractionDone": false,
	"lounge_knowIgnusTalks": false,
	"lounge_petIgnusOnce": false,
	"lounge_ignusWouldFuck": false,
	
	#frontDoor
	"frontdoor_interactedwithdeadplant": false,
	"frontdoor_cantgetkey": false,
	"frontdoor_diagram": false,
	
	#cellar
	"cellar_eatenIgnusMeat": false,
	"cellar_haveIgnusMeat": false,
	"cellar_eatenBirdSeed": false,	
	"cellar_takenBirdSeed": false,
	
	#garden
	"garden_interactedWithCrowTree": false,
	"garden_fedbird": false,
	"garden_putClitRingOnWrong": false,
	"garden_hasTentacleFood": false,

	#study
	"study_readPotionPoem": false,
	"study_putting_ingred_1_in": false,
	"study_putting_ingred_2_in": false,
	"study_putting_ingred_3_in": false,		
	"study_cauldron_succeeded": false,	
		
	"study_cauldron_state":  Puzzle_State.NOT_FINISHED,   

	#immediate player-state data	
	"knight_clothing": Clothing.NAKED,
	"knight_clothed": false,
	"knight_fed": false,
	"knight_eaten_item": Eaten_Item.NOTHING,
	"stretched": false,
	
	# chores	
	"ignus_fed": false,
	"ignus_fucked_ate_out": false,
	"pit_fed": false,
	"pit_fucked": false,
	"cauldron_finished_bool": false,  ################
	"potions_sorted_bool": false,
	"learned_witchs_name": false,
	

	"potion_state": Puzzle_State.NOT_FINISHED, #not touched, incomplete, completed
	
	### apprentice
	"sword_interracted": false, 
	"armour_interracted": false, 
	"read_notice": false,
	"looked_out_front_windows": false, 
	"realise_shit_is_fucked": false,
	"identified_bandages": false, 
	"crow_key": false, 
	"fire_key": false, 
	"plant_key": false, 
	"all_three_keys": false,
	"apprentice_seed_taken": false,  #"pendant got"

	### other ending measures
	"_imp_dildo_fucked_first": false,
	"_imp_dildo_fucked_second": false,
	"_imp_dildo_fucked_third": false,	
	"corruptionPoints_Cow_": 0,
	"corruptionPoints_Imp_": 0,
	"corruptionPoints_Pet_": 0,	
	
	"finalEnding": null	
}
