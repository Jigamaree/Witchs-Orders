extends CanvasLayer

class_name DialogueSystem

var text_rate = 0.02 # The speed of the typewriter effect in seconds; lower is faster
var text_finished = true # Used to show a continue button or key press prompt
var inital_input_blocked = true
var last_was_background = false

@export var conv = {} # This will have different conversations loaded into it when dialogue starts
var index = 1 # Used to track the current line of dialogue within the conversation
# Each line sets the index to a specific number, then the dialogue function displays the right line
# Condition checks true/false can each have their own line that gets sent to, and so can each player choice

var flag_dict = {} 

var pitch_dict = {
	"none": 		preload("res://Audio/clink1.wav"),
	"": 			preload("res://Audio/clink1.wav"),
	"MC": 			preload("res://Audio/voice2.wav"),
	"Ignus": 		preload("res://Audio/ignusVoice.wav"),
	"Saevii": 		preload("res://Audio/Saevii.wav"),
	"Witch": 		preload("res://Audio/Witch.wav"),
	"Witch_hide": 	preload("res://Audio/Witch.wav"),	
}

# Image setup
@onready var portTextRect: TextureRect = $Control/PortraitBox/PortTextureRect

var pc_expression_dict = {
	"default": 		preload("res://Assets/Dialogue/PC Dialogue Faces/PC_Neutral_Base.png"),
	"exasperated": 	preload("res://Assets/Dialogue/PC Dialogue Faces/PC_Neutral_Exasperated.png"),
	"eep": 			preload("res://Assets/Dialogue/PC Dialogue Faces/PC_Eep.png"),
	"happy":		preload("res://Assets/Dialogue/PC Dialogue Faces/PC_Happy.png"),
	"angry":		preload("res://Assets/Dialogue/PC Dialogue Faces/PC_Angry.png"),
	"sad": 			preload("res://Assets/Dialogue/PC Dialogue Faces/PC_Sad.png")
}

# Nodes for the system
@onready var dialogue: RichTextLabel = $Control/TextBox/MarginContainer/Dialogue # The dialogue text
@onready var name_rect: ColorRect = $Control/NPCBox		# The box that contains the character's name
@onready var npc_name: Label = $Control/NPCBox/NPCName # The name of the NPC speaking the current line
@onready var continue_arrow: AnimatedSprite2D = $Control/ContinueArrowSprite # How you advance lines (can be a keypress instead)
@onready var choice_box: VBoxContainer = $Control/ChoiceBox # Where the buttons for choices go when needed
@onready var audio_player: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var portrait_box: ColorRect = $Control/PortraitBox
@onready var portrait_text: TextureRect = $Control/PortraitBox/PortTextureRect
@onready var background_tint_rect: ColorRect = $Control/BackgroundTintRect
@onready var background_image_rect: TextureRect = $Control/CenterContainer/imageDisplayRect

var scroll_direction := 0
@export var scroll_speed := 400.0
var boxHasFocus = true
var scroll_amount = 30

func _ready() -> void:
	continue_arrow.hide()
	choice_box.hide()
	unblock_input_after_delay()
	inital_conversation_check()
	
	set_dialogue()

func inital_conversation_check():
	if conv.has(0):
		index = 0
		if conv[index].has("checkIgnusState"):
			checkIgnusState()
		elif conv[index].has("checkSaveConditions"):
			checkSaveConditions()			
		else:
			checkValueInSave()

func unblock_input_after_delay():
	await get_tree().create_timer(0.3).timeout
	inital_input_blocked = false

func _process(delta: float) -> void:			
	if Input.is_action_just_pressed("ui_accept") and inital_input_blocked == false and !choice_box.visible:
		advance_line()

	# Show continue button after typewriter effect (this could also be an arrow prompt or such)
	if conv[index].has("choice"): continue_arrow.hide()
	else: continue_arrow.visible = text_finished

	if continue_arrow.visible: 
		continue_arrow.play("default")
		
	if scroll_direction == 0:
		return

	var bar = dialogue.get_v_scroll_bar()
	bar.value += scroll_direction * scroll_speed * delta
	
func any_button_has_focus() -> bool:
	var focused := get_viewport().gui_get_focus_owner()
	return focused != null and choice_box.is_ancestor_of(focused)
		
