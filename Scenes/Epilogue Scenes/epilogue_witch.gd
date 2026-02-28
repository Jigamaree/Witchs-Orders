extends Control

class_name EpilogueWitch

@onready var dialogue_overlay: PackedScene = preload("res://Scenes/DialogueTestScene.tscn")
@onready var debug_menu: PackedScene = preload("res://Scenes/DebugMenu.tscn")
var dialogue_instance: DialogueSystem
var canOpenDebug
var dialogueDictionary = witchEndings.endingsDict

var waitingConvo = ""
var isWaitingConvo = false

func _ready():
	# Spawn player
	GlobalVariables.startDialogue.connect(_on_start_dialogue)
	GlobalVariables.preloadConversation.connect(_line_up_convo)		
	calculate_what_ending()	
	
func calculate_what_ending():
	#can check for true ending first, since that has its own check:
	if SaveManager.getSaveVariable("apprentice_seed_taken"):	
		_on_start_dialogue("TrueEnd")
		return
			
	#first check for true bimbo ending
	if !SaveManager.getSaveVariable("knight_fed") and !SaveManager.getSaveVariable("ignus_fed") and !SaveManager.getSaveVariable("pit_fed") and !SaveManager.getSaveVariable("potions_sorted_bool") and !SaveManager.getSaveVariable("cauldron_finished_bool"):
		_on_start_dialogue("true_bimbo_ending")
		return
	#then check if either of the puzzles were fucked up for the bimbo ending	
	elif SaveManager.getSaveVariable("potions_correct") == false or SaveManager.getSaveVariable("study_cauldron_succeeded") == false:
		_on_start_dialogue("BetterNotToThink")
		return
	#also check if they COMPLETED the other tasks:
	if !SaveManager.getSaveVariable("knight_fed") and !SaveManager.getSaveVariable("ignus_fed") and !SaveManager.getSaveVariable("pit_fed"):	
		_on_start_dialogue("BetterNotToThink")
		return
	
	#otherwise we calculate what ending type we use here - imp, cow, pet or player's choice
	var ending = SaveManager.getCurrentMainCorruptionType()
	if ending == SaveData_CurrentGame.Corruption_Type.NONE or ending == SaveData_CurrentGame.Corruption_Type.UNDEFINED:
		SaveManager.setSaveVariable("finalEnding", "choose")
	elif ending == SaveData_CurrentGame.Corruption_Type.COW:
		SaveManager.setSaveVariable("finalEnding", "cow")
	elif ending == SaveData_CurrentGame.Corruption_Type.IMP:
		SaveManager.setSaveVariable("finalEnding", "imp")
	elif ending == SaveData_CurrentGame.Corruption_Type.PET:
		SaveManager.setSaveVariable("finalEnding", "pet")	
	
	print(SaveManager.getSaveVariable("finalEnding"))	
	_on_start_dialogue("default_ending_setup")
	
func _process(delta: float) -> void:
	if isWaitingConvo:
		GlobalVariables.startDialogue.emit(waitingConvo)	
		isWaitingConvo = false

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_debug"):
		print(str(isWaitingConvo))

func _on_start_dialogue(objectName: String):
	if dialogue_instance:
		return
	elif 	!dialogueDictionary.has(objectName):
		print("Couldn't find + '" + str(objectName) + "' in dict.")
		objectName = ""
		
	dialogue_instance = dialogue_overlay.instantiate()
	#set conversation

	get_dialogue_entry(objectName)
	add_child(dialogue_instance)

func get_dialogue_entry(objectName: String):
	if !dialogueDictionary:
		print("ASSIGN THE DICTIONARY DUDE")
		return
	if objectName == null:
		print("ASSIGN A NAME DUDE")
		return
	var v = dialogueDictionary[objectName]	
	dialogue_instance.conv = v

func _line_up_convo(convo_entry: String):
	isWaitingConvo = true
	waitingConvo = convo_entry	
