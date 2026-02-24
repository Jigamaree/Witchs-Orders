extends CanvasLayer

@onready var dialogBox: RichTextLabel = $TextBox/MarginContainer/Dialogue
@onready var buttonAngel: 	Button = $Control/Control/AngelsClimax
@onready var buttonSucc:	Button = $Control/Control/SuccubusHeat
@onready var buttonKnock: 	Button = $Control/Control/KnockerGawker
@onready var buttonStud: 	Button = $Control/Control/StudX
@onready var buttonDance:	Button = $Control/Control/DanceFervor
@onready var buttonKiss: 	Button = $Control/Control/LoversKiss

var failed: bool = false
var nextValue = 1

var arr_words = [
	"Select what potion should go first.",
	"Select what potion should go second.",
	"Select what potion should go third.",
	"Select what potion should go fourth.",
	"Select what potion should go fifth.",
	"Select what potion should go last.",
]


func _ready() -> void:
	dialogBox.text = arr_words[0]
	buttonSucc.grab_focus()

func evaluateNextPotion(i: int):
	if failed:
		print("This doesnt count, because you already failed.")
	elif !failed and i == nextValue:
		print("Successfully found potion " + str(i))
	else:
		failed = true
		print("Oof, failed!")
	nextValue = nextValue+1
	
	if nextValue == 7:
		if failed:	SaveManager.setSaveVariable("potion_state", SaveData_CurrentGame.Puzzle_State.INCORRECT)
		else:		SaveManager.setSaveVariable("potion_state", SaveData_CurrentGame.Puzzle_State.CORRECT)
		queue_free()
		#GlobalVariables.emit_signal("startRegularGameplay")
		GlobalVariables.emit_signal("pauseRegularGameplay")
		GlobalVariables.startDialogue.emit("FinishedPotionSort")
	else:
		dialogBox.text = arr_words[nextValue-1]
			
func _on_angels_climax_pressed() -> void: 	
	buttonAngel.disabled = true
	evaluateNextPotion(1)
func _on_succubus_heat_pressed() -> void: 	
	buttonSucc.disabled = true
	evaluateNextPotion(2)
func _on_knocker_gawker_pressed() -> void: 	
	buttonKnock.disabled = true
	evaluateNextPotion(3)
func _on_stud_x_pressed() -> void:			
	buttonStud.disabled = true
	evaluateNextPotion(4)
func _on_dance_fervor_pressed() -> void:	
	buttonDance.disabled = true
	evaluateNextPotion(5)
func _on_lovers_kiss_pressed() -> void:		
	buttonKiss.disabled = true
	evaluateNextPotion(6)
