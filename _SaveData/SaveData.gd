extends Resource

class_name Save_Data

func _init() -> void:
	currentGameData 		= SaveData_CurrentGame.new()
	multiRunSaveData 		= SaveData_EndingTracker.new()

### SINGLE SAVE DATA ###
@export var currentGameData: 			SaveData_CurrentGame

#### PERSISTENT SAVE DATA ###
@export var multiRunSaveData: 			SaveData_EndingTracker
