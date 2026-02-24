extends Node

signal changingScene(sceneFrom, sceneTo)
signal startDialogue(objectInteractedWith)
signal pauseRegularGameplay()
signal startRegularGameplay()
signal stopUpwardYMovement()
signal startUpwardYMovement()
signal quickCountdown()
signal dragPlayerForward()
signal showSingleTentacle()
signal preloadConversation()
signal preloadPotionMenu()

enum interactableType {
	OBJECT,
	DOOR,
	ENTITY,
}

enum spawn_direction {UP, DOWN, LEFT, RIGHT,}

enum roomsInHouse {
	NULL,
	BATHROOM,
	SLEEPYROOM,
	LIVING_ROOM,
	FRONT_DOOR,
	KITCHEN,
	CELLAR,
	GARDEN,
	STUDY,
	STAIRS_TO_PIT,
	PIT_ROOM,
	FRONT_GARDEN,
}

func roomToString (room: int) -> String:
	match room:
		roomsInHouse.NULL: 			return "null!"
		roomsInHouse.BATHROOM: 		return "Bathroom"
		roomsInHouse.SLEEPYROOM:	return "Bedroom (Sleepyroom)"
		roomsInHouse.LIVING_ROOM:	return "Living Room"
		roomsInHouse.STAIRS_TO_PIT: return "Stairs"
		roomsInHouse.PIT_ROOM: 		return "The Pit"
		
		_: return "ERROR"