func _unhandled_input(event: InputEvent) -> void:	
	if event.is_action_pressed("ui_left") or event.is_action_pressed("ui_right"):
		if choice_box.visible == true:		
			if !boxHasFocus:
				get_viewport().gui_release_focus()
				dialogue.grab_focus()
				boxHasFocus = true
			else:
				choice_box.get_child(0).grab_focus()
				boxHasFocus = false
		
	if event.is_action_pressed("ui_down"):
		scroll_direction = 1

	elif event.is_action_pressed("ui_up"):
		scroll_direction = -1

	elif event.is_action_released("ui_down") or event.is_action_released("ui_up"):
		scroll_direction = 0

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_action("ui_scroll_down"):
		var bar = dialogue.get_v_scroll_bar()
		bar.value += scroll_amount
	elif event is InputEventMouseButton and event.is_action("ui_scroll_up"):
		var bar = dialogue.get_v_scroll_bar()
		bar.value -= scroll_amount		

func set_dialogue():
	#var dlg = conv[index].dialogue
	# Make a temp variable to make the code cleaner

	var dlg: String = replace_tags()
	
	set_speaker_title_and_visability()
	set_portrait()
	check_for_background_or_full_image()
	fade_in_or_out()
	set_text_alignment()
	specialActions()
		
	# remove indentations
	dlg = dlg.replace("\t", "")
	var tab_count = dlg.count("\t")

	dialogue.text = dlg
	
	# Typewriter effect + sound
	text_finished = false
	dialogue.visible_characters = 0
	var blip_count = 0
	var talk_blip
	
	#find the speaker's voice in the list saved in here
	if pitch_dict.has(npc_name.text):
		talk_blip = pitch_dict[npc_name.text]
	#otherwise have a fallback!
	else: 
		talk_blip = load("res://Audio/ignusVoice.wav")
	audio_player.stream = talk_blip
	
	#THE typewriter effect
	
	while dialogue.visible_characters < dialogue.text.length():
		dialogue.visible_characters += 1
		blip_count += 1
		if blip_count == 3:
			# Vary the pitch a bit to make it a little more natural and so it doesn't get too monotonous
			#talk_blip.pitch_scale = randf_range(0.97, 1.03)
			audio_player.pitch_scale = randf_range(0.98, 1.02)			
			audio_player.play()
			blip_count = 0
		control_rate()			
		await get_tree().create_timer(text_rate).timeout
	text_finished = true
	
	manage_choices()

func set_speaker_title_and_visability():
	# Set speaker name
	npc_name.text = conv[index].speaker
	#hide name box if nobody is talking
	if npc_name.text == "MC":
		npc_name.text = "Alessia"
	
	if npc_name.text == "none" or npc_name.text == "" or npc_name.text == "Saevii" or npc_name.text.contains("hide"): 
		name_rect.visible = false
		portrait_box.visible = false
	else: 
		name_rect.visible = true
		portrait_box.visible = true	

func set_text_alignment():
	if conv[index].has("completelyCentered"):
		dialogue.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
		dialogue.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	else:
		dialogue.horizontal_alignment = HORIZONTAL_ALIGNMENT_LEFT
		dialogue.vertical_alignment = VERTICAL_ALIGNMENT_TOP

func set_portrait():
	#deal with portrait
	var emote = ""
		
	if conv[index].has("emote") and conv[index].speaker == "MC" or conv[index].speaker == "Alessia":
		match conv[index].emote:
			"exasperated": 	portTextRect.texture = pc_expression_dict["exasperated"]
			"eep": 			portTextRect.texture = pc_expression_dict["eep"]
			"happy":		portTextRect.texture = pc_expression_dict["happy"]
			"sad":			portTextRect.texture = pc_expression_dict["sad"]
			"angry":			portTextRect.texture = pc_expression_dict["angry"]
	else: portTextRect.texture = pc_expression_dict["default"]

