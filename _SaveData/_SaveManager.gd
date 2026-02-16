extends Node

var save_data: Save_Data
const SAVE_PATH = "user://Witches_Orders_Savedata.tres"

func _ready():
	# Load existing save or create new one
	load_or_create()

func load_or_create():
	##UNCOMMENT WHEN I WANNA ACTUALLY SAVE STUFF
	#if ResourceLoader.exists(SAVE_PATH):
		#save_data = ResourceLoader.load(SAVE_PATH)
		#print("Save loaded.")
	#else:
		save_data = Save_Data.new()
		save_data.persitstent_EndingRecords_data = AllEndings_SaveData.new()
		save_data.currentGameData = SaveData_CurrentGame.new()		
			
		print(OS.get_user_data_dir())
		save_game()
		print("New save created.")

func save_game():
	ResourceSaver.save(save_data, SAVE_PATH)
	print("Game saved.")

func _input(event: InputEvent) -> void:
	pass
	if event.is_action_pressed("ui_debug2"):
		print("hi!")

func setSaveVariable(variableName: String, variableValue):
	if variableName in save_data.currentGameData:			save_data.currentGameData[variableName] = variableValue
	elif variableName in save_data.persitstent_EndingRecords_data: 	save_data.persitstent_EndingRecords_data[variableName] = variableValue
	else: Error.ERR_DOES_NOT_EXIST
	
func getSaveVariable(variableName: String):
	if variableName in save_data.currentGameData:			return save_data.currentGameData[variableName]
	elif variableName in save_data.persitstent_EndingRecords_data:	return save_data.persitstent_EndingRecords_data[variableName]
	else: Error.ERR_DOES_NOT_EXIST	
