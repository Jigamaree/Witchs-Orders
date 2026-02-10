extends Node

class_name sleepyroomConvos

static var sleepyroom_Convos_Dict = {
	"chestOfDrawers": {
		1: { "speaker": "MC", "emote": "happy", "dialogue": "Happy face!", "goto": 2 },
		2: { "speaker": "MC", "emote": "angry", "dialogue": "Angry face!", "goto": 3 },
		3: { "speaker": "MC", "emote": "sad", "dialogue": "Sad face!", "goto": 4 },		
		4: { "speaker": "MC", "dialogue": "I have so many emotions.", "end": true } 
		},
	"windowFire": {
		1: { "speaker": "MC", "emote": "exasperated", "dialogue": "This window is made of stained glass, and has a fire pattern on it.", "goto": 2 },
		2: { "speaker": "none", "dialogue": "It's quite beautiful.", "end": true },
		}, 
	"windowCrow": {
		1: { "speaker": "none", "dialogue": "This window is also made of stained glass, and has a crow on it.", "goto": 2 },
		2: { "speaker": "none", "dialogue": "You know it will be too difficult to break.", "end": true } ,		
		},
	"bed": {
		1: { "speaker": "none", "dialogue": "The sheets for this bed are worn in the way only well loved fabric can be - soft to the touch, but the linen hasn't quite yet thinned.", "goto": 2 },
		2: { "speaker": "none", "dialogue": "There's a scent clinging to the blankets - vanilla and cedar, along with a touch of petrichor.", "goto": 3 },
		3: { "speaker": "none", "dialogue": "It's a surprisingly comforting smell. You try not to dwell on that.", "end": true } ,	
		},
	"bookshelf": {
		#1: { "speaker": "A Friend", "dialogue": "This is a simple line of dialogue!", "goto": 2 },
		#2: { "speaker": "A Friend", "dialogue": "Here's one that sets a condition.", "set": "some_flag", "goto": 3 },
		#3: { "speaker": "A Friend", "dialogue": "Now we can check that condition and change what comes next.", "check": { "condition": "some_flag", "goto_false": 4, "goto_true": 5 } },
		1: { "speaker": "none", "dialogue": "I can make choices looking at books.", "goto": 6 },
		6: { "speaker": "none", "dialogue": "Like this!", "choice": {"c1": {"choice": "I like choices.", "goto": 7 }, "c2": { "choice": "Choices are scary.", "goto": 8 } } },
		7: { "speaker": "MC", "dialogue": "I like them too.", "goto": 9 },
		8: { "speaker": "MC", "dialogue": "They do suck.", "goto": 9 },
		9: { "speaker": "none", "dialogue": "Wow! Options!", "end": true } ,	
		},		
		
	"lockedDoor": {
		1: { "speaker": "none", "dialogue": "The door is made of sturdy wood, with a decorative brass handle. As you walk up, red threads of magic flicker to life, before racing along a complex arcane swirl on the door.", "goto": 2 },
		2: { "speaker": "MC", "emote": "eep", "dialogue": " Witchcraft!", "goto": 3 },

		3: { "speaker": "none", "dialogue": "You hesitate briefly before trying to open the door - no luck. The door doesn't budge an inch. You'd think it stuck like glue, if the sigil didn't flare with the pressure.", "goto": 4 },
		4: { "speaker": "none", "dialogue": "Just as you go to let go of the door, a thought thunders through your mind like a premonition.", "goto": 5 },		
		5: { "speaker": "none", "dialogue": "%wsTo exit, you must be of more than what you are.%ws", "completelyCentered": true, "goto": 6 },			
		6: { "speaker": "MC", "emote": "exasperated", "dialogue": "...Is this door really telling me to get dressed?", "end": true },
		},
		
		"testOfDrawers":{
		1: { "speaker": "A Friend", "backgroundImage": "", "dialogue": "Then, [wave]instead[/wave] of a line of [color=#9aa57c]dialogue[/color] looking like [shake rate=6.0 level=6 connected=1]this[/shake]...", "goto": 2 },
		2: { "speaker": "A Friend", "illustration": "", "dialogue": "It %wswould%we look like %ssthis%se instead, which is much %hsquicker%he to write!", "end": true } 
		}		
					
}
