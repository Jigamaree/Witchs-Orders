extends interactableObject

@export var roomDestination: PackedScene

func interact() -> void:
	print("Hit!")
	get_tree().change_scene_to_packed(roomDestination)
