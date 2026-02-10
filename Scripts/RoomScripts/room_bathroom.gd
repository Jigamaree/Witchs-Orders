extends class_defaultRoom

func get_dialogue_entry(objectName: String):
	dialogue_instance.conv = sleepyroomConvos.sleepyroom_Convos_Dict[objectName]
