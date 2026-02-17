extends Node

var save_data: Save_Data
const SAVE_PATH = "user://Witches_Orders_Savedata.tres"

func _ready():
	
	print("is this being called???")
	# Load existing save or create new one
	load_or_create()

func load_or_create():
	##UNCOMMENT WHEN I WANNA ACTUALLY SAVE STUFF
	#if ResourceLoader.exists(SAVE_PATH):
		#save_data = ResourceLoader.load(SAVE_PATH)
		#print("Save loaded.")
	#else:
		save_data = Save_Data.new()
		save_data.currentGameData = SaveData_CurrentGame.new()		
			
		print("user dict: " + OS.get_user_data_dir())
		save_game()
		print("New save created.")

func save_game():
	ResourceSaver.save(save_data, SAVE_PATH)
	print("Game saved.")

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_debug2"):
		pass

func setSaveVariable(variableName: String, variableValue):
	if variableName in save_data.currentGameData.current_save_data_dictionary:			save_data.currentGameData.current_save_data_dictionary[variableName] = variableValue
	#check for endings save
	else: Error.ERR_DOES_NOT_EXIST
	
func getSaveVariable(variableName: String):
	if variableName in save_data.currentGameData.current_save_data_dictionary:			return save_data.currentGameData.current_save_data_dictionary[variableName]
	#get ending save
	else: Error.ERR_DOES_NOT_EXIST	
