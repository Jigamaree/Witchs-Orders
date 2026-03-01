extends class_defaultRoom

@onready var upper_marker: 	Marker2D = $CameraThings/CameraMarkerUpper
@onready var lower_marker: 	Marker2D = $CameraThings/CameraMarkerLower
@onready var camera: 		Camera2D = $CameraThings/Camera2D
@onready var ignusSprite: AnimatedSprite2D = $BasicRoomItems/LivingIgnus
@onready var wateringCan: Sprite2D = $BasicRoomItems/WateringCan
var loungeConvosDictionary = LoungeConvos.convos_Dict

func _ready():
	super._ready()
	GlobalVariables.startRegularGameplay.connect(_post_dialogue_check)	
	_post_dialogue_check()
	await get_tree().process_frame
	if NavMan.last_scene == GlobalVariables.roomsInHouse.SLEEPYROOM or NavMan.last_scene == GlobalVariables.roomsInHouse.FRONT_DOOR or NavMan.last_scene == GlobalVariables.roomsInHouse.STUDY:
		camera.global_position.y = lower_marker.global_position.y
	else: camera.global_position.y = upper_marker.global_position.y
	dialogueDictionary = LoungeConvos.convos_Dict
	ignusSprite.play("default")
	if SaveManager.getSaveVariable("lounge_enteredFirstTime") == false:
		GlobalVariables.startDialogue.emit("firstEntry")
		GlobalVariables.pauseRegularGameplay.emit()		

func _post_dialogue_check():
	if SaveManager.getSaveVariable("lounge_takenWateringCan") == true:
		wateringCan.visible = false

func _process(_delta: float) -> void:
	super._process(_delta)		
	var target_y = player.global_position.y

	target_y = clamp(
		target_y,
		upper_marker.global_position.y,
		lower_marker.global_position.y
	)

	camera.global_position.y = target_y		

func _on_start_dialogue(objectName: String):
	
	if dialogue_instance:
		return
		
	if objectName == "Ignus":
		dialogueDictionary = ignusConvoDict
		objectName = ""
	else: dialogueDictionary = loungeConvosDictionary	
			
	if 	!dialogueDictionary.has(objectName):
		print("Couldn't find + '" + str(objectName) + "' in dict.")
		objectName = ""
		print("!!!")
		
	dialogue_instance = dialogue_overlay.instantiate()

	get_dialogue_entry(objectName)
	add_child(dialogue_instance)	

func handleCamera(pause_instance: Control):
	pause_instance.global_position = camera.get_screen_center_position() - pause_instance.size 
	
func _re_enable_pausing(): 	
	super._re_enable_pausing()
	if SaveManager.getSaveVariable("lounge_fireplaceLit") == true:
		$BasicRoomItems/LoungeFire.visible = true
