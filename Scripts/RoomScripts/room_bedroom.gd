extends class_defaultRoom

class_name bedroomScript

func _ready():
	super._ready()
	dialogueDictionary = sleepyroomConvos.sleepyroom_Convos_Dict

	if SaveManager.getSaveVariable("bedroom_prologuePlayed") == false:
		if SaveManager.getSaveVariable("skipPrologue") == false:
			GlobalVariables.startDialogue.emit("Prologue")
			GlobalVariables.pauseRegularGameplay.emit()		
