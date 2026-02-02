extends Node

var currentScene: Node

@export var bathroomScene: PackedScene 	= preload("res://Scenes/Room_Bathroom.tscn")
@export var bedroomScene: PackedScene	= preload("res://Scenes/Room_Bedroom.tscn")

var container: Node = null

func _ready() -> void:
	#switch_scenes(GlobalVariables.roomsInHouse.NULL, GlobalVariables.roomsInHouse.BEDROOM)
	var x = 1

func switch_scenes(scene_from: GlobalVariables.roomsInHouse, scene_to: GlobalVariables.roomsInHouse) -> void:
	#first get the room
	var scene = null
	
	match scene_to:
		GlobalVariables.roomsInHouse.BATHROOM: 	
			print("To Bathroom")
			scene = bathroomScene
		GlobalVariables.roomsInHouse.BEDROOM:	
			print("To Bedroom")
			scene = bedroomScene
			
	if currentScene:
		currentScene.queue_free()

	get_tree().change_scene_to_packed(scene)
