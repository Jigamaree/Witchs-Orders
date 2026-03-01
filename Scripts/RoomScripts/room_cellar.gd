extends class_defaultRoom

class_name cellarScript

func _ready():
	super._ready()
	dialogueDictionary = CellarConvos.convos_Dict

func _re_enable_pausing(): 	
	super._re_enable_pausing()
	if SaveManager.getSaveVariable("cellar_haveIgnusMeat") == true or SaveManager.getSaveVariable("cellar_eatenIgnusMeat") == true:
		$CellarMeatHide.visible = true
