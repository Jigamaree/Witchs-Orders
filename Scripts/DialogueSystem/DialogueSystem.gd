extends CanvasLayer

class_name DialogueSystem

var text_rate = 0.03 # The speed of the typewriter effect in seconds; lower is faster
var text_finished = true # Used to show a continue button or key press prompt
var inital_input_blocked = true

@export var conv = {} # This will have different conversations loaded into it when dialogue starts
var index = 1 # Used to track the current line of dialogue within the conversation
# Each line sets the index to a specific number, then the dialogue function displays the right line
# Condition checks true/false can each have their own line that gets sent to, and so can each player choice

var flag_dict = {} 
# For conditions set and checked by the system
# I would probably put this in a game manager script or similar, but if it's a small game that might not be needed

# The way I do conditions, anything that the dialogue system can set is false unless the system changes it,
#   and not being in the dictionary counts as being false
# So you first check if the flag exists and if it doesn't it counts as false,
#   but if it does you just then check if it's true or false
# That way you don't have to maintain a list of every flag you want to use in game,
#   because it's SUPER easy to forget to add one and break the system at runtime

# The format for conversations; you could have a ton of these or one super dictionary with them as subdictionaries
var demo_conv = {
	1: { "speaker": "A Friend", "dialogue": "This is a simple line of dialogue!", "goto": 2 },
	2: { "speaker": "A Friend", "dialogue": "Here's one that sets a condition.", "set": "some_flag", "goto": 3 },
	3: { "speaker": "A Friend", "dialogue": "Now we can check that condition and change what comes next.", "check": { "condition": "some_flag", "goto_false": 4, "goto_true": 5 } },
	4: { "speaker": "A Friend", "dialogue": "This would be if the condition were false...", "goto": 6 },
	5: { "speaker": "A Friend", "dialogue": "This would be if the condition were true...", "goto": 6 },
	6: { "speaker": "A Friend", "dialogue": "Now the big guns: choices!", "choice": {"c1": {"choice": "I like choices.", "goto": 7 }, "c2": { "choice": "Choices are scary.", "goto": 8 } } },
	7: { "speaker": "A Friend", "dialogue": "I like them too!", "goto": 9 },
	8: { "speaker": "A Friend", "dialogue": "I guess they are kind of scary.", "goto": 9 },
	9: { "speaker": "A Friend", "dialogue": "Anyway, bye now.", "end": true } }

# An example of how you could structure multiple conversations in one dictionary by individual NPC
var steve_convos = {
	"meeting": {
		1: { "speaker": "Steve", "dialogue": "Hi, I'm Steve, nice to meet you!", "goto": 2 },
		2: { "speaker": "Steve", "dialogue": "See you later!", "end": true } },
	"attack": {
		1: { "speaker": "Steve", "dialogue": "Sorry but it's time to fight!", "goto": 2 },
		2: { "speaker": "Steve", "dialogue": "Prepare to meet your end!", "end": true } } }
		
# An example of how you could structure multiple conversations in one dictionary by individual NPC
var test_convo ={
		1: { "speaker": "Nameless", "dialogue": "Now we're cooking with gas.", "goto": 2 },
		2: { "speaker": "Nameless", "dialogue": "I'm sure you can tell by my face I'm delighted.", "end": true }, 
		}

var pitch_dict = {
	"none": preload("res://Audio/clink1.wav"),
	"MC": preload("res://Audio/voice2.wav"),
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

func _ready() -> void:
	# Load the relevant conversation; in a real game the active one would be passed in depending on who you're talking to
	#conv = test_convo
	
	# format == steve_convos["attack"]
	# = demo_conv
	continue_arrow.hide()
	choice_box.hide()
	unblock_input_after_delay()
	#GlobalVariables.startDialogue.connect(_start_dialogue)
	set_dialogue()

func unblock_input_after_delay():
	await get_tree().create_timer(0.3).timeout
	inital_input_blocked = false

func _process(delta: float) -> void:
	if text_finished and choice_box.visible == true:
		print("keyboard select?")
	
	if Input.is_action_just_pressed("ui_accept") and inital_input_blocked == false:
		advance_line()
	
	# Show continue button after typewriter effect (this could also be an arrow prompt or such)
	if conv[index].has("choice"): continue_arrow.hide()
	else: continue_arrow.visible = text_finished

	if continue_arrow.visible: 
		continue_arrow.play("default")

func set_dialogue():
	# Make a temp variable to make the code cleaner
	var dlg = conv[index].dialogue
	
	# Set speaker name
	npc_name.text = conv[index].speaker
	#hide name box if nobody is talking
	
	if npc_name.text == "none": 
		name_rect.visible = false
		portrait_box.visible = false
	else: 
		name_rect.visible = true
		portrait_box.visible = true
	
	# Set label text to line
	dialogue.text = dlg
	
	# Typewriter effect + sound
	text_finished = false
	dialogue.visible_characters = 0
	var blip_count = 0
	var talk_blip
	
	print(npc_name.text)
	print("---")
	#find the speaker's voice in the list saved in here
	if pitch_dict.has(npc_name.text):
		talk_blip = pitch_dict[npc_name.text]
	#otherwise have a fallback!
	else: 
		talk_blip = load("res://Audio/ignusVoice.wav")
	audio_player.stream = talk_blip
	
	while dialogue.visible_characters < dialogue.text.length():
		dialogue.visible_characters += 1
		blip_count += 1
		if blip_count == 3:
			# Vary the pitch a bit to make it a little more natural and so it doesn't get too monotonous
			#talk_blip.pitch_scale = randf_range(0.97, 1.03)
			audio_player.pitch_scale = randf_range(0.98, 1.02)			
			audio_player.play()
			blip_count = 0		
		await get_tree().create_timer(text_rate).timeout
	text_finished = true
	
	manage_choices()


func manage_choices():
	if conv[index].has("choice"):
		choice_box.show()
		for c in conv[index].choice:
			# Make a new button
			var btn = Button.new()
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
		# Simple line, always goes to the same next line
		if conv[index].has("set"):
			var flag = demo_conv[index].get("set", null)
			set_condition(flag)
		if conv[index].has("goto"):
			index = conv[index].goto
			set_dialogue()
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
	else:
		dialogue.visible_characters = len(dialogue.text)

func set_condition(cond):
	flag_dict[cond] = true
