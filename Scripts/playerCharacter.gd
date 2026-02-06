extends CharacterBody2D

class_name  PlayerClass

@onready var interactionArea = $InteractionArea
@onready var characterSprite = $characterSprite2D

@onready var markerUp = $InteractionPoints/MarkerUp
@onready var markerDown = $InteractionPoints/MarkerDown
@onready var markerLeft = $InteractionPoints/MarkerLeft
@onready var markerRight = $InteractionPoints/MarkerRight

@onready var camera = $Camera2D

var isPaused: bool = false
	
func _ready() -> void:
	interactionArea.position = markerUp.position	
	camera.enabled = false
	GlobalVariables.pauseRegularGameplay.connect(_stop_what_youre_doing)
	GlobalVariables.startRegularGameplay.connect(_ok_you_can_go_again)	

func _physics_process(delta: float) -> void:
	if isPaused == false:
		#first move the interaction area to the relevant point
		if Input.is_action_just_pressed("ui_up"):
			interactionArea.position = markerUp.position
		elif Input.is_action_just_pressed("ui_down"):
			interactionArea.position = markerDown.position
		elif Input.is_action_just_pressed("ui_left"):
			interactionArea.position = markerLeft.position
		elif Input.is_action_just_pressed("ui_right"):
			interactionArea.position = markerRight.position		
		
		# then move the sprite
		var input_vector : Vector2 = Vector2(
			Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
			Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up"))
		velocity = input_vector*50000*delta	
		move_and_slide()
		
		# animation control
		if input_vector != Vector2.ZERO:
			#flip if input_vector -1
			if input_vector.x < 0: characterSprite.flip_h = true
			else: characterSprite.flip_h = false
			characterSprite.play("walk")
		else:
			characterSprite.play("default")
	else: 
		characterSprite.play("default")
		
func _input(event: InputEvent) -> void:
	if isPaused == false:
		if event.is_action_pressed("ui_accept"):
			for area in interactionArea.get_overlapping_areas():
				if area.is_in_group("interactable"):
					area.interact()
					break

func _stop_what_youre_doing() -> void: 	isPaused = true

func _ok_you_can_go_again() -> void: 	isPaused = false
