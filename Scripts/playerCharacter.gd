extends CharacterBody2D

func _physics_process(delta: float) -> void:
	var input_vector : Vector2 = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up"))
	velocity = input_vector*50000*delta
	move_and_slide()
