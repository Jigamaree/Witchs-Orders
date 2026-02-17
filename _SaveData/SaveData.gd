extends Resource

class_name Save_Data

func _init() -> void:
	currentGameData = SaveData_CurrentGame.new()
	#add all endings save here

### SINGLE SAVE DATA ###
@export var currentGameData: 			SaveData_CurrentGame

#### PERSISTENT SAVE DATA ###
### TODO: ADD
