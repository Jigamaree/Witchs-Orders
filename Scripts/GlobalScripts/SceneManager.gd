extends Node

class_name Scene_Manager

var previousRoom: GlobalVariables.roomsInHouse = GlobalVariables.roomsInHouse.NULL

var currentScene: Node = null

@export var bathroomScene: PackedScene 	= preload("res://Scenes/Room_Bathroom.tscn")
@export var bedroomScene: PackedScene	= preload("res://Scenes/Room_Bedroom.tscn")

func _ready() -> void:
	switch_scenes(GlobalVariables.roomsInHouse.SLEEPYROOM, -1)

func get_current_scene() -> void:
	currentScene = get_tree().current_scene
	
func get_previous_room() -> GlobalVariables.roomsInHouse:
	return previousRoom

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
	#spawn player 
	
		
