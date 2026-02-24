extends CanvasLayer

@onready var unpauseButton: Button = 	$LeftPage/MarginContainer/HBoxContainer/VBoxContainer/UnpauseButton
@onready var saveButton: Button =	 	$LeftPage/MarginContainer/HBoxContainer/VBoxContainer/SaveButton
@onready var optionsButton: Button = 	$LeftPage/MarginContainer/HBoxContainer/VBoxContainer/OptionsButton
@onready var mainMenuButton: Button = 	$LeftPage/MarginContainer/HBoxContainer/VBoxContainer/MainMenuButton
@onready var quitButton: Button = 		$LeftPage/MarginContainer/HBoxContainer/VBoxContainer/QuitButton

@onready var feedBox: 		CheckBox = $RightPage/MarginContainer/HBoxContainer/RightVBox/FeedYourself/CheckBox
@onready var ignusBox: 		CheckBox = $RightPage/MarginContainer/HBoxContainer/RightVBox/FeedIgnus/CheckBox 
@onready var pitBox: 		CheckBox = $RightPage/MarginContainer/HBoxContainer/RightVBox/TendToPit/CheckBox
@onready var potionsBox: 	CheckBox = $RightPage/MarginContainer/HBoxContainer/RightVBox/OrganisePotions/CheckBox
@onready var cauldronBox: 	CheckBox = $RightPage/MarginContainer/HBoxContainer/RightVBox/CompleteCauldron/CheckBox
@onready var rightPage: 	ColorRect = $RightPage

func _ready() -> void:
	unpauseButton.grab_focus()
	feedBox.button_pressed = SaveManager.getSaveVariable("knight_fed")
	ignusBox.button_pressed = SaveManager.getSaveVariable("ignus_fed")
	pitBox.button_pressed = SaveManager.getSaveVariable("pit_fed")
	potionsBox.button_pressed = SaveManager.getSaveVariable("potions_sorted_bool")
	cauldronBox.button_pressed = SaveManager.getSaveVariable("cauldron_finished_bool")
	
	if !SaveManager.getSaveVariable("bedroom_noteRead"):
		rightPage.visible = false
	if SaveManager.getSaveVariable("plant_guide_read"):
		$"Forward Button".visible = true
		

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_pause"):
		_on_unpause_button_pressed()

func _on_unpause_button_pressed() -> void:
	get_tree().paused = false
	queue_free()

func _unhandled_input(event):
	if event.is_action_pressed("pause_button"):
		get_viewport().set_input_as_handled()
		_on_unpause_button_pressed()

func _on_main_menu_button_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/AssetScenes/MainMenu.tscn")
	queue_free()

func _on_quit_button_pressed() -> void:
	SaveManager.save_game()
	get_tree().quit()


func _on_forward_button_pressed() -> void:
		var potion_select = preload("res://Scenes/PlantGuide.tscn").instantiate()
		potion_select.layer = 10
		add_child(potion_select)
