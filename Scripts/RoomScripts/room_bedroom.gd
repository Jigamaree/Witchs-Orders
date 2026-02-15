extends class_defaultRoom

func get_dialogue_entry(objectName: String):
	super.get_dialogue_entry(objectName)
	dialogue_instance.conv = sleepyroomConvos.sleepyroom_Convos_Dict[objectName]
