extends Control

@onready var endingBox1: CheckBox = $"LeftPage/VBoxContainer/HBoxContainer/Container/1/HBoxContainer/CheckBox"
@onready var endingBox2: CheckBox = $"LeftPage/VBoxContainer/HBoxContainer/Container/2/HBoxContainer/CheckBox"
@onready var endingBox3: CheckBox = $"LeftPage/VBoxContainer/HBoxContainer/Container/3/HBoxContainer/CheckBox"
@onready var endingBox4: CheckBox = $"LeftPage/VBoxContainer/HBoxContainer/Container/4/HBoxContainer/CheckBox"
@onready var endingBox5: CheckBox = $"LeftPage/VBoxContainer/HBoxContainer/Container/5/HBoxContainer/CheckBox"
@onready var endingBox6: CheckBox = $"LeftPage/VBoxContainer/HBoxContainer/Container/6/HBoxContainer/CheckBox"
@onready var endingBox7: CheckBox = $"RightPage/MarginContainer/VBoxContainer/7/HBoxContainer/CheckBox"
@onready var endingBox8: CheckBox = $"RightPage/MarginContainer/VBoxContainer/8/HBoxContainer/CheckBox"
@onready var endingBox9: CheckBox = $"RightPage/MarginContainer/VBoxContainer/9/HBoxContainer/CheckBox"
@onready var endingBox10: CheckBox = $"RightPage/MarginContainer/VBoxContainer/10/HBoxContainer/CheckBox"
@onready var endingBox11: CheckBox = $"RightPage/MarginContainer/VBoxContainer/11/HBoxContainer/CheckBox"
@onready var endingBox12: CheckBox = $"RightPage/MarginContainer/VBoxContainer/11/HBoxContainer/CheckBox"

@onready var winningStar: TextureRect = $"RightPage/MarginContainer/VBoxContainer/Control2/CenterContainer/Winning Star"

func _ready():
	winningStar.visible = false

	#endingBox1.set_pressed_no_signal(true)

	print(SaveManager.getSaveVariable("hardEnding_bad"))

	#captured
	if SaveManager.getSaveVariable("hardEnding_bad"):
		endingBox1.set_pressed_no_signal(true)
	#better not to think: failed or did not complete 1 or more tasks
	if SaveManager.getSaveVariable("softEnding_bimbo"):
		endingBox2.set_pressed_no_signal(true)
	#prized cow
	if SaveManager.getSaveVariable("softEnding_cow"):	
		endingBox3.set_pressed_no_signal(true)
	#desperate cow
	if SaveManager.getSaveVariable("hardEnding_cow"):	
		endingBox4.set_pressed_no_signal(true)	
	#soft demon
	if SaveManager.getSaveVariable("softEnding_demon"):	
		endingBox5.set_pressed_no_signal(true)	
	#hard demon
	if SaveManager.getSaveVariable("hardEnding_demon"):	
		endingBox6.set_pressed_no_signal(true)	
	#soft pet
	if SaveManager.getSaveVariable("softEnding_pet"):	
		endingBox7.set_pressed_no_signal(true)	
	#hard petx
	if SaveManager.getSaveVariable("hardEnding_pet"):	
		endingBox8.set_pressed_no_signal(true)	
	#hard tentacles
	if SaveManager.getSaveVariable("hardEnding_tentacleBait"):	
		endingBox9.set_pressed_no_signal(true)	
	#true end
	if SaveManager.getSaveVariable("specialEnding_trueEnd"):	
		endingBox10.set_pressed_no_signal(true)	
	#fail the true end
	if SaveManager.getSaveVariable("specialEnding_failed"):	
		endingBox11.set_pressed_no_signal(true)	
	#did literally fucking nothing
	if SaveManager.getSaveVariable("specialEnding_didNothing"):	
		endingBox12.set_pressed_no_signal(true)	

	await get_tree().process_frame
	print("After one frame:", endingBox1.button_pressed)

func _on_main_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/AssetScenes/MainMenu.tscn")
