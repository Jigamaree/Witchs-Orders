# Set specific blip pitch based on speaker
	# The way I did this was making five blip sfx at different pitches and naming them "blip_1", "blip_2", etc
	#   up to 5, then making a dictionary where each NPC name was a key and the value was a number 1-5
	if pitch_dict.has(conv[index].speaker):
		# Look up the current speaker's blip pitch by current line
		blip_pitch = pitch_dict[conv[index].speaker]
	else:
		# Default to the middle pitch, 3, if it's not defined for the speaker
		blip_pitch = 3
	# Set the audiostream player used for the blips to play the right file
	talk_blip.stream = load("res://sfx/blip_" + str(blip_pitch) + ".mp3")
	
	# Typewriter effect
	text_finished = false
	dialogue.visible_characters = 0
	# Used to play blips only every third character; doing it on every single one doesn't sound right to me
	var blip_count = 0
	while dialogue.visible_characters < len(dialogue.text):
		dialogue.visible_characters += 1
		# Limit blip sound to every third character
		blip_count += 1
		if blip_count == 2:
			# Vary the pitch a bit to make it a little more natural and so it doesn't get too monotonous
			talk_blip.pitch_scale = randf_range(0.97, 1.03)
			talk_blip.play()
			blip_count = 0
		await get_tree().create_timer(text_rate).timeout
	text_finished = true
