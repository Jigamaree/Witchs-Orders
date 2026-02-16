extends Control

func _on_epilogue_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Epilogue Scenes/Epilogue_Hard.tscn")


func _on_start_game_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Room_Bedroom.tscn")
