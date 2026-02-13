extends interactableObject

class_name dynamicInteractableObject
var playerInArea: bool = false
var player: Node2D
@onready var sprite: Sprite2D = $Sprite2D

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("player") and !area.is_in_group("playerInteractNode"): 
		playerInArea = true	
		player = area.get_parent()	
	pass # Replace with function body.

func _on_area_exited(_area: Area2D) -> void: 
	playerInArea = false
	player = null

func _process(_delta: float) -> void:
	if playerInArea and player:
		var _y = player.global_position.y
		#player is below
		if _y >= global_position.y -10:
			z_index = 0
		#player is above	
		else:
			z_index = 2
			
