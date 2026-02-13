extends Area2D
class_name interactableObject

@export var objectName: String 
@export var objectType: GlobalVariables.interactableType

signal playDialogue(objectName)

func interact() -> void:
	spawn_dialogue()

func spawn_dialogue():
	GlobalVariables.startDialogue.emit(objectName)
	GlobalVariables.pauseRegularGameplay.emit()
	
