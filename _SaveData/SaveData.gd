extends Resource

class_name Save_Data

func _init() -> void:
	currentGameData = SaveData_CurrentGame.new()
	persitstent_EndingRecords_data = AllEndings_SaveData.new()

### SINGLE SAVE DATA ###
@export var currentGameData: 			SaveData_CurrentGame

#### PERSISTENT SAVE DATA ###
@export var persitstent_EndingRecords_data: AllEndings_SaveData
