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
	print("Setting save variable for: " + variableName)
	#current game data
	
	if variableName.contains("corruptionPoints"):
		increasePoints(variableName, variableValue)
		save_game()
		return
	
	if variableName in save_data.currentGameData.current_save_data_dictionary:
		save_data.currentGameData.current_save_data_dictionary[variableName] 			= variableValue
	#ending tracking data
	elif variableName in save_data.multiRunSaveData.tracked_ending_data_dictionary:
		save_data.multiRunSaveData.tracked_ending_data_dictionary[variableName]			= variableValue
	else: push_error(Error.ERR_DOES_NOT_EXIST)
	
	## then we check if we need to set any related values
	
	if variableName == "study_cauldron_state" and variableValue == SaveData_CurrentGame.Puzzle_State.INCORRECT:
		setSaveVariable("cauldron_finished_bool", true)
		setSaveVariable("study_cauldron_succeeded", false)				
	elif variableName == "study_cauldron_state" and variableValue == SaveData_CurrentGame.Puzzle_State.CORRECT:
		setSaveVariable("cauldron_finished_bool", true)
		setSaveVariable("study_cauldron_succeeded", true)	
	
	#correct or incorrect, we've solved the potion stuff
	if variableName == "potion_state":
		setSaveVariable("potions_sorted_bool", true)
	
	# the knight is clothed if we set her to anything besides naked
	if variableName == "knight_clothing":
		if getSaveVariable("knight_clothing") != SaveData_CurrentGame.Clothing.NAKED:
			setSaveVariable ("knight_clothed", true)
			setSaveVariable ("bedroom_doorLocked", false)
		elif getSaveVariable("knight_clothing") != SaveData_CurrentGame.Clothing.NAKED:
			setSaveVariable ("knight_clothed", false)
	
	#if we're setting an item, we know the knight is fed
	if variableName == "knight_eaten_item":
		setSaveVariable("knight_fed", true)
	if variableName == "knight_eaten_item" and (variableValue == SaveData_CurrentGame.Eaten_Item.CHEESE or variableValue == SaveData_CurrentGame.Eaten_Item.MILK or variableValue == SaveData_CurrentGame.Eaten_Item.BUTTER):
		increasePoints("corruptionPoints_Cow", 1)
	if variableName == "knight_eaten_item" and variableValue == SaveData_CurrentGame.Eaten_Item.BIRDSEED:
		setSaveVariable("cellar_eatenBirdSeed", true)
	if variableName == "knight_eaten_item" and variableValue == SaveData_CurrentGame.Eaten_Item.DOGFOOD:
		setSaveVariable("cellar_eatenIgnusMeat", true)	
			
	if variableName == "read_notice" or variableName == "looked_out_front_windows":
		setSaveVariable("realise_shit_is_fucked", true)
	#if she gets fucked in any capacity, she is now stretched.
	elif variableName.contains("fucked"):
		setSaveVariable ("stretched", true)
	
	if variableName == "ignus_fucked_ate_out":
		setSaveVariable ("ignus_fed", true)
	
	if variableName != "corruptionPoints_Imp" and variableName != "corruptionPoints_Pet" and variableName != "corruptionPoints_Cow":
		checkForEndingIncreases(variableName, variableValue)
	
	save_game()

#checks to see if any variables are associated with a specific ending, and increases their counter.
func checkForEndingIncreases(variableName: String, variableValue):
	var impPoints = save_data.currentGameData.current_save_data_dictionary["corruptionPoints_Imp"]
	var petPoints = save_data.currentGameData.current_save_data_dictionary["corruptionPoints_Pet"]
	var cowPoints = save_data.currentGameData.current_save_data_dictionary["corruptionPoints_Cow"]		
	
	var _vN = variableName.to_lower()
	
	if _vN.contains("imp") and _vN != "corruptionpoints_imp":	
		setSaveVariable("corruptionPoints_Imp", impPoints + 1)

	if _vN.contains("pet") and _vN != "corruptionpoints_pet": 
		setSaveVariable("corruptionPoints_Pet", petPoints + 1)

	if _vN.contains("cow") and _vN != "corruptionpoints_cow": 
		setSaveVariable("corruptionPoints_Cow", cowPoints + 1)		
	
	if variableValue is SaveData_CurrentGame.Clothing:
		if variableValue == SaveData_CurrentGame.Clothing.STOLEN_ROBES or variableValue == SaveData_CurrentGame.Clothing.SLUTTY_OUTFIT: 
			setSaveVariable("corruptionPoints_Imp", impPoints + 1)
		elif variableValue == SaveData_CurrentGame.Clothing.BUTTPLUG:
			setSaveVariable("corruptionPoints_Pet", petPoints + 1)
		elif variableValue == SaveData_CurrentGame.Clothing.COW_BIKINI:
			setSaveVariable("corruptionPoints_Cow", cowPoints + 1)

func increasePoints(variableName, variableValue):
	var impPoints = save_data.currentGameData.current_save_data_dictionary["corruptionPoints_Imp"]
	var petPoints = save_data.currentGameData.current_save_data_dictionary["corruptionPoints_Pet"]
	var cowPoints = save_data.currentGameData.current_save_data_dictionary["corruptionPoints_Cow"]
	var _vN = variableName.to_lower()
	
	if _vN.contains("cow"):
		save_data.currentGameData.current_save_data_dictionary[variableName] = 	(cowPoints + 1)	
	if _vN.contains("imp"):
		save_data.currentGameData.current_save_data_dictionary[variableName] = 	(impPoints + 1)	
	if _vN.contains("pet"):		
		save_data.currentGameData.current_save_data_dictionary[variableName] = 	(petPoints + 1)	
	
func getSaveVariable(variableName: String):
	#current game data
	if variableName in save_data.currentGameData.current_save_data_dictionary:
		return save_data.currentGameData.current_save_data_dictionary[variableName]
	#ending tracking data	
	elif variableName in save_data.multiRunSaveData.tracked_ending_data_dictionary:		
		return save_data.multiRunSaveData.tracked_ending_data_dictionary[variableName]
	else: push_error(Error.ERR_DOES_NOT_EXIST)
