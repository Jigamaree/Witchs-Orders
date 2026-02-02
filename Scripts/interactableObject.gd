extends Area2D
class_name interactableObject

@export var objectName: String 
@export var objectType: int

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):
		print("!!!")

func interact() -> void:
	print("I'm an object!")
