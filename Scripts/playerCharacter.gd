extends CharacterBody2D

@onready var interactionArea = $InteractionArea
@onready var characterSprite = $characterSprite2D

@onready var markerUp = $InteractionPoints/MarkerUp
@onready var markerDown = $InteractionPoints/MarkerDown
@onready var markerLeft = $InteractionPoints/MarkerLeft
@onready var markerRight = $InteractionPoints/MarkerRight

func _physics_process(delta: float) -> void:
	
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
		characterSprite.play("walk")
	else:
		characterSprite.play("default")
