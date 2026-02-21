extends Node

var bathroom: PackedScene 	= preload("res://Scenes/Room_Bathroom.tscn")
var sleepyroom: PackedScene = preload("res://Scenes/Room_Bedroom.tscn")
var loungeroom: PackedScene = preload("res://Scenes/Room_Lounge.tscn")
var kitchenRoom: PackedScene = preload("res://Scenes/Room_Kitchen.tscn")
var stairsDownRoom: PackedScene = preload("res://Scenes/Room_StairsDown.tscn")
var pitRoom: PackedScene = preload("res://Scenes/Room_ThePit.tscn")
var cellarRoom: PackedScene = preload("res://Scenes/Room_Cellar.tscn")
var frontDoorRoom: PackedScene = preload("res://Scenes/Room_FrontDoor.tscn")
var studyRoom: PackedScene = preload("res://Scenes/Room_Study.tscn")
var gardenRoom: PackedScene =  preload("res://Scenes/Room_Garden.tscn")

var changed_scene_before: bool = false
var last_scene
var scene_were_currently_instancing

func change_scenes (_sceneFrom: GlobalVariables.roomsInHouse, _sceneTo: GlobalVariables.roomsInHouse):
	var scene_to_load
	scene_were_currently_instancing = _sceneTo
	last_scene = _sceneFrom
	if changed_scene_before == false: changed_scene_before = true
	
	match _sceneTo:
		GlobalVariables.roomsInHouse.BATHROOM:		scene_to_load = bathroom
		GlobalVariables.roomsInHouse.SLEEPYROOM:	scene_to_load = sleepyroom
		GlobalVariables.roomsInHouse.LIVING_ROOM:	scene_to_load = loungeroom
		GlobalVariables.roomsInHouse.KITCHEN:		scene_to_load = kitchenRoom
		GlobalVariables.roomsInHouse.STAIRS_TO_PIT:	scene_to_load = stairsDownRoom		
		GlobalVariables.roomsInHouse.PIT_ROOM:		scene_to_load = pitRoom		
		GlobalVariables.roomsInHouse.CELLAR:		scene_to_load = cellarRoom	
		GlobalVariables.roomsInHouse.FRONT_DOOR:	scene_to_load = frontDoorRoom
		GlobalVariables.roomsInHouse.STUDY:			scene_to_load = studyRoom
		GlobalVariables.roomsInHouse.GARDEN:		scene_to_load = gardenRoom
		_:											print("didnt assign the room in Navman, dummy!")
			
	get_tree().change_scene_to_packed(scene_to_load)
