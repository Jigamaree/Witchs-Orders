extends Control

@onready var restartCurRunConfirm = $RestartConfirmDialogue
@onready var deleteEverythingConfirm = $DeleteAllConfirmDialogue
@onready var fadeSquare = $FadeBack
@onready var skipProg: CheckBox = $LeftPage/MarginContainer/HBoxContainer/VBoxContainer/CenterContainer/Skip
@onready var masterSlider = $LeftPage/MarginContainer/HBoxContainer/VBoxContainer/MasterSlider

func _ready() -> void:
	var bus_index = AudioServer.get_bus_index("Master")
	var volume_db = AudioServer.get_bus_volume_db(bus_index)

	# Clamp just in case
	volume_db = clamp(volume_db, -80.0, 0.0)

	# Reverse lerp
	var exp_val = (volume_db + 80.0) / 80.0

	# Reverse cubic curve
	var value = 1.0 - pow(1.0 - exp_val, 1.0 / 3.0)

	masterSlider.value = value
	
	skipProg.button_pressed = SaveManager.getSaveVariable("skipPrologue")
	skipProg.grab_focus()

func _on_restart_run_pressed() -> void:
	if restartCurRunConfirm.visible == false: 
		fadeSquare.visible = true
		restartCurRunConfirm.visible = true

func _on_restart_confirm_dialogue_confirmed() -> void:
	SaveManager.reset_current_run()
	get_tree().change_scene_to_file("res://Scenes/AssetScenes/MainMenu.tscn")

func _on_delete_all_data_pressed() -> void:
	if deleteEverythingConfirm.visible == false: 
		fadeSquare.visible = true
		deleteEverythingConfirm.visible = true

func _on_delete_all_confirm_dialogue_confirmed() -> void:
	SaveManager.reset_all_data()
	get_tree().change_scene_to_file("res://Scenes/AssetScenes/MainMenu.tscn")

func _close_confirm_stuff():
	fadeSquare.visible = false
	restartCurRunConfirm.visible = false
	deleteEverythingConfirm.visible = false

func _on_master_slider_value_changed(value: float) -> void:
	var exp_val = 1.0 - pow(1.0 - value, 3)  
	var volume_db = lerp(-80, 0, exp_val)

	# Apply to audio bus
	var bus_index = AudioServer.get_bus_index("Master")  # or "MonsterSFX"
	AudioServer.set_bus_volume_db(bus_index, volume_db)

func _on_music_slider_value_changed(value: float) -> void:
	pass # Replace with function body.

func _on_sfx_slider_value_changed(value: float) -> void:
	pass # Replace with function body.

func _on_window_type_item_selected(index: int) -> void:
	#window
	print("???")
	if index == 0:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, false)
	elif index == 1:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/AssetScenes/MainMenu.tscn")

func _on_export_save_pressed() -> void:
	pass

func _on_import_save_pressed() -> void:
	pass # Replace with function body.


func _on_skip_pressed() -> void:
	SaveManager.setSaveVariable("skipPrologue", true)
