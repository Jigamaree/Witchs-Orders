extends CanvasLayer

class_name DebugMenu

@onready var vbox = $CenterContainer/ColorRect/ColorRect/Container/VBoxContainer

func _ready() -> void:
	if SaveManager.save_data.currentGameData.current_save_data_dictionary:
		for key in SaveManager.save_data.currentGameData.current_save_data_dictionary:
			var dict = SaveManager.save_data.currentGameData.current_save_data_dictionary
			var value = dict[key]
			var label: Label = Label.new()
			var checkBox: CheckBox
			
			if typeof(value) == TYPE_BOOL:
				var hbox := HBoxContainer.new()
				label.text = str(key)
				hbox.add_child(label)
				
				checkBox = CheckBox.new()
				checkBox.button_pressed = value
				checkBox.toggled.connect(func(pressed: bool) -> void: SaveManager.setSaveVariable(key, pressed))
				hbox.add_child(checkBox)
				
				vbox.add_child(hbox)
				
				
			
			else:
				#print(key)
				#print(SaveManager.save_data.currentGameData.current_save_data_dictionary[key])			
				var _v = str(key) + ": " + str(SaveManager.save_data.currentGameData.current_save_data_dictionary[key])			
				label.text = _v		
				vbox.add_child(label)		
		
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_debug"):
		remove_debug_menu()

func remove_debug_menu() -> void:
	GlobalVariables.emit_signal("quickCountdown")
	get_tree().paused = false
	queue_free()
