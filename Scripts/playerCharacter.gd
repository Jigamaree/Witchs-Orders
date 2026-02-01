extends CharacterBody2D

var input_dir
var moving = false
var tile_size = 50
@onready var characterSprite = $characterSprite2D

func _physics_process(delta: float) -> void:
	input_dir = Vector2.ZERO
	var notMoving = false
	
	if Input.is_action_pressed("ui_up"):
		input_dir = Vector2.UP
		move()
	if Input.is_action_pressed("ui_down"):
		input_dir = Vector2.DOWN
		move()
	if Input.is_action_pressed("ui_left"):
		input_dir = Vector2.LEFT
		move()
	if Input.is_action_pressed("ui_right"):
		input_dir = Vector2.RIGHT
		move()
	else: notMoving = true
	
	# animation control
	if notMoving == true:
		characterSprite.play("default")
	else:
		characterSprite.play("walk")
	move_and_slide()
	
func move():
	if input_dir:
		if moving == false:
			moving = true
			var tween = create_tween()
			tween.tween_property(self, "position", position + input_dir*tile_size, 1)
			tween.set_speed_scale(25)
			tween.tween_callback(move_false)
			
func move_false():
	moving = false
	
