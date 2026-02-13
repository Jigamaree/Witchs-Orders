extends class_defaultRoom

class_name room_StairsDown
var playerMovementLocked = false
var stairs_reset_position: int = 380
@onready var stairsSprite = $StairsSprite

@onready var backgroundColourRect: ColorRect = $BackgroundColorRect
@onready var stairsColourRect: ColorRect = $StairsColorRect2

func _process(delta: float) -> void:
	var target_value := 1.0
	
	if Input.is_action_pressed("ui_up"):
		stairsSprite.position.y += 500 * delta
	if stairsSprite.position.y >= stairs_reset_position * 2:
		stairsSprite.position.y = stairs_reset_position

func _on_moving_stairs_area_2d_area_entered(area: Area2D) -> void:
	print("hi!")
	if area.is_in_group("player"):
		playerMovementLocked = true
		GlobalVariables.stopUpwardYMovement.emit()

func _on_moving_stairs_area_2d_area_exited(area: Area2D) -> void:
	print("bye!")
	if area.is_in_group("player"):	
		playerMovementLocked = false
		GlobalVariables.startUpwardYMovement.emit()