func check_for_background_or_full_image():
	# background image - image that appears over a dark background, like key items
	if conv[index].has("keepImage"):
		return
	
	if conv[index].has("backgroundImage"):
		# set image here
		
		if conv[index].get("backgroundImage", null) == "bottles":
			background_image_rect.texture = load("res://Assets/InScene Items/Study - Close Up Bottles.png")
		
		var tween = get_tree().create_tween()
		tween.set_parallel(true)
		tween.tween_property(background_tint_rect, "modulate:a", 140.0, 0.5).from(0)
		tween.tween_property(background_image_rect, "modulate:a", 1.0, 0.2).from(0)		
		await tween.finished
		#this means the next statement doesn't run unnessasarily
		last_was_background = true
	elif !conv[index].has("backgroundImage") and last_was_background == true:
		var tween = get_tree().create_tween()
		tween.set_parallel(true)
		tween.tween_property(background_image_rect, "modulate:a", 0, 0.2)		
		tween.tween_property(background_tint_rect, "modulate:a", 0, 0.5)
		await tween.finished	
		last_was_background = false

	#illustration - replaces the background image like (hopeful) sex scene images!
	if conv[index].has("illustration"):
		print("a FULL image would be set here!")
		
func fade_in_or_out():
	if conv[index].has("fadeIntoScene"):	
		var tween = get_tree().create_tween()
		tween.tween_property(background_tint_rect, "modulate:a", 0, 0.5).from(255.0)
		await tween.finished			
	elif conv[index].has("fadeToBlack"):	
		background_tint_rect.visible = true
		var tween = get_tree().create_tween()
		#tween.set_parallel(true)
		tween.tween_property(background_tint_rect, "modulate:a", 255.0, 0.5).from(0)
		await tween.finished
		#this means the next statement doesn't run unnessasarily

func specialActions():
	if conv[index].has("specialAction"):
		if conv[index].get("specialAction", null) == "drag":
			GlobalVariables.emit_signal("dragPlayerForward")
		if conv[index].get("specialAction", null) == "singleTentacle":
			GlobalVariables.emit_signal("showSingleTentacle")
	
var rate_norm = 0.03
var rate_comma = 0.12
var rate_period = 0.24

func control_rate():
	if dialogue.text.count(".", dialogue.visible_characters - 1, dialogue.visible_characters):
		text_rate = rate_period
	elif dialogue.text.count("!", dialogue.visible_characters - 1, dialogue.visible_characters):
		text_rate = rate_period * 2
	elif dialogue.text.count("?", dialogue.visible_characters - 1, dialogue.visible_characters):
		text_rate = rate_period * 2
	elif dialogue.text.count(",", dialogue.visible_characters - 1, dialogue.visible_characters):
		text_rate = rate_comma
	else:	
		text_rate = rate_norm

func replace_tags():
	var dl = conv[index]
	var dlg: String = conv[index].dialogue
		# For if the player can name their own character
	dlg = dlg.replace("%p", "[Player's custom name") 
		# Simpler color change starting/end tags for highlights
		# I use hs/he for highlight start/highlight end, and the same format for the others, but this could be anything you wanted
	dlg = dlg.replace("%hs", "[color=#9aa57c]")
	dlg = dlg.replace("%he", "[/color]")
		# The same for the shake effect with specific parameters
	dlg = dlg.replace("%ss", "[shake rate=6.0 level=6 connected=1]")
	dlg = dlg.replace("%se", "[/shake]")
		# The same for the wave effect using default parameters
	dlg = dlg.replace("%ws", "[wave]")
	dlg = dlg.replace("%we", "[/wave]")
	
	if conv[index].has("inSlantyText"):
		dlg = "[i]" + dlg + "[/i]"
		
	return dlg

var demo_conv2 = {
		1: { "speaker": "A Friend", "dialogue": "Then, [wave]instead[/wave] of a line of [color=#9aa57c]dialogue[/color] looking like [shake rate=6.0 level=6 connected=1]this[/shake]...", "goto": 2 },
		2: { "speaker": "A Friend", "dialogue": "It %wswould%we look like %ssthis%se instead, which is much %hsquicker%he to write!", "end": true } }

func manage_choices():
	if conv[index].has("choice"):
		for n in choice_box.get_children():
			choice_box.remove_child(n)
			n.queue_free()
			
		choice_box.show()
		for c in conv[index].choice:
			# Make a new button
			var btn = Button.new()
			var theme: Theme = preload("res://Assets/ButtonTheme.tres")
			btn.theme = theme
			btn.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
			# Set the button's text to the player's choice dialogue
			btn.text = conv[index].choice[c].choice
			# Connect the button's pressed signal to the make_choice function and pass the number of the line it leads to
			btn.pressed.connect(make_choice.bind(conv[index].choice[c].goto))
			# Add the button to the container
			choice_box.add_child(btn)


			
