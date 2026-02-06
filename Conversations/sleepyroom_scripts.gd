extends Node

class_name sleepyroomConvos

static var sleepyroom_Convos_Dict = {
	"chestOfDrawers": {
		1: { "speaker": "none", "dialogue": "This is a chest of drawers.", "goto": 2 },
		2: { "speaker": "none", "dialogue": "It's filled with possibilities!", "goto": 3 },
		3: { "speaker": "MC", "dialogue": "Also known as: trouble for me.", "end": true } 
		},
	"windowFire": {
		1: { "speaker": "none", "dialogue": "This window is made of stained glass, and has a fire pattern on it.", "goto": 2 },
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
		1: { "speaker": "none", "dialogue": "All this is looking pretty good so far!", "goto": 2 },
		2: { "speaker": "none", "dialogue": "Thanks again for all the help.", "goto": 3 },
		3: { "speaker": "MC", "dialogue": "It's been a real life saver.", "end": true } ,	
		},		
}
