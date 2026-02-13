extends Resource

class_name SaveData_CurrentGame

enum Clothing 		{NAKED, BUTTPLUG, COW_BIKINI, SLUTTY_OUTFIT, POET_SHIRT, STOLEN_ROBES}
#only need to track the ones that make a difference gamewise
enum Eaten_Item 	{BIRDSEED, DOGFOOD, BREAD, CORRUPTED_ITEM} 

#immediate player-state data
@export var knight_clothing: Clothing
@export var knight_fed: bool 
@export var knight_eaten_item = Eaten_Item 
@export var stretched: bool
@export var plant_guide_read: bool

#these are room specific, but i'm keeping them here for now
@export var bedroom_waterDrunk: 	bool
@export var bedroom_doorLocked: 	bool = true

### chores
@export var ignus_fed: bool
@export var ignus_fucked: bool
@export var pit_fed: bool
@export var pit_fucked: bool
@export var cauldron_state =  null #not finished, incorrect, correct
@export var potion_state = null #not touched, incomplete, completed

### apprentice
@export var sword_interracted: bool 
@export var armour_interracted: bool
@export var looked_out_front_windows: bool
@export var identified_bandages: bool
@export var crow_key: bool
@export var fire_key: bool
@export var plant_key: bool
@export var apprentice_seed_taken: bool #"pendant got"

### other ending measures
@export var dildo_usage: int
@export var corruptionPoints_Cow: int
@export var corruptionPoints_Demon: int
@export var corruptionPoints_Pet: int
