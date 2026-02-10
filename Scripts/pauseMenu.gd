extends Control

@onready var unpauseButton: Button = 	$LeftPage/MarginContainer/HBoxContainer/VBoxContainer/UnpauseButton
@onready var saveButton: Button =	 	$LeftPage/MarginContainer/HBoxContainer/VBoxContainer/SaveButton
@onready var optionsButton: Button = 	$LeftPage/MarginContainer/HBoxContainer/VBoxContainer/OptionsButton
@onready var mainMenuButton: Button = 	$LeftPage/MarginContainer/HBoxContainer/VBoxContainer/MainMenuButton
@onready var quitButton: Button = 		$LeftPage/MarginContainer/HBoxContainer/VBoxContainer/QuitButton

func _ready() -> void:
	unpauseButton.grab_focus()
	pass

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_pause") or event.is_action_pressed("ui_debug"):
		_on_unpause_button_pressed()

func _on_unpause_button_pressed() -> void:
	get_tree().paused = false
	queue_free()

func _unhandled_input(event):
	if event.is_action_pressed("pause_button"):
		get_viewport().set_input_as_handled()
		_on_unpause_button_pressed()


func _on_test_save_button_pressed() -> void:
	SaveManager.updateSave("knight_fed", true)
	SaveManager.updateSave("ignus_fed", true)
	SaveManager.updateSave("corruptionPoints_Demon", 1)
	SaveManager.updateSave("sword_interracted", true)
