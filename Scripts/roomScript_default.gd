extends Node

class_name defaultRoomScript



func _ready() -> void:
	GlobalVariables.changingScene.connect(_on_changing_scenes)
	
func _on_changing_scenes(sceneFrom: GlobalVariables.roomsInHouse, sceneTo: GlobalVariables.roomsInHouse) -> void:
	print("Going from: " + GlobalVariables.roomToString(sceneFrom) + " to " + GlobalVariables.roomToString(sceneTo))
