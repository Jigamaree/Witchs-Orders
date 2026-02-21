extends Node

class_name sleepyroomConvos

static var sleepyroom_Convos_Dict = {
	"Prologue": {
		1: { "speaker": "", "dialogue": "You wake. That is the only thing normal about your current circumstances.", "goto": 2 },
		2: { "speaker": "", "dialogue": "The battle- your fellow men- Too many, too much, too [b]powerful-[/b] Your heart pounds like a warhorse, fractured memories crashing over your mind too fast to piece together.", "goto": 3 },
		3: { "speaker": "", "dialogue": "This isn’t the Daybreak Plains –  why are you [i]here?![/i] Your squadron needs you. The Divine needs you! Your hands fly on instinct to where your sword should be-", "goto": 4 },
		4: { "speaker": "MC", "dialogue": "Argh!", "goto": 5 },
		5: { "speaker": "", "dialogue": "That, apparently, was a bad idea.", "goto": 6 },
		6: { "speaker": "", "dialogue": "The pain of that movement though is enough to shock you out of the panic gripping your body cold – you take the opportunity to force a few intentionally slow breaths through your lungs. [i]Focus, solider.[/i] You start with the simple facts to ground yourself, like you were taught.", "goto": 7 },
		7: { "speaker": "", "dialogue": "You are Alessia Venefican, of the Divine’s Chosen. The God-King Himself had just called on you and your sqaudron, as they had countless time before. The Saevii army loomed on the Daybreak Plains. You were to dispatch them.", "goto": 71 },
		71: { "speaker": "", "dialogue": "This wasn't an out of the blue command from Him; the Saevii have been a growing threat for years now. You've even come to blows with their scimitars before, and the sheer number of men sighted for this encroaching battle threated to be of more weight than the Divine had claimed....", "goto": 72 },
		72: { "speaker": "", "dialogue": "Hersay thoughts. You had answered Him - of course you answered. There is no questioning the Divine, only being the enactment of His word.", "goto": 8 },				
		8: { "speaker": "", "dialogue": "You and the other Chosen had arrived. Had charged.", "goto": 81 },
		81: { "speaker": "", "dialogue": "You…", "goto": 9 },		
		9: { "speaker": "", "dialogue": "You…?", "goto": 10 },
		10: { "speaker": "", "dialogue": "You don’t remember anything more than that. Not concrete, anyway. There’s flashes of things, sure – you remember the rush of battle in your ears, the singing of steel in your hands more desperate than before. A roar. Pain. Darkness.", "goto": 11 },
		11: { "speaker": "", "dialogue": "Your fingers drift up to your chest, touching to bandages you don’t remember putting on and recoiling from an aching wound you don’t remember getting. Anything more than slow, simple movements seems to make it ache.", "goto": 12 },		
		12: { "speaker": "", "dialogue": "You remember a woman standing over your battered body, eyes shining like wildfire.", "goto": 13 },
		13: { "speaker": "", "dialogue": "Wherever you are now, you need to get out of here – better yet, figure out what on earth happened. Your eyes are drawn to a note sitting on the desk – the dark ink looks intentional. No better place to start than there, you suppose. ",
		"setSaveVariable": ["bedroom_prologuePlayed", true], "end": true },		
	},
	
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

### TODO: Writing		
	"Note": {
		0: {"checkSaveVariable": { "keyToCheck": "bedroom_noteRead", "wantedValue": "true", "goto_false": 1, "goto_true": 20 }},	
		#note not read
		1: { "speaker": "", "dialogue": "You have not read the note.", "goto": 2 },
		2: { "speaker": "", "dialogue": "You have now read the note.", 		
		"setSaveVariable": ["bedroom_noteRead", true], "end": true },
		#note read		
		20: { "speaker": "", "dialogue": "This reminds you of what the note says.", "end": true},			
		}, 
	
	"SidetableLeft": {
		0: {"checkSaveVariable": { "keyToCheck": "plant_guide_read", "wantedValue": "true", "goto_false": 1, "goto_true": 10 }},	
		1: { "speaker": "", "dialogue": "The side table on this side has a few more dents and scrapes than your own - still carefully polished and tended to, but wearing the signs of more frequent use.", "goto": 2},
		2: { "speaker": "", "dialogue": "The pot plant on the with bubbled leaves makes your nose wrinkle. You remember, in your infinite wisdom as a child, eating some of the bright green pearls. The dreams you'd had were as vivid as waking - and the scolding you'd gotten about poisoning yourself had made you never touch them again.", "goto": 3 },				
		3: { "speaker": "", "dialogue": "You attempt to get in the drawer, but a light zap like static bolts up your arm. Seems like somebody didn't want you going through these particular personal belongings.", "end": true },
		
		10: { "speaker": "", "dialogue": "A String-of-Dreams sits on the sidetable - you'd never known this was what the plant actually looked like. You'd believed the Capital's salvekeepers at their word when they'd said the plant was poisonous and never thought much more of it - why would you?", "goto": 11 },		
		11: { "speaker": "", "dialogue": "Considering you now remember eating it yourself, you suspect they had other reasons to suppress its use. But... Why?", "end": true}				
		}, 	
	
	"SidetableRight": {
		0: {"checkSaveVariable": { "keyToCheck": "bedroom_waterDrunk", "wantedValue": "true", "goto_false": 1, "goto_true": 3 }},			
		1: { "speaker": "", "dialogue": "The sidetable speaks of a fine, if rustic craftsmanship; a fine oiled wood and- 
		
		holy fucking shit a glass of water.", "setSaveVariable": ["bedroom_waterDrunk", true], "goto": 2},
		2: { "speaker": "", "dialogue": "You pour and throw back probably one of the most satisfying glasses of water in your entire life. It's so satisfying in fact you finish the entire jug. Even if you don't know your way about your current circumstances, at least that's one less problem to deal with.", "end": true },		
		3: { "speaker": "", "dialogue": "The sidetable is a steady wooden sort, plain in design but very functional. It's also been barely used - there's nothing but a few dust bunnies tucked into the corners of the drawers.", "end": true },		
		}, 
		
#sword_interracted		
	"Sword": {
		0: {"checkSaveVariable": { "keyToCheck": "sword_interracted", "wantedValue": "true", "goto_false": 1, "goto_true": 30 }},		 	
		1: { "speaker": "MC", "dialogue": "Valiance!", "goto": 2 },
		2: { "speaker": "", "dialogue": "You fall forward, cradling the hilt of the sword – [i]your[/i] precious sword - in your hands. Not that you could call it one anymore in the state it’s in now – the blade is shattered into pottery like shards, catching the light from the window.", "goto": 3 },
		3: { "speaker": "", "dialogue": "The memory suddenly comes to you – bringing Valiance down on scaled hide, right behind the neck. It should have pierced the hide clean through – instead you felt the metal shock, fall to pieces like cheap glass. Pain burned through your body like lightning soon after.", "goto": 4 },
		4: { "speaker": "", "dialogue": "Blessed steel shouldn’t break like this. The Divine Himself imbues it, the holy blessing from His hands making it one of the strongest materials known to man – you’ve cut through solid marble like butter, before. This should of been easy.", "goto": 5 },
		5: { "speaker": "", "dialogue": "The discoloration on the metal is worrying too; it’s tarnished like a cheap mirror, blackening at its edges. You’ve spent too much time polishing its length and sharpening its blade to believe for a second that flaking darkness is due to neglect.", "goto": 6 },
		6: { "speaker": "", "dialogue": "You search your memories for anything more about the [i]why[/i] of what caused this, but come up short. It appears you’ll have to figure this out both alone and unarmed.", 
		"setSaveVariable": ["sword_interracted", true], "end": true },
		30: { "speaker": "", "dialogue": "The pieces of your most faithful companion lay shattered. What is a knight without her sword? The hollow part of your chest can't find an answer.", "end": true },
		},

### TODO: Writing		
	"ToyChest": {
			1: { "speaker": "", "dialogue": "Dialogue start", "goto": 2 },
			2: { "speaker": "", "dialogue": "This is where the choice is made", 		
			"choice": {
				"c1": {"choice": "First dildo.", "goto": 100 }, 
				"c2": { "choice": "Second dildo.", "goto": 200 }, 
				"c3": { "choice": "Third dildo.", "goto": 300 }, 
				"c4": { "choice": "Step away.", "goto": 999 }, } }, 

			100: { "speaker": "", "dialogue": "Pick up the first dildo", 
			"checkSaveVariable": { 
				"keyToCheck": "imp_dildo_fucked_first", 
				"wantedValue": "true", 
				"goto_false": 102, 
				"goto_true": 101 }},
					
			101: { "speaker": "", "dialogue": "You have used this.", "end": true },
			102: { "speaker": "", "dialogue": "You haven't used this, but now you have", 
			"setSaveVariable": ["imp_dildo_fucked_first", true], "end": true },
		
			200: { "speaker": "", "dialogue": "Pick up the second dildo", 
			"checkSaveVariable": { 
				"keyToCheck": "imp_dildo_fucked_second", 
				"wantedValue": "true", 
				"goto_false": 202, 
				"goto_true": 201 }},
				
			201: { "speaker": "", "dialogue": "You have used this.", "end": true },					
			202: { "speaker": "", "dialogue": "You haven't used this, but now you have", 
			"setSaveVariable": ["imp_dildo_fucked_second", true], "end": true },

			300: { "speaker": "", "dialogue": "Pick up the third dildo.", 
			"checkSaveVariable": { 
				"keyToCheck": "stretched", 
				"wantedValue": "true", 
				"goto_false": 301, 
				"goto_true": 302 }},
			301: { "speaker": "", "dialogue": "You're not stretched enough to use this.", "end": true },					
			302: { "speaker": "", "dialogue": "You fuck yourself with it, nice.", 
			"setSaveVariable": ["imp_dildo_fucked_third", true], "end": true },
			
			999: { "speaker": "", "dialogue": "You step away.", "end": true },						
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
		8: { "speaker": "MC", "emote": "exasperated", "dialogue": "The fact this door can tell me what to do is really getting on my nerves.", 
		"setSaveVariable": ["ignus_fed", true], "end": true }, 
		9: { "speaker": "MC", "dialogue": "I don't need to play these games.", 
		"choice": {"c1": {"choice": "Take a breath.", "goto": 10 }, "c2": { "choice": "Kick in the door", "goto": 12 } } }, 	
		10: { "speaker": "", "dialogue": "Maybe it's not a good idea to go kicking in enchanted doors. You take a few moments to steady yourself - closed eyes, counting to three on each inhale and exhale.", "goto": 11 },
		11: { "speaker": "", "dialogue": "This witch may be playing games with you - but there's no reason to lose your cool.", "end": true },		
		12: { "speaker": "", "dialogue": "You've trained for this exact moment. Steadying yourself, you kick the door open.", "fadeToBlack":true, "playEnding": "Captured" },											
	},

### TODO: Writing				
	"ChestOfDrawers":{
		0: {"checkSaveVariable": { "keyToCheck": "knight_clothed", "wantedValue": "true", "goto_false": 100, "goto_true": 1 }},
		# knight is clothed		
		1: { "speaker": "", "dialogue": "The drawers are filled with clothes.", 
		"checkSaveVariable": 
			{ "keyToCheck": "knight_clothing", 
			"wantedValue": 5, 
			"goto_false": 2, 
			"goto_true": 5 } },
			
		5: { "speaker": "", "dialogue": "Of course, you already knew that from what you're wearing right now. You don't need to put on any more clothes.", "end": true },	
			
		2: { "speaker": "", "dialogue": "They don't look to be your size, but you could probably put these on now, though", 
			"choice": {
				"c1": {"choice": "Change your clothes.", "goto": 4 }, 
				"c2": { "choice": "Leave these be.", "goto": 3 }, 
				} 
			},
		# leave with no concerquence	
		3: { "speaker": "", "dialogue": "This was probably hidden from you for a reason. You leave it alone.", "end": true },
		#imp +1, stolen clothes
		4: { "speaker": "", "dialogue": "You find something in your size. Much better.", 
			"setSaveVariable": ["knight_clothing", SaveData_CurrentGame.Clothing.STOLEN_ROBES], "end": true },
		
		# knight isnt clothed
		100: { "speaker": "", "dialogue": "You aren't clothed. You find your options.", "goto": 101 },
		101: { "speaker": "", "dialogue": "A bikini", "goto": 102 },
		102: { "speaker": "", "dialogue": "A fluffy auburn set with long sleeves.", "goto": 103 },
		103: { "speaker": "", "dialogue": "And a strappy leotard.", 
			"choice": {
				"c1": {"choice": "Put on the bikini.", "goto": 200 }, 
				"c2": { "choice": "Put on the fluffy set.", "goto": 300 }, 
				"c3": { "choice": "Put on the strappy leotard.", "goto": 400 }, 
				"c4": { "choice": "Step away.", "goto": 999 }, 
				} 
			}, 	
		# bikiki - cow
			200: { "speaker": "", "dialogue": "You put on the cow bikini.", "goto": 201 },
			201: { "speaker": "", "dialogue": "You are now dressed.", 
			"setSaveVariable": ["knight_clothing", SaveData_CurrentGame.Clothing.COW_BIKINI], "end": true },		
		# fluffy set - pet			
			300: { "speaker": "", "dialogue": "You put on the pet outfit", "goto": 301 },
			301: { "speaker": "", "dialogue": "You are now dressed.", 
			"setSaveVariable": ["knight_clothing", SaveData_CurrentGame.Clothing.BUTTPLUG], "end": true },		
			# leotard - imp
			400: { "speaker": "", "dialogue": "You put on the imp outfit", "goto": 401 },
			401: { "speaker": "", "dialogue": "You are now dressed", 
			"setSaveVariable": ["knight_clothing", SaveData_CurrentGame.Clothing.SLUTTY_OUTFIT], "end": true },		
	
		999: { "speaker": "", "dialogue": "You step away. You're not sure any of this is worth putting on.", "end": true },						
		}					
}

# 		1: { "speaker": "none", "dialogue": "You find some clothes! Wow!", "backgroundImage": true, "setSaveVariable": ["bedroom_doorLocked", false], "end": true },
