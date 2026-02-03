extends Node

@onready var player_scene: PackedScene = preload("res://Scenes/AssetScenes/PlayerCharacter.tscn")
var player: PlayerClass

func _ready():
	# Spawn player
	player = player_scene.instantiate()
	add_child(player)
	if NavMan.changed_scene_before == true:
		find_player_location()
	#else call player spawn on fallback place
	
func find_player_location():
	for door: interactableDoor in get_tree().get_nodes_in_group("door"):
		if door.currentRoom == NavMan.scene_were_currently_instancing:
			player.global_position = door.global_position
			return
