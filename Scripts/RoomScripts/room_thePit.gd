extends class_defaultRoom

class_name room_thePit

@onready var upper_marker: 	Marker2D = $CameraThings/CameraMarkerUpper
@onready var lower_marker: 	Marker2D = $CameraThings/CameraMarkerLower
@onready var camera: 		Camera2D = $CameraThings/Camera2D
@onready var tentacles: 	Sprite2D = $Tentacles

func _ready():
	super._ready()
	dialogueDictionary = thePitConvos.thePit_Convos_Dict			
	if !SaveManager.getSaveVariable("thePit_hasCompletedStaircase"):	
		SaveManager.setSaveVariable("thePit_hasCompletedStaircase", true)
	await get_tree().process_frame
	camera.global_position.y = lower_marker.global_position.y
	GlobalVariables.startDialogue.emit("enteringRoom")
	GlobalVariables.pauseRegularGameplay.emit()		
	GlobalVariables.dragPlayerForward.connect(_on_player_drag)

func _process(_delta: float) -> void:		
	var target_y = player.global_position.y

	target_y = clamp(
		target_y,
		upper_marker.global_position.y,
		lower_marker.global_position.y
	)

	camera.global_position.y = target_y		

func get_dialogue_entry(objectName: String):
	dialogue_instance.conv = thePitConvos.thePit_Convos_Dict[objectName]
	
func _on_player_drag(): tentacles.visible = true
