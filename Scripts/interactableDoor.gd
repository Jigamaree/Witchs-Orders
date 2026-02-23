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
@export var checkForFood: bool 

@onready var marker: Marker2D = $Door_Marker
@onready var markerPos: Vector2 = marker.global_position

func interact() -> void:
	#this should really be handled by the room_bedroom, but im lazy
	
	if (isLocked == false and checkForFood == false) or (checkForFood == true and SaveManager.getSaveVariable("garden_hasTentacleFood")):
		NavMan.change_scenes(currentRoom, roomDestination)
		return
	
	isLocked = SaveManager.getSaveVariable("bedroom_doorLocked")
	
	###should not be able to go through door if note hasn't been read
	if isLocked == true and currentRoom == GlobalVariables.roomsInHouse.SLEEPYROOM and roomDestination == GlobalVariables.roomsInHouse.LIVING_ROOM:	
		GlobalVariables.pauseRegularGameplay.emit()		
		GlobalVariables.startDialogue.emit("lockedDoor")
	elif checkForFood == true and SaveManager.getSaveVariable("thePit_warned") == false:
		GlobalVariables.pauseRegularGameplay.emit()		
		GlobalVariables.startDialogue.emit("noTentacleFood")
	else:
		NavMan.change_scenes(currentRoom, roomDestination)
	
	
