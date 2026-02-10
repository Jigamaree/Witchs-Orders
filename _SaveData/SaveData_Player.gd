extends Resource

class_name SaveData_Knight

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
