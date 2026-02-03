extends Resource

class_name SaveData_Knight

enum Clothing 		{NAKED, BUTTPLUG, COW_BIKINI, SLUTTY_OUTFIT, POET_SHIRT, STOLEN_ROBES}
enum Eaten_Item 	{BIRDSEED, DOGFOOD, BREAD, CORRUPTED_ITEM} #only need to track the ones that make a difference gamewise


#immediate player-state data
@export var knight_clothing: Clothing
@export var knight_fed: bool 
@export var knight_eaten_item = Eaten_Item 
@export var stretched: bool
@export var plant_guide_read: bool
