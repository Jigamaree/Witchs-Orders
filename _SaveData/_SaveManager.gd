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
		save_data.playerData = SaveData_Knight.new()
		save_data.choreData = SaveData_Chores.new()
		save_data.apprenticeEndingData = SaveData_ApprenticeEnding.new()
		save_data.otherEndingsData = SaveData_OtherEndings.new()
		
		save_data.persitstent_EndingRecords_data = AllEndings_SaveData.new()
				
		print(OS.get_user_data_dir())
		save_game()
		print("New save created.")

func save_game():
	ResourceSaver.save(save_data, SAVE_PATH)
	print("Game saved.")

#@export var playerData: 					SaveData_Knight
#@export var choreData: 						SaveData_Chores
#@export var apprenticeEndingData: 			SaveData_ApprenticeEnding
#@export var otherEndingsData: 				SaveData_OtherEndings

func setSaveVariable(variableName: String, variableValue):
	var x = 1
	if variableName in save_data.playerData:
		print("found " + variableName + " in playerData!")
	elif variableName in save_data.choreData:
		print("found " + variableName + " in choreData!")
	elif variableName in save_data.apprenticeEndingData:
		print("found " + variableName + " in apprenticeEndingData!")
	elif variableName in save_data.otherEndingsData:
		print("found " + variableName + " in otherEndingsData!")
	elif variableName in save_data.persitstent_EndingRecords_data:
		print("found " + variableName + " in persitstent_EndingRecords_data!")
	else: Error.ERR_DOES_NOT_EXIST
	
func getSaveVariable(variableName: String):
	if variableName in save_data.playerData:
		print("found " + variableName + " in playerData!")
	elif variableName in save_data.choreData:
		print("found " + variableName + " in choreData!")
	elif variableName in save_data.apprenticeEndingData:
		print("found " + variableName + " in apprenticeEndingData!")
	elif variableName in save_data.otherEndingsData:
		print("found " + variableName + " in otherEndingsData!")
	elif variableName in save_data.persitstent_EndingRecords_data:
		print("found " + variableName + " in persitstent_EndingRecords_data!")
	else: Error.ERR_DOES_NOT_EXIST	
