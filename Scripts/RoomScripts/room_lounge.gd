extends class_defaultRoom

@onready var upper_marker: 	Marker2D = $CameraThings/CameraMarkerUpper
@onready var lower_marker: 	Marker2D = $CameraThings/CameraMarkerLower
@onready var camera: 		Camera2D = $CameraThings/Camera2D

func _ready():
	await get_tree().process_frame
	if NavMan.last_scene == GlobalVariables.roomsInHouse.SLEEPYROOM:
		camera.global_position.y = lower_marker.global_position.y
	super._ready()	

func _process(delta: float) -> void:		
	var target_y = player.global_position.y

	target_y = clamp(
		target_y,
		upper_marker.global_position.y,
		lower_marker.global_position.y
	)

	camera.global_position.y = target_y		

	
