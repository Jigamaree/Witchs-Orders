extends interactableObject

@export var currentRoom: GlobalVariables.roomsInHouse
@export var roomDestination: GlobalVariables.roomsInHouse

func interact() -> void:
	print("Hit!")
	SceneManager.switch_scenes(currentRoom, roomDestination)
	#get_tree().change_scene_to_packed(roomDestination)
