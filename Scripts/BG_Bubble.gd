extends Node2D

@export var speed: float = 100.0
@export var wave_amplitude: float = 20.0
@export var wave_frequency: float = 2.0

var time_passed: float = 0.0
var start_x: float

@onready var spriteText = $Sprite2D

var textures := [
	preload("res://Assets/InScene Items/_Title - Bubble1.png"),
	preload("res://Assets/InScene Items/_Title - Bubble2.png"),
	preload("res://Assets/InScene Items/_Title - Bubble3.png"),	
]

func _ready():
	var random_texture = textures[randi() % textures.size()]
	spriteText.texture = random_texture
	
	var random_scale = randf_range(0.5, 1.0)
	scale = Vector2.ONE * random_scale	
	
	var randNum = RandomNumberGenerator.new()
		
	wave_amplitude = randNum.randf_range(10.0, 100.0)
	wave_frequency = randNum.randf_range(1.0,5.0)
	var brightness = randNum.randf_range(0.5, 1.5)
	spriteText.modulate = Color(brightness, brightness, brightness, 1.0)		
	
	start_x = global_position.x

func _process(delta):
	time_passed += delta
	
	# Move upward
	position.y -= speed * delta
	
	# Apply wave offset
	position.x = start_x + sin(time_passed * wave_frequency) * wave_amplitude	
	
	position.y -= speed * delta
	
	if not get_viewport_rect().has_point(global_position):
		queue_free()
