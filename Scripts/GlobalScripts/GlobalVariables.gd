extends Node

signal changingScene(sceneFrom, sceneTo)
signal moveThePlayer(playerPos)

enum interactableType {
	OBJECT,
	DOOR,
	ENTITY,
}

enum roomsInHouse {
	NULL,
	BATHROOM,
	SLEEPYROOM,
	LIVING_ROOM,
	KITCHEN,
	GARDEN,
	STUDY,
	PIT_ROOM,
	FRONT_GARDEN,
}

func roomToString (room: int) -> String:
	match room:
		roomsInHouse.NULL: 			return "null!"
		roomsInHouse.BATHROOM: 		return "Bathroom"
		roomsInHouse.SLEEPYROOM:	return "Bedroom (Sleepyroom)"
		roomsInHouse.LIVING_ROOM:	return "Living Room"
		
		_: return "ERROR"
