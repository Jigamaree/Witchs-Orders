extends class_defaultRoom

class_name room_kitchen

@onready var doorToPit: interactableDoor = $Doors/PitRoomDoor_Area

#TODO: make kitchenConvos thing
func _ready():
	super._ready()
	if SaveManager.getSaveVariable("thePit_hasCompletedStaircase"):
		doorToPit.roomDestination = GlobalVariables.roomsInHouse.PIT_ROOM

func get_dialogue_entry(objectName: String):
	dialogue_instance.conv = bathroomConvos.bathroom_Convos_Dict[objectName]

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_debug"):
		var x = GlobalVariables.roomToString(doorToPit.roomDestination)
		print(x)