func make_choice(goto):
	index = goto
	choice_box.hide()
	set_dialogue()

func advance_line():
	if text_finished:
		boxHasFocus = true
		# Simple line, always goes to the same next line
		if conv[index].has("setSaveVariable"):
			var setValueArr = conv[index].setSaveVariable
			SaveManager.setSaveVariable(setValueArr[0],setValueArr[1])

		##TEST	
		if conv[index].has("preloadConversation"):
			GlobalVariables.emit_signal("preloadConversation", conv[index].get("preloadConversation", null))
			
		if conv[index].has("preloadPotionMenu"):
			GlobalVariables.emit_signal("preloadPotionMenu")
									
		if conv[index].has("set"):
			var flag = conv[index].get("set", null)
			set_condition(flag)
					
		if conv[index].has("goto"):
			index = conv[index].goto		
			set_dialogue()
		
		elif conv[index].has("checkSaveConditions"):
			checkSaveConditions()
		
		elif conv[index].has("checkIgnusState"): 
			checkIgnusState()
		
		# "keyToCheck": "bedroom_doorLocked", "wantedValue": "false", "goto_false": 4, "goto_true": 5			
		elif conv[index].has("checkSaveVariable"):
			checkValueInSave()
			
		# Line that checks a condition to know which line to go to next
		elif conv[index].has("check"):
			# Check if the condition dictionary has the condition
			if flag_dict.has(conv[index].check.condition):
				# If the condition is in the dictionary and true
				if flag_dict[conv[index].check.condition]:
					index = conv[index].check.goto_true
				# If it's in the dictionary and false
				else:
					index = conv[index].check.goto_false
			# If the condition dictionary doesn't have the condition, it counts as false
			else:
				index = conv[index].check.goto_false
			set_dialogue()
			
		# Line that ends the conversation
		elif conv[index].has("end"):
			GlobalVariables.startRegularGameplay.emit()
			queue_free()
		
		elif conv[index].has("playEnding"):
			SaveManager.setSaveVariable("finalEnding", conv[index].get("playEnding", null))
			get_tree().change_scene_to_file("res://Scenes/Epilogue Scenes/Epilogue_Hard.tscn")
			
		elif conv[index].has("END_OF_GAME"):	
			SaveManager.setSaveVariable(conv[index].get("END_OF_GAME", true), true)
			SaveManager.reset_current_run()
			get_tree().change_scene_to_file("res://Scenes/AssetScenes/MainMenu.tscn")
			
			#@export var conv = {} # This will have different conversations loaded into it when dialogue starts
			#var index = 1 			
			
	else:
		dialogue.visible_characters = len(dialogue.text)

func set_condition(cond):
	flag_dict[cond] = true
	
# popped this out so that i can use it on the onset
func checkValueInSave():
	# get the data to check
	var _curr = conv[index].checkSaveVariable["keyToCheck"] 
	var _currSavedValue = SaveManager.getSaveVariable(_curr)			
		
	if str(_currSavedValue) == str(conv[index].checkSaveVariable["wantedValue"]):
		index = conv[index].checkSaveVariable.goto_true
	else:
		index = conv[index].checkSaveVariable.goto_false				
	set_dialogue()	
		
func checkIgnusState():
	var ignus_fed 				= SaveManager.getSaveVariable("ignus_fed")
	var ignus_fucked_ate_out  	= SaveManager.getSaveVariable("ignus_fucked_ate_out")
	var cellar_haveIgnusMeat 	= SaveManager.getSaveVariable("cellar_haveIgnusMeat")
	
	if ignus_fucked_ate_out:
		index = conv[index].checkIgnusState.goto_fucked
	elif ignus_fed:
		index = conv[index].checkIgnusState.goto_fed
	elif !ignus_fed and cellar_haveIgnusMeat:
		index = conv[index].checkIgnusState.goto_canfeed
	else:
		index = conv[index].checkIgnusState.goto_cantfeed	

func checkSaveConditions():
	var _ci = conv[index]
	var block = conv[index].checkSaveConditions
	
	for condition in block:
		var save_key = condition["save_key"]
		
		if save_key != "":
			var value = SaveManager.getSaveVariable(condition.save_key)		
			if value == true:
				index = condition["goto"]
				print(str(save_key) + " is true")
				break
		else:
			index = condition["goto"]

	print(str(index))
	set_dialogue()		
