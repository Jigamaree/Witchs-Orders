extends class_defaultRoom

class_name studyRoom

@onready var upper_left_marker: 	Marker2D = $CameraThings/CameraMarkerUpperLeft
@onready var lower_left_marker: 	Marker2D = $CameraThings/CameraMarkerLowerLeft
@onready var far_right_marker:		Marker2D = $CameraThings/CameraMarkerFarRight
@onready var camera: 				Camera2D = $CameraThings/Camera2D

@onready var inHangingArea:			bool
@onready var overheadHanging:		Sprite2D = $Overhang/StudyHangings
@onready var overheadHangingArea:	Area2D = $Overhang/StudyHangings/Area2D

@onready var upperHangMarker:		Marker2D = $Overhang/UpperHangingMarker
@onready var lowerHangMarker: 		Marker2D = $Overhang/LowerHangingMarker
@onready var mapTopMarker: 			Marker2D = $Overhang/MapTopMarker
@onready var mapBottomMarker: 		Marker2D = $Overhang/MapBottomMarker


func _ready():
	await get_tree().process_frame
	if NavMan.last_scene == GlobalVariables.roomsInHouse.SLEEPYROOM:
		camera.global_position.y = lower_left_marker.global_position.y
	super._ready()	
	dialogueDictionary = studyConvos.Convos_Dict

func _process(_delta: float) -> void:		
	#placement of camera 
	var target_y = player.global_position.y

	target_y = clamp(
		target_y,
		upper_left_marker.global_position.y,
		lower_left_marker.global_position.y
	)

	var target_x = player.global_position.x
	
	target_x = clamp(
		target_x,
		upper_left_marker.global_position.x,
		far_right_marker.global_position.x
	)

	camera.global_position.y = target_y		
	camera.global_position.x = target_x
	
	##visibility of the overhead hanging
	#if inHangingArea == true:
		#overheadHanging.modulate.a = 0.5
	#else: 
		#overheadHanging.modulate.a = 1
		
	#placement of hanging area
	var _t: float = inverse_lerp(mapTopMarker.global_position.y, mapBottomMarker.global_position.y, player.global_position.y)
	_t = clamp(_t, 0.0, 1.0)
	
	var hanging_y: float = lerp(
		upperHangMarker.global_position.y,
		lowerHangMarker.global_position.y,
		_t
	)
	
	overheadHanging.global_position.y = hanging_y
	

func _on_hanging_area_entered(area: Area2D) -> void:
	if area.is_in_group("playerBody"):
		inHangingArea = true
		var tween = get_tree().create_tween()
		tween.tween_property(overheadHanging, "modulate:a", 0.25, 0.5).from(1)
		await tween.finished


func _on_hanging_area_exited(area: Area2D) -> void:
	if area.is_in_group("playerBody"):
		inHangingArea = false
		var tween = get_tree().create_tween()
		tween.tween_property(overheadHanging, "modulate:a", 1.0, 0.5).from(0.5)
		await tween.finished
