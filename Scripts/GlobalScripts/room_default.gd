extends Node

class_name class_defaultRoom

@onready var player_scene: PackedScene = preload("res://Scenes/AssetScenes/PlayerCharacter.tscn")
@onready var dialogue_overlay: PackedScene = preload("res://Scenes/DialogueTestScene.tscn")
@onready var pause_menu: PackedScene = preload("res://Scenes/PauseMenu.tscn")
@onready var debug_menu: PackedScene = preload("res://Scenes/DebugMenu.tscn")
var player: PlayerClass
var dialogue_instance: DialogueSystem
var activity_on_first_entry = false

var ignusConvoDict = IgnusConvos.convos_Dict
var dialogueDictionary: Dictionary
var canOpenDebug: bool = true
var canPause: bool = true

var waitingConvo = ""
var isWaitingConvo = false

func _ready():
	# Spawn player
	if !player:
		player = player_scene.instantiate()
		add_child(player)
		find_player_location()
	GlobalVariables.startDialogue.connect(_on_start_dialogue)
	GlobalVariables.quickCountdown.connect(_quick_countdown)
	GlobalVariables.pauseRegularGameplay.connect(_disable_pausing)
	GlobalVariables.startRegularGameplay.connect(_re_enable_pausing)
	GlobalVariables.preloadConversation.connect(_line_up_convo)
	#else call player spawn on fallback place
	#want a method in here that loads room-specific flags in here and applies that to objects if possible!

func _process(delta: float) -> void:
	if isWaitingConvo and canPause == true:
		GlobalVariables.pauseRegularGameplay.emit()	
		GlobalVariables.startDialogue.emit(waitingConvo)	
		isWaitingConvo = false

func _line_up_convo(test: String):
	isWaitingConvo = true
	waitingConvo = test
	
func _quick_countdown():
	canOpenDebug = false
	await get_tree().create_timer(0.3).timeout
	canOpenDebug = true
	
func find_player_location():
	for marker: Marker2D in get_tree().get_nodes_in_group("fallback"):
		player.global_position = marker.global_position	
	
	if NavMan.changed_scene_before == true:
		for door: interactableDoor in get_tree().get_nodes_in_group("door"):
			if door.currentRoom == NavMan.scene_were_currently_instancing and door.roomDestination == NavMan.last_scene:
				player.global_position = door.markerPos

	
func _disable_pausing(): 	canPause = false
func _re_enable_pausing(): 	canPause = true
		
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause_button") and canPause == true:
		var pause_instance = pause_menu.instantiate()
		add_child(pause_instance)
		#handleCamera(pause_instance)
		get_tree().paused = true	

	elif Input.is_action_just_pressed("ui_debug") and canOpenDebug == true:
		var debug_instance = debug_menu.instantiate()
		add_child(debug_instance)
		get_tree().paused = true			

func handleCamera(pause_instance):
	pass

func _on_start_dialogue(objectName: String):
	if dialogue_instance:
		return
	elif 	!dialogueDictionary.has(objectName):
		print("Couldn't find + '" + str(objectName) + "' in dict.")
		objectName = ""
		
		
	dialogue_instance = dialogue_overlay.instantiate()
	#set conversation
	
	###TODO: Fail gracefully if I forgot to add something to the citionary
	
	#if !dialogueDictionary.has(objectName):
		#print("DIDNT ADD TO DICTIONARY, DUDE")
		#GlobalVariables.startRegularGameplay.emit()
		#return		
	get_dialogue_entry(objectName)
	add_child(dialogue_instance)

func get_dialogue_entry(objectName: String):
	if !dialogueDictionary:
		print("ASSIGN THE DICTIONARY DUDE")
		return
	if objectName == null:
		print("ASSIGN A NAME DUDE")
		return
	dialogue_instance.conv = dialogueDictionary[objectName]
