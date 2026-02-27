extends class_defaultRoom

class_name frontDoorScript

func _ready():
	super._ready()
	dialogueDictionary = FrontDoorConvos.convos_Dict
	GlobalVariables.plantBloom.connect(_on_plant_bloom)

func _on_plant_bloom():
		$"Sprites/FrontDoorPlant(dead)".visible = false
		$"Sprites/FrontDoorPlant(alive)".visible = true
