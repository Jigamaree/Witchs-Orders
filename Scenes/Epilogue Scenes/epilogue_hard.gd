extends Control

class_name EpilogueHardScene

@onready var dialogue_overlay: PackedScene = preload("res://Scenes/DialogueTestScene.tscn")
@onready var pause_menu: PackedScene = preload("res://Scenes/PauseMenu.tscn")
@onready var debug_menu: PackedScene = preload("res://Scenes/DebugMenu.tscn")
var dialogue_instance: DialogueSystem
var canOpenDebug
var dialogueDictionary = hardEndings.endingsDict

func _ready():
	# Spawn player
	GlobalVariables.startDialogue.connect(_on_start_dialogue)
	GlobalVariables.quickCountdown.connect(_quick_countdown)
	#else call player spawn on fallback place
	#want a method in here that loads room-specific flags in here and applies that to objects if possible!
	_on_start_dialogue("Captured")	

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_up"):
		_on_start_dialogue("Captured")	
	
func _quick_countdown():
	canOpenDebug = false
	await get_tree().create_timer(0.3).timeout
	canOpenDebug = true
		
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause_button") and canOpenDebug == true:
		var pause_instance = pause_menu.instantiate()
		add_child(pause_instance)
		get_tree().paused = true
	elif Input.is_action_just_pressed("ui_debug") and canOpenDebug == true:
		print("opened!")
		var debug_instance = debug_menu.instantiate()
		add_child(debug_instance)
		get_tree().paused = true			

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
