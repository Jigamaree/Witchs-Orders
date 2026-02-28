extends CanvasLayer

class_name DebugMenu

@onready var currentGameDataVBox = $CenterContainer/ColorRect/ColorRect/HBoxContainer/currentGameDataVBox
@onready var currentGameDataVBox2 = $CenterContainer/ColorRect/ColorRect/HBoxContainer/currentGameDataVBox2
@onready var currentGameDataVBox3 = $CenterContainer/ColorRect/ColorRect/HBoxContainer/currentGameDataVBox3
@onready var persistentDataVBox = $CenterContainer/ColorRect/ColorRect/HBoxContainer/EndingsVBox

var count = 0
var totalCount
var thirdCount
var twothirdCount

func _ready() -> void:
	if SaveManager.save_data.currentGameData.current_save_data_dictionary:
		
		totalCount = SaveManager.save_data.currentGameData.current_save_data_dictionary.size()
		thirdCount = totalCount/3
		twothirdCount = thirdCount+thirdCount			
		
		for key in SaveManager.save_data.currentGameData.current_save_data_dictionary:
			
			var currentVBox		
			if count <= thirdCount: currentVBox = currentGameDataVBox
			elif count <= twothirdCount: currentVBox = currentGameDataVBox2
			else: currentVBox = currentGameDataVBox3	
			count = count+1			
			
			var dict = SaveManager.save_data.currentGameData.current_save_data_dictionary
			var value = dict[key]
			var label: Label = Label.new()
			var checkBox: CheckBox
			
			if typeof(value) == TYPE_BOOL:
				var hbox := HBoxContainer.new()
				label.text = str(key)
				hbox.add_child(label)
				
				checkBox = CheckBox.new()
				checkBox.button_pressed = value
				checkBox.toggled.connect(func(pressed: bool) -> void: SaveManager.setSaveVariable(key, pressed))
				hbox.add_child(checkBox)
				
				currentVBox.add_child(hbox)
				
			elif typeof(value) == TYPE_DICTIONARY:
				for plant_name in value:
					var collected = value[plant_name]
					print("Name:", plant_name, "Collected:", collected)	
					var hbox := HBoxContainer.new()	
					var _label = Label.new()
					_label.text = plant_name
					print(_label.text + "!!!")
					hbox.add_child(_label)
					
					checkBox = CheckBox.new()
					checkBox.button_pressed = collected
					checkBox.toggled.connect(func(pressed: bool) -> void: SaveManager.setSaveVariable(key, pressed))
					hbox.add_child(checkBox)					
					
					currentGameDataVBox3.add_child(hbox)
					count = count+1
					
			
			#TO:DO - change value of anything besides bools			
			else:	
				var _v = str(key) + ": " + str(SaveManager.save_data.currentGameData.current_save_data_dictionary[key])			
				label.text = _v		
				currentGameDataVBox.add_child(label)
				
		if SaveManager.save_data.multiRunSaveData.tracked_ending_data_dictionary:
			var dict = SaveManager.save_data.multiRunSaveData.tracked_ending_data_dictionary
			for key in dict:
				var value = dict[key]
				var label: Label = Label.new()
				var checkBox: CheckBox
				
				if typeof(value) == TYPE_BOOL:
					var hbox := HBoxContainer.new()
					label.text = str(key)
					hbox.add_child(label)
					
					checkBox = CheckBox.new()
					checkBox.button_pressed = value
					checkBox.toggled.connect(func(pressed: bool) -> void: SaveManager.setSaveVariable(key, pressed))
					hbox.add_child(checkBox)
					
					persistentDataVBox.add_child(hbox)						
	#print(str(count))
		
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_debug") or Input.is_action_just_pressed("ui_pause"):
		self.hide()
		remove_debug_menu()

func remove_debug_menu() -> void:
	GlobalVariables.emit_signal("quickCountdown")
	get_tree().paused = false
	queue_free()


func _on_true_endings_pressed() -> void:
	SaveManager.setSaveVariable("study_cauldron_succeeded", true)
	SaveManager.setSaveVariable("potions_correct", true)
	SaveManager.setSaveVariable("knight_fed", true)
	SaveManager.setSaveVariable("ignus_fed", true)
	SaveManager.setSaveVariable("pit_fucked", true)		
	
