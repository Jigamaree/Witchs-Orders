extends interactableObject

###
# THIS IS THE DOOR CLASS
# THE DOOR
####

class_name interactableDoor

@export var currentRoom: GlobalVariables.roomsInHouse
@export var roomDestination: GlobalVariables.roomsInHouse
@export var spawnDirection: GlobalVariables.spawn_direction
@export var isLocked: bool 

@onready var marker: Marker2D = $Door_Marker
@onready var markerPos: Vector2 = marker.global_position

func interact() -> void:
	#this should really be handled by the room_bedroom, but im lazy
	isLocked = SaveManager.getSaveVariable("bedroom_doorLocked")
	
	if isLocked == true:
		GlobalVariables.startDialogue.emit("lockedDoor")
	else:
		NavMan.change_scenes(currentRoom, roomDestination)
	
	
