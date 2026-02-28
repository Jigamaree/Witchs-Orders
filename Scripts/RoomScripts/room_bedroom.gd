extends class_defaultRoom

class_name bedroomScript

func _ready():
	super._ready()
	dialogueDictionary = sleepyroomConvos.sleepyroom_Convos_Dict
		###TODO: uncomment before final game release
	if SaveManager.getSaveVariable("bedroom_prologuePlayed") == false:
		GlobalVariables.startDialogue.emit("Prologue")
		GlobalVariables.pauseRegularGameplay.emit()		
