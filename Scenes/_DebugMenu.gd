extends CanvasLayer

class_name DebugMenu

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_debug"):
		remove_debug_menu()

func remove_debug_menu() -> void:
	GlobalVariables.emit_signal("quickCountdown")
	get_tree().paused = false
	queue_free()
