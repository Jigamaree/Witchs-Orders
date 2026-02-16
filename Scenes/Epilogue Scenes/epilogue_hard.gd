extends Control

class_name EpilogueHardScene

@onready var dialogue_overlay: PackedScene = preload("res://Scenes/DialogueTestScene.tscn")
@onready var debug_menu: PackedScene = preload("res://Scenes/DebugMenu.tscn")
var dialogue_instance: DialogueSystem
var canOpenDebug
var dialogueDictionary = hardEndings.endingsDict

func _ready():
	# Spawn player
	GlobalVariables.startDialogue.connect(_on_start_dialogue)
	#else call player spawn on fallback place
	#want a method in here that loads room-specific flags in here and applies that to objects if possible!
	if SaveManager.getSaveVariable("finalEnding"):
		_on_start_dialogue("Captured")	
	
	else:
		_on_start_dialogue("")	

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
