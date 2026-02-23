extends class_defaultRoom

class_name room_StairsDown
var playerMovementLocked = false
var stairs_reset_position: int = 430
@onready var stairsSprite = $StairsSprite
@onready var blocker = $MovingStairsArea2D

@onready var backgroundColourRect: ColorRect = $BackgroundColorRect
@onready var stairsColourRect: ColorRect = $StairsColorRect2

var transition_speed: float = 0.5

var bgStartingColour: Color = Color("#545454")
var bgEndColour: Color = Color("#111418")
var stairsStartColor: Color = Color("#FFF")
var stairsEndColor: Color = Color("#2C2D3B")

var up_pressed_time: float = 0.0
var stillmovingdown: bool = true
var playedMiddleText: bool = false
var playedBottomText: bool = false
var isPaused: bool = false

func _ready():
	super._ready()
	GlobalVariables.pauseRegularGameplay.connect(_on_pause)
	GlobalVariables.startRegularGameplay.connect(_on_startup)	
	backgroundColourRect.color = bgStartingColour
	dialogueDictionary = thePitConvos.thePit_Convos_Dict
	GlobalVariables.startDialogue.emit("topOfStairs")
	GlobalVariables.pauseRegularGameplay.emit()		
	
func _process(delta: float) -> void:
	var target_value := 1.0
	
	if Input.is_action_pressed("ui_up") and stillmovingdown and !isPaused:
		stairsSprite.position.y += 500 * delta
		textRectColorChange(delta, backgroundColourRect, bgStartingColour, bgEndColour)
		textRectColorChange(delta, stairsColourRect, stairsStartColor, stairsEndColor)		
		if backgroundColourRect.color == bgEndColour: print("bg Finished")
		if stairsColourRect.color == stairsEndColor: print("stairs Finish")
		up_pressed_time += delta

	if Input.is_action_pressed("ui_up") and !stillmovingdown and !isPaused:
		up_pressed_time += delta
		
	if stairsSprite.position.y >= stairs_reset_position * 2:
		stairsSprite.position.y = stairs_reset_position

	if playedMiddleText == false and up_pressed_time >= 5:
		GlobalVariables.startDialogue.emit("middleOfStairs")
		GlobalVariables.pauseRegularGameplay.emit()	
		playedMiddleText = true

	if up_pressed_time >= 10 and blocker:
		blocker.queue_free()
		stillmovingdown = false
	
	if playedBottomText == false and up_pressed_time >= 10.3:
		GlobalVariables.startDialogue.emit("bottomOfStairs")
		GlobalVariables.pauseRegularGameplay.emit()			
		playedBottomText = true

func _on_pause(): isPaused = true
func _on_startup(): isPaused = false
	

func textRectColorChange(delta: float, rect: ColorRect, _sc: Color, _ec: Color):
	var target_color: Color = _sc
	
	if Input.is_action_pressed("ui_up"):
		target_color = _ec
		
		var current: Color = rect.color
		var new_color: Color = current.lerp(_ec, transition_speed * delta)
	
		rect.color = new_color	

func _on_moving_stairs_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("playerBody"):
		playerMovementLocked = true
		GlobalVariables.stopUpwardYMovement.emit()

func _on_moving_stairs_area_2d_area_exited(area: Area2D) -> void:
	if area.is_in_group("playerBody"):	
		playerMovementLocked = false
		GlobalVariables.startUpwardYMovement.emit()
