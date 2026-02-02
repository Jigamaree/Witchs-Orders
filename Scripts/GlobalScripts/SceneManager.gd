extends Node

class_name Scene_Manager

var previousRoom: GlobalVariables.roomsInHouse

@export var bathroomScene: PackedScene 	= preload("res://Scenes/Room_Bathroom.tscn")
@export var bedroomScene: PackedScene	= preload("res://Scenes/Room_Bedroom.tscn")

func switch_scenes(sceneFrom: GlobalVariables.roomsInHouse, sceneTo: GlobalVariables.roomsInHouse) -> void:
	
	previousRoom = sceneFrom	
	var nextSceneUp = null
	
	#match to the right scene
	match sceneTo:
		GlobalVariables.roomsInHouse.BATHROOM: 	
			nextSceneUp = bathroomScene
		GlobalVariables.roomsInHouse.SLEEPYROOM:	
			nextSceneUp = bedroomScene
			
	GlobalVariables.emit_signal("changingScene", sceneFrom, sceneTo)
	get_tree().change_scene_to_packed(nextSceneUp)
	
