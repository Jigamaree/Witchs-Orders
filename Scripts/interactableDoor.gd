extends interactableObject

###
# THIS IS THE DOOR CLASS
# THE DOOR
####

class_name interactableDoor

@export var currentRoom: GlobalVariables.roomsInHouse
@export var roomDestination: GlobalVariables.roomsInHouse

func interact() -> void:
	SceneManager.switch_scenes(currentRoom, roomDestination)
