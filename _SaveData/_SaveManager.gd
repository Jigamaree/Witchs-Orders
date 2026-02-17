extends Node

var save_data: Save_Data
const SAVE_PATH = "user://Witches_Orders_Savedata.tres"

func _ready():
	load_or_create()

func load_or_create():
	##UNCOMMENT WHEN I WANNA ACTUALLY SAVE STUFF
	#if ResourceLoader.exists(SAVE_PATH):
		#save_data = ResourceLoader.load(SAVE_PATH)
		#print("Save loaded.")
	#else:
		save_data = Save_Data.new()
		save_data.currentGameData = SaveData_CurrentGame.new()
		save_data.multiRunSaveData = SaveData_EndingTracker.new()		
			
		print("user dict: " + OS.get_user_data_dir())
		save_game()
		print("New save created.")

func save_game():
	ResourceSaver.save(save_data, SAVE_PATH)
	print("Game saved.")

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_debug2"):
		pass

func reset_current_run():
	save_data.currentGameData.reset_current_game_data()
	NavMan.changed_scene_before = false
	
func reset_all_data():
	save_data.currentGameData.reset_current_game_data()
	save_data.multiRunSaveData.reset_endings_data()
	NavMan.changed_scene_before = false	
	save_game()
	
func endingMenuUnlock():
	if save_data.multiRunSaveData.tracked_ending_data_dictionary:
		for key in save_data.multiRunSaveData.tracked_ending_data_dictionary:
			var dict = save_data.multiRunSaveData.tracked_ending_data_dictionary
			var value = dict[key]
			if value == true:
				return true
	return false
		
func setSaveVariable(variableName: String, variableValue):
	#current game data
	if variableName in save_data.currentGameData.current_save_data_dictionary:
		save_data.currentGameData.current_save_data_dictionary[variableName] 			= variableValue
	#ending tracking data
	if variableName in save_data.multiRunSaveData.tracked_ending_data_dictionary:
		save_data.multiRunSaveData.tracked_ending_data_dictionary[variableName]			= variableValue
	else: push_error(Error.ERR_DOES_NOT_EXIST)
	save_game()
	
func getSaveVariable(variableName: String):
	#current game data
	if variableName in save_data.currentGameData.current_save_data_dictionary:
		return save_data.currentGameData.current_save_data_dictionary[variableName]
	#ending tracking data	
	elif variableName in save_data.multiRunSaveData.tracked_ending_data_dictionary:		
		return save_data.multiRunEndingSaveData.tracked_ending_data_dictionary[variableName]
	else: push_error(Error.ERR_DOES_NOT_EXIST)
