extends Node

class_name class_defaultRoom

@onready var player_scene: PackedScene = preload("res://Scenes/AssetScenes/PlayerCharacter.tscn")
@onready var dialogue_overlay: PackedScene = preload("res://Scenes/DialogueTestScene.tscn")
@onready var pause_menu: PackedScene = preload("res://Scenes/PauseMenu.tscn")
var player: PlayerClass
var dialogue_instance: DialogueSystem
var activity_on_first_entry = false

func _ready():
	# Spawn player
	player = player_scene.instantiate()
	add_child(player)
	find_player_location()
	GlobalVariables.startDialogue.connect(_on_start_dialogue)
	#else call player spawn on fallback place
	#want a method in here that loads room-specific flags in here and applies that to objects if possible!
	
func find_player_location():
	if NavMan.changed_scene_before == true:
		for door: interactableDoor in get_tree().get_nodes_in_group("door"):
			if door.currentRoom == NavMan.scene_were_currently_instancing and door.roomDestination == NavMan.last_scene:
				player.global_position = door.markerPos
				return
	else:
		for marker: Marker2D in get_tree().get_nodes_in_group("fallback"):
			player.global_position = marker.global_position
		
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause_button"):
		var pause_instance = pause_menu.instantiate()
		add_child(pause_instance)
		get_tree().paused = true	

func _on_start_dialogue(objectName: String):
	if dialogue_instance:
		return
	dialogue_instance = dialogue_overlay.instantiate()
	#set conversation
	get_dialogue_entry(objectName)
	
	add_child(dialogue_instance)

func get_dialogue_entry(objectName: String):
	if objectName == null:
		print("ASSIGN A NAME DUDE")
		return
	#dialogue_instance.conv = dialogue_instance.steve_convos["meeting"]
