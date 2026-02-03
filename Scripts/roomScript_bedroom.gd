extends defaultRoomScript

class_name bedroomScript

###
# bedroom for sleepytimes
###

@onready var bathroomMarker: Marker2D 	= $Markers/BathroomMarker
@onready var mainHouseMarker: Marker2D 	= $Markers/MainHouseMarker
@onready var starterMarker: Marker2D 	= $Markers/MarkerStarter

func _ready() -> void:
	super._ready()
	spawnPlayer(GlobalVariables.roomsInHouse.NULL)
	#call super
	#get previous scene

func spawnPlayer(sceneFrom: GlobalVariables.roomsInHouse) -> void:
	if sceneFrom == GlobalVariables.roomsInHouse.BATHROOM:
		pass
	elif sceneFrom == GlobalVariables.roomsInHouse.LIVING_ROOM:
		pass
	elif sceneFrom == GlobalVariables.roomsInHouse.NULL:
		var player = playerCharacterScene.instantiate()
		add_child(player)
		player.global_position = starterMarker.global_position
