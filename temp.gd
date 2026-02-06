extends Node
# This stuff would likely go in your game world script

const DIALOGUE_SYSTEM = preload("res://dialogue_system.tscn")

# Probably an NPC scene would emit a "talk to" signal after an interaction,
#   with arguments for their ID and what conversation should be started based on what's happened in the game,
#     which could be stored in the NPC scene or looked up in a database by their ID
# That signal would connect to this function
func start_conv(npc, conversation):
	# Instance dialogue system
	var dlg_sys = DIALOGUE_SYSTEM.instantiate()
	# There are cleaner, more extensible ways to do this, but this is pretty easy to understand
	# It would be a mess in a game with tons of NPCs though
	match npc:
		"steve":
			dlg_sys.conv = dlg_sys.steve_convos[conversation]
		_: print("NPC NOT FOUND")
	# This is one way to pause the game so things aren't happening and the player can't move during dialogue,
	#   but you need to make sure your dialogue system scene process mode is set to "Always"
	get_tree().paused = true
	# Add dialogue system to scene
	get_tree().current_scene.add_child(dlg_sys)
