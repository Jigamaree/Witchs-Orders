extends CharacterBody2D

var input_dir
var moving = false
var tile_size = 50
@onready var characterSprite = $characterSprite2D

func _physics_process(delta: float) -> void:
	input_dir = Vector2.ZERO
	var notMoving = false
	
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
	
			
func move_false():
	moving = false
	
