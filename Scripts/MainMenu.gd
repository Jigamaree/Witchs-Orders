extends Control

@onready var debug_menu: PackedScene = preload("res://Scenes/DebugMenu.tscn")
@onready var startButton: Button = $MarginContainer/VBoxContainer/VBoxContainer/StartGame
@onready var endingsButton: Button = $MarginContainer/VBoxContainer/VBoxContainer/Endings

@onready var marker_left = $CauldronBack/MarkerLeft
@onready var marker_right = $CauldronBack/MarkerRight

@export var floating_sprite_scene: PackedScene 

func _ready() -> void:
	if SaveManager.getSaveVariable("started_game"):
		startButton.text = "Continue Game"	
	if SaveManager.endingMenuUnlock():
		endingsButton.disabled = false	 
	startButton.grab_focus()	

func _on_start_game_pressed() -> void:
	if SaveManager.getSaveVariable("started_game") == false: 
		SaveManager.setSaveVariable("started_game", true)
		get_tree().change_scene_to_file("res://Scenes/Room_Bedroom.tscn")
	else:
		var _cr = SaveManager.getSaveVariable("current_room")
		NavMan.change_scenes(null, _cr)

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_debug"):
		var debug_instance = debug_menu.instantiate()	
		add_child(debug_instance)

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_endings_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/EndingsMenu.tscn")


func _on_spawn_timer_timeout() -> void:
	spawn_sprite()

func spawn_sprite():
	var sprite = floating_sprite_scene.instantiate()
	
	var min_x = marker_left.global_position.x
	var max_x = marker_right.global_position.x
	var random_x = randf_range(min_x, max_x)
	
	sprite.global_position = Vector2(
		random_x,
		marker_right.global_position.y
	)
	
	add_child(sprite)


func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/OptionsMenu.tscn")
