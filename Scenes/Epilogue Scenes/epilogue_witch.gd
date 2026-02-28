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
	#first check for true bimbo ending
	if !SaveManager.getSaveVariable("knight_fed") and !SaveManager.getSaveVariable("ignus_fed") and !SaveManager.getSaveVariable("pit_fed") and !SaveManager.getSaveVariable("potions_sorted_bool") and !SaveManager.getSaveVariable("cauldron_finished_bool"):
		_on_start_dialogue("true_bimbo_ending")
	#then check if either of the puzzles were fucked up for the bimbo ending	
	elif SaveManager.getSaveVariable("potion_state") == SaveData_CurrentGame.Puzzle_State.INCORRECT or SaveManager.getSaveVariable("study_cauldron_succeeded") == false:
		_on_start_dialogue("BetterNotToThink")
	
	
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
