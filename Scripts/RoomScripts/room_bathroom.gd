extends class_defaultRoom

class_name bathroomScript

func _ready():
	super._ready()
	dialogueDictionary = bathroomConvos.convos_Dict

func _re_enable_pausing(): 	
	super._re_enable_pausing()
	if SaveManager.getSaveVariable("knight_clothing") == SaveData_CurrentGame.Clothing.POET_SHIRT:
		$RoomItems/Shirt.visible = false
