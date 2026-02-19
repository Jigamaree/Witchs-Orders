extends Node

class_name sleepyroomConvos

static var sleepyroom_Convos_Dict = {
	"Bed": {
		1: { "speaker": "none", "dialogue": "The sheets for this bed are worn in the way only well loved fabric can be - soft to the touch, but the linen hasn't quite yet thinned.", "goto": 2 },
		2: { "speaker": "none", "dialogue": "There's a scent clinging to the blankets - vanilla and cedar, along with a touch of petrichor.", "goto": 3 },
		3: { "speaker": "none", "dialogue": "It's a surprisingly comforting smell. You try not to dwell on that.", "end": true } ,	
		},

	"GingerBaby": {
		0: {"checkSaveVariable": { "keyToCheck": "plant_guide_read", "wantedValue": "true", "goto_false": 1, "goto_true": 2 }},
		1: { "speaker": "", "dialogue": "This plant is the spitting image of the larger potted plant across the room. The leaves closest to you are just a touch warm from the light filtering in the window.", "end": true},
		2: { "speaker": "", "dialogue": "This appears to be not just a Buttermilk Ginger plant, but a propagation of the other larger plant in the room. Shit - you know this plant would sell for hundreds of gold. The knowledge? Thousands, probably. Something tells you that money isn't the point of this plant's existence.", "end": true},		
		}, 
			
	"GingerAdult": {
		0: {"checkSaveVariable": { "keyToCheck": "plant_guide_read", "wantedValue": "true", "goto_false": 1, "goto_true": 2 }},		
		1: { "speaker": "", "dialogue": "This plant seems to be growing quite happily in its pot, its large, leafy fronds as long as your forearm. The strange, pinecone-like blooms are flushed a deep pink, darker at the base. You swear you recognise the creamy scent of them, but you just can't put your finger on it.", "end": true},
		2: { "speaker": "", "dialogue": "The guidebook in your hands tells you this is Buttermilk Ginger - [i]that's[/i] how you knew the smell! The heady memories of a night loose in the city flash back to your mind; before you'd pledged yourself to the Divine, you hadn't been above seeking a bit of fun in the Capital between postings.", "goto": 3 },
		3: { "speaker": "", "dialogue": "You still remember the woman's face from that night - a cat-like smile as the handsome stranger spoke about the little vial of Buttermilk nectar like it was liquid gold. You hadn't believed her at first - but that was before she'd thrown you on your back and sworn to show you otherwise.", "goto": 4 },		
		4: { "speaker": "", "dialogue": " With that sap slicking her fingers she'd worked you open, everywhere it touched soon aching like you'd been wanting to come for weeks. The minx had done the job so thoroughly you'd sobbed when she finally fucked you, making a mess of your thighs, her thighs and the bed when you'd finally came. ", "goto": 5 },
		5: { "speaker": "", "dialogue": "She didn't stop for another three rounds.", "goto": 6 },						
		6: { "speaker": "", "dialogue": "Just recalling it all is enough to make your thighs clench - the celibacy you'd sworn yourself to in Their Holiness' service had always been something you'd told yourself was worth the loss. Now, in a bedroom with such easy access to the slick, you're not so sure.",  "end": true},	
		}, 
		
	"Note": {
		0: {"checkSaveVariable": { "keyToCheck": "plant_guide_read", "wantedValue": "true", "goto_false": 1, "goto_true": 2 }},	
		1: { "speaker": "", "dialogue": "", "end": true},		
		
		}, 
	
	"SidetableLeft": {
		0: {"checkSaveVariable": { "keyToCheck": "plant_guide_read", "wantedValue": "true", "goto_false": 1, "goto_true": 3 }},	
		1: { "speaker": "", "dialogue": "The side table on this side looks more used that your own, wear marks around the sidetable's edges speaking to long term use. The strange pot-plant with bubbled leaves makes your nose wrinkle; you remember eating it as a kid, falling asleep and having strange, vivid dreams.", "goto": 2},		
		2: { "speaker": "", "dialogue": "You attempt to get in the drawer, but a light zap like static bolts up your arm. Seems like somebody didn't want you going through these particular personal belongings.", "end": true },
		
		3: { "speaker": "", "dialogue": "A String-of-Dreams sits on the sidetable - you'd never known this was what the plant actually looked like. You'd believed the Capital's salvekeepers at their word when they'd said the plant was poisonous and never thought much more of it - why would you?", "goto": 4 },		
		4: { "speaker": "", "dialogue": "Considering you now remember eating it yourself, you suspect they had other reasons to suppress its use. But... Why?", "end": true}				
		}, 	
	
	"SidetableRight": {
		0: {"checkSaveVariable": { "keyToCheck": "bedroom_waterDrunk", "wantedValue": "true", "goto_false": 1, "goto_true": 3 }},			
		1: { "speaker": "", "dialogue": "The sidetable speaks of a fine, if rustic craftsmanship; a fine oiled wood and- 
		
		holy fucking shit a glass of water.", "setSaveVariable": ["bedroom_waterDrunk", true], "goto": 2},
		2: { "speaker": "", "dialogue": "You pour and throw back probably one of the most satisfying glasses of water in your entire life. It's so satisfying in fact you finish the entire jug. Even if you don't know your way about your current circumstances, at least that's one less problem to deal with.", "end": true },		
		3: { "speaker": "", "dialogue": "The sidetable is a steady wooden sort, plain in design but very functional. It's also been barely used - there's nothing but a few dust bunnies tucked into the corners of the drawers.", "end": true },		
		}, 
		
	"Sword": {
		1: { "speaker": "", "dialogue": "Sword dialogue goes here.", "end": true},
		}, 	
		
	"ToyChest": {
		1: { "speaker": "", "dialogue": "Toychest dialogue goes here.", "end": true},
		}, 			
	
	"WindowFire": {
		1: { "speaker": "", "dialogue": "This is one of two stained glass windows in the room - this one appears to depict a swirling flame being nursed to life, something bright burning at its core.", "goto": 2 },
		2: { "speaker": "none", "dialogue": "The glass work is beautiful - and you can tell at just a glace will be too difficult to smash through, were you to try and escape out it.", "end": true },
		}, 
		
	"WindowCrow": {
		1: { "speaker": "none", "dialogue": "One of two stained glass windows in the room, this one depicts a crow nestled among branches. A sly look in its eye glints the same as a key grasped between its talons.", "goto": 2 },
		2: { "speaker": "none", "dialogue": "You know the textured glass and heavy lead edging will be too difficult to break.", "end": true } ,		
		},
		
	"lockedDoor": {
		0: {"checkSaveVariable": { "keyToCheck": "bedroom_testedTheDoor", "wantedValue": "true", "goto_false": 1, "goto_true": 7 }},
		#first time		
		1: { "speaker": "none", "dialogue": "The door is made of sturdy wood, with a decorative brass handle. As you walk up, red threads of magic flicker to life, before racing along a complex arcane swirl on the door.", "goto": 2 },
		2: { "speaker": "MC", "emote": "eep", "dialogue": " Witchcraft!", "goto": 3 },
		3: { "speaker": "none", "dialogue": "You hesitate briefly before trying to open the door - no luck. The door doesn't budge an inch; you'd honestly think it jammed if the sigil didn't flare with the attempt.", "goto": 4 },
		4: { "speaker": "none", "dialogue": "Just as you let go, a thought thunders through your mind like a premonition.", "goto": 5 },		
		5: { "speaker": "none", "dialogue": "%wsTo exit, you must be of more than what you are.%ws", "completelyCentered": true, "goto": 6 },			
		6: { "speaker": "MC", "emote": "exasperated", "dialogue": "...Is this door really telling me to get dressed?", 
		"setSaveVariable": ["bedroom_testedTheDoor", true], "end": true },
		#second time
		7: { "speaker": "none", "dialogue": "%wsTo exit, you must be of more than what you are.%ws", "completelyCentered": true, "checkSaveVariable": { "keyToCheck": "bedroom_testedTheDoorTwice", "wantedValue": "true", "goto_false": 8, "goto_true": 9 } },
		8: { "speaker": "MC", "emote": "exasperated", "dialogue": "The fact this door can tell me what to do is really getting on my nerves.", "setSaveVariable": ["bedroom_testedTheDoorTwice", true], "end": true }, 
		9: { "speaker": "MC", "dialogue": "I don't need to play these games.", 
		"choice": {"c1": {"choice": "Take a breath.", "goto": 10 }, "c2": { "choice": "Kick in the door", "goto": 12 } } }, 	
		10: { "speaker": "", "dialogue": "Maybe it's not a good idea to go kicking in enchanted doors. You take a few moments to steady yourself - closed eyes, counting to three on each inhale and exhale.", "goto": 11 },
		11: { "speaker": "", "dialogue": "This witch may be playing games with you - but there's no reason to lose your cool.", "end": true },		
		12: { "speaker": "", "dialogue": "You've trained for this exact moment. Steadying yourself, you kick the door open.", "fadeToBlack":true, "playEnding": "Captured" },											
	},
	
	"Test":{
		1: { "speaker": "", "dialogue": "This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll. This is a test of the scroll.", 
		"choice": {"c1": {"choice": "Take a breath.", "goto": 2 }, "c2": { "choice": "Kick in the door", "goto": 2 } } }, 
		2: { "speaker": "", "dialogue": "This should fade back in.", "end": true },
	},
		
				
	"ChestOfDrawers":{
		0: {"checkSaveVariable": { "keyToCheck": "bedroom_doorLocked", "wantedValue": "false", "goto_false": 1, "goto_true": 2 }},
		1: { "speaker": "none", "dialogue": "You find some clothes! Wow!", "backgroundImage": true, "setSaveVariable": ["bedroom_doorLocked", false], "end": true },
		2: { "speaker": "", "dialogue": "You've already gotten dressed, dude.", "end": true } 
		}					
}
