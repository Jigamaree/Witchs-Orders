extends CanvasLayer

class_name DebugMenu

@onready var vbox = $CenterContainer/ColorRect/ColorRect/Container/VBoxContainer

func _ready() -> void:
	if SaveManager.save_data.currentGameData.current_save_data_dictionary:
		for key in SaveManager.save_data.currentGameData.current_save_data_dictionary:
			print(key)
			print(SaveManager.save_data.currentGameData.current_save_data_dictionary[key])
			
			var value = str(key) + ": " + str(SaveManager.save_data.currentGameData.current_save_data_dictionary[key])
			
			var label := Label.new()
			label.text = value
			
			vbox.add_child(label)
			
		
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_debug"):
		remove_debug_menu()

func remove_debug_menu() -> void:
	GlobalVariables.emit_signal("quickCountdown")
	get_tree().paused = false
	queue_free()
