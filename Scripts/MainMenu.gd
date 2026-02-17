extends Control

@onready var debug_menu: PackedScene = preload("res://Scenes/DebugMenu.tscn")
@onready var startButton: Button = $MarginContainer/VBoxContainer/VBoxContainer/StartGame


func _ready() -> void:
	if SaveManager.getSaveVariable("started_game"):
		startButton.text = "Continue Game"		
		
func _process(delta: float) -> void:
	#if SaveManager.getSaveVariable("started_game"):
		#startButton.text = "Continue Game"	
		pass
		
func _on_epilogue_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Epilogue Scenes/Epilogue_Hard.tscn")

func _on_start_game_pressed() -> void:
	if SaveManager.getSaveVariable("started_game") == false: SaveManager.setSaveVariable("started_game", true)
	get_tree().change_scene_to_file("res://Scenes/Room_Bedroom.tscn")

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_debug"):
		var debug_instance = debug_menu.instantiate()	
		add_child(debug_instance)


func _on_quit_pressed() -> void:
	print("???")
	get_tree().quit()
