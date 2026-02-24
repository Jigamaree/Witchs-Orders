extends Resource

class_name SaveData_CurrentGame

enum Clothing 			{
	NAKED = 0, 
	BUTTPLUG = 1, 
	COW_BIKINI = 2, 
	SLUTTY_OUTFIT = 3, 
	POET_SHIRT = 4, 
	STOLEN_ROBES = 5}
	
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

var current_save_data_dictionary: Dictionary

func _init() -> void:
	current_save_data_dictionary = default_save_data_dictionary.duplicate(true)

func reset_current_game_data(): 
	current_save_data_dictionary = default_save_data_dictionary.duplicate(true)
	
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
	"thePit_warned": false,
	"thePit_hasCompletedStaircase": false,
	"thePit_seenConvo": false,
	
	#lounge
	"lounge_enteredFirstTime": false,
	"lounge_takenWateringCan": false,
	"lounge_fireplaceLit": false,
	
	#frontDoor
	"frontdoor_interactedwithdeadplant": false,
	
	#cellar
	"cellar_eatenIgnusMeat": false,
	"cellar_haveIgnusMeat": false,
	"cellar_eatenBirdSeed": false,	
	"cellar_takenBirdSeed": false,
	
	#garden
	"garden_interactedWithCrowTree": false,
	"garden_putOnNippleClamps": false,
	"garden_putOnClitRing": false,
	"garden_hasTentacleFood": false,

	#study
	"study_putting_ingred_1_in": false,
	"study_putting_ingred_2_in": false,
	"study_putting_ingred_3_in": false,		
	"study_cauldron_succeeded": false,		 #############
	"study_cauldron_state":  Puzzle_State.NOT_FINISHED,   ###############

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
