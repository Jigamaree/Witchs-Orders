extends class_defaultRoom

class_name class_Garden

@onready var upper_marker: 	Marker2D = $CameraThings/CameraMarkerUpper
@onready var lower_marker: 	Marker2D = $CameraThings/CameraMarkerLower
@onready var right_marker: 	Marker2D = $CameraThings/CameraMarkerRight
@onready var camera: 		Camera2D = $CameraThings/Camera2D

func _ready() -> void:
	super._ready()
	camera.global_position.y = lower_marker.global_position.y
	dialogueDictionary = gardenConvos.Convos_Dict

func _process(_delta: float) -> void:		
	var target_y = player.global_position.y

	target_y = clamp(
		target_y,
		upper_marker.global_position.y,
		lower_marker.global_position.y
	)

	camera.global_position.y = target_y		
	
	var target_x = player.global_position.x

	target_x = clamp(
		target_x,
		upper_marker.global_position.x,
		right_marker.global_position.x
	)

	camera.global_position.x = target_x		
