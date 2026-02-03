extends Node

class_name defaultRoomScript

@export var needToSpawnPlayer: bool
@export var playerCharacterScene: PackedScene	= preload("res://Scenes/PlayerCharacter.tscn")

func _ready() -> void:
	GlobalVariables.changingScene.connect(_on_changing_scenes)
	# connect to changing scenes
	
func _on_changing_scenes(sceneFrom: GlobalVariables.roomsInHouse, sceneTo: GlobalVariables.roomsInHouse) -> void:
	print("Going from: " + GlobalVariables.roomToString(sceneFrom) + " to " + GlobalVariables.roomToString(sceneTo))
	if needToSpawnPlayer:
		spawnPlayer(sceneFrom)

func spawnPlayer(sceneFrom: GlobalVariables.roomsInHouse) -> void:
	pass
