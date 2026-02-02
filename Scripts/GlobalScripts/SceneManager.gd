extends Node

class_name Scene_Manager

var previousRoom: GlobalVariables.roomsInHouse

var currentScene: Node = null

@export var bathroomScene: PackedScene 	= preload("res://Scenes/Room_Bathroom.tscn")
@export var bedroomScene: PackedScene	= preload("res://Scenes/Room_Bedroom.tscn")

func _ready() -> void:
	switch_scenes(GlobalVariables.roomsInHouse.SLEEPYROOM, -1)

func switch_scenes(sceneFrom: GlobalVariables.roomsInHouse, sceneTo: GlobalVariables.roomsInHouse) -> void:
	previousRoom = sceneFrom	
	var nextSceneUp = null
	
	#match to the right scene
	match sceneTo:
		GlobalVariables.roomsInHouse.BATHROOM: 	
			nextSceneUp = bathroomScene
		GlobalVariables.roomsInHouse.SLEEPYROOM:	
			nextSceneUp = bedroomScene
			
	if nextSceneUp == null: nextSceneUp = bedroomScene
			
	GlobalVariables.emit_signal("changingScene", sceneFrom, sceneTo)

	if currentScene:
		currentScene.queue_free()
	
	# instantiate and add the new scene
	currentScene = nextSceneUp.instantiate()
	get_tree().root.add_child(currentScene)
	
	# move the player to the correct position
	var player: CharacterBody2D = currentScene.get_node("PlayerCharacter")

	if currentScene.has_node("Markers/MarkerFromBathroom") and previousRoom == GlobalVariables.roomsInHouse.BATHROOM:
		print("you came from the bathroom!")
		var marker: Marker2D = currentScene.get_node("Markers/MarkerFromBathroom")
		player.global_position = marker.global_position
		
		
		#GlobalVariables.emit_signal("moveThePlayer", marker_pos)
		
