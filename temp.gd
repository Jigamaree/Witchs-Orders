# Set speaker name
	npc_name.text = conv[index].speaker
	# Make an empty string for the emote info
	var emote = ""
	# If the line has an emote, make the string an underscore, then that
	if conv[index].has("emote"):
		emote = "_" + conv[index].emote
	# Set the portrait to [npc]_[emote], or just [npc] + "" if no emote
	portrait.texture = load("res://" + conv[index].speaker + emote + ".png")
	# This way you can have a default neutral image that's just the npc name
	#   that will show in the absence of a given emote
	#     so you don't have to define one in every single line of dialogue
	
	var emote_conv = {
	1: { "speaker": "A Friend", "emote": "horny", "dialogue": "I'll be in my bunk.", "end": true } }
	
	
