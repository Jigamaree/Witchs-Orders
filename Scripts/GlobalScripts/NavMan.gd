extends Node

var bathroom: PackedScene 	= preload("res://Scenes/Room_Bathroom.tscn")
var sleepyroom: PackedScene = preload("res://Scenes/Room_Bedroom.tscn")
var loungeroom: PackedScene = preload("res://Scenes/Room_Lounge.tscn")

var changed_scene_before: bool = false
var last_scene
var scene_were_currently_instancing

func change_scenes (_sceneFrom: GlobalVariables.roomsInHouse, _sceneTo: GlobalVariables.roomsInHouse):
	var scene_to_load
	scene_were_currently_instancing = _sceneTo
	last_scene = _sceneFrom
	if changed_scene_before == false: changed_scene_before = true
	
	match _sceneTo:
		GlobalVariables.roomsInHouse.BATHROOM:
			scene_to_load = bathroom
		GlobalVariables.roomsInHouse.SLEEPYROOM:
			scene_to_load = sleepyroom
		GlobalVariables.roomsInHouse.LIVING_ROOM:
			scene_to_load = loungeroom	
		_:
			Error.ERR_INVALID_PARAMETER
			
	get_tree().change_scene_to_packed(scene_to_load)
			
	
