extends interactableObject

###
# THIS IS THE DOOR CLASS
# THE DOOR
####

class_name interactableDoor

@export var currentRoom: GlobalVariables.roomsInHouse
@export var roomDestination: GlobalVariables.roomsInHouse
@export var spawnDirection: GlobalVariables.spawn_direction
@onready var marker: Marker2D = $Door_Marker
@onready var markerPos: Vector2 = marker.global_position

func interact() -> void:
	print("I'm a door!")
	NavMan.change_scenes(currentRoom, roomDestination)
	
	
