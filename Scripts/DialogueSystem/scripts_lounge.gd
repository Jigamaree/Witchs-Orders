extends Node

class_name LoungeConvos

static var convos_Dict = {
	"": {
		1: { "speaker": "none", "dialogue": "Hello! You didn't put a thing in!", "end": true }
		},
	
	"firstEntry":{
		1: { "speaker": "", "dialogue": "You freeze as you enter the room - the sound of slow, heavy breathing fills the air, from a creature many times your size. Best be careful - or leave out the front door, before it can see you.", "setSaveVariable": ["lounge_enteredFirstTime", true], "end": true }
	},	
	
	## TODO: wait for witch here		
	"rightArmchair": {
		1: { "speaker": "", "dialogue": "Right armchair dialogue goes here.", "end": true},
		}, 
					
	"leftArmchair": {
			1: { "speaker": "", "dialogue": "While this looks just like the other armchair, there's a firmness to the stuffing and crispness to the leather that makes it feel unusued. Guess the witch has a favorite chair.", "end": true },
		}, 
			
	"CoffeeTable": {
		0: {"checkSaveVariable": { "keyToCheck": "armour_interracted", "wantedValue": "true", "goto_false": 1, "goto_true": 100 }},		
			1: { "speaker": "", "dialogue": "No - that can't be right.", "goto": 2 },
			2: { "speaker": "", "dialogue": "You sit down on the armchair beside the table, eyes wide as you look over the state of the armour that's been carefully heaped up on the coffee table. Your first kneejerk is to discount all this as Not Yours - as some test of faith from the Divine, or a cruel manipulation from the witch that's brought you here.", "goto": 3 },
			3: { "speaker": "", "dialogue": "You can't deny it though. This [i]is[/i] your armour - you can see the minute dents and scrapes that no amount of upkeep had been able to buffer up - the cross over the heart, the ding at the collarbone, the wonky links of chainmail at the side of the tunic. There's too many details that you know off by heart for this to be some simple forgery, especially made in the little amount of time you've been passed out.", "goto": 4 },
			4: { "speaker": "", "dialogue": "Which means you have to come to terms with the fact there's now a huge chunk taken out of the wing of your helmet - and even worse than that, the huge gaping gash that's melted through the sternum of your chest plate.
			Fucking- Divine save you, you should be [i]dead[/i] with that sort of injury!", "goto": 5 },
			5: { "speaker": "", "dialogue": "You realise with a start that... Well, actually you should be. Your memory comes back to you, making you clench your head and wince.
			Poison drakes. Terrible creatures of myth, the result of corrupting a dragon hatchling with magic so thoroughly that its mind melts along with its fire breath sac. They were supposed to be impossible to create - no people would have the magical prowess to trap and break the mind of a dragon, nor the lack of ethics to turn such an intelligent creature into their slave.", "goto": 6 },
			6: { "speaker": "", "dialogue": "The Saevii, turns out, were both.", "goto": 7 },
			7: { "speaker": "", "dialogue": "You'd been set upon by one of them - an older one, if the peeling skin around its poison scarred mouth was any indication. You'd tried to fight it, tried to chase it back. Usually blessed steel would be no match for a dragon - but this one was haunted by something unholy.", "goto": 8 },
			8: { "speaker": "", "dialogue": "It had broken your sword - bitten into you like a chew toy and pierced you through with its fatal poison. Left you for dust in the chaos of the battlefield, to bleed out between kin and foe alike. You'd made your peace, said your quiet goodbyes. You'd prayed to the God-King for a good journey home, to join your brethren in the Eternal Army in the great beyond.", "goto": 9 },
			9: { "speaker": "", "dialogue": "...And then the witch had found you, and wrenched you from the jaws of death. 
			Gently you place the armour back, your stomach churning.", "checkSaveVariable": { "keyToCheck": "realise_shit_is_fucked", "wantedValue": "true", 
			"goto_false": 10, 
			"goto_true": 11 } },
			10: { "speaker": "", "dialogue": "You don't know if you trust anything in this house - but you need to find out what happened after the Battle of Daybreak. A part of you wants to believe that if things got so dire that you were all but felled that the God-king had swept in soon after, cleansing the battlefield in a wave of shining light like the scripture's you'd heard.
			...The fact that you are here of all places makes you think that might not be the case.", 
			"setSaveVariable": ["armour_interracted", true], "end": true },
			11: { "speaker": "", "dialogue": "Not only had the Saevii won, but they'd won [i]easily[/i]. Truly for the first time you realise that there's no longer a place for you in this world.
			You try not to dwell on that, and fail miserably.", 
			"setSaveVariable": ["armour_interracted", true], "end": true },
			
			100: { "speaker": "", "dialogue": "Your broken and battered armour sits on the table, an uncomfortable reminder of your defeat. ", "end": true},	
			}, 
				
	"WateringCanTable": {
		0: {"checkSaveVariable": { "keyToCheck": "lounge_takenWateringCan", "wantedValue": "true", "goto_false": 2, "goto_true": 1 }},		
		#taken watering can
		1: { "speaker": "", "dialogue": "An empty table.", "end": true},		
		#have not taken watering can
		2: { "speaker": "", "dialogue": "A table with a watering can on it.", 			
			"checkSaveVariable": { 
				"keyToCheck": "frontdoor_interactedwithdeadplant", 
				"wantedValue": "true", 
				"goto_false": 10, 
				"goto_true": 20 }},
				
		10: { "speaker": "", "dialogue": "Thats how she waters the plants.", "end": true },				
		20: { "speaker": "", "dialogue": "There's probably a way you can use that...", 
		"choice": {"c1": {"choice": "Take the watering can", "goto": 22 }, "c2": { "choice": "Leave it.", "goto": 21 } } },
		
		21: { "speaker": "", "dialogue": "You leave the watering can for now.", "end": true },
		22: { "speaker": "", "dialogue": "You take the watering can. It has a nice heft to it from the water sloshing inside.", 
			"setSaveVariable": ["lounge_takenWateringCan", true], "end": true },					
		}, 
					
	"Saplings": {
		1: { "speaker": "", "dialogue": "This shelf has a variety of saplings parked on it. All different sizes, colours and varieties make for quite the impressive display. It doesn't seem like any plant type is an obstacle.", "end": true},
		}, 

	### TODO: Writing
	"Bowls": {
		0: {"checkIgnusState": {
			"goto_fucked": 10, 
			"goto_fed": 20, 
			"goto_canfeed": 30, 
			"goto_cantfeed": 40 }},	
			
		##eaten out by Ignus
		10: { "speaker": "", "dialogue": "Ignus' food and water bowls are here. As you look them over you watch as the hellhound pins you with his gaze, before licking his lips. Slowly. That damn tongue moves intentionally through the air, flicking at the end deftly. All the while his eyes stay pinned on you - knowing. [i]Goading.[/i]", "goto": 11 },
		11: { "speaker": "", "dialogue": "He is fed, sure. But it seems Ignus would not mind having seconds. Or thirds. Or, you suspect, throwing out the metaphor entirely and soothing the ache in your cunt properly.", "end": true },
		
		#fed, not fucked
		20: { "speaker": "", "dialogue": "There's not a crumb left of food - you realise that Ignus is watching you as you look over the now-clean bowl. His attention feels like a weight, and makes you squirm.", "end": true },
		
		#not fed, but can now
		30: { "speaker": "", "dialogue": "Ignus' food and water bowls are here - while the water is filled, the food bowl is empty. The hellhound seems to be keeping a careful eye on the meat in your hand, but makes no move to take it from you. How... Polite.", "choice": {"c1": {"choice": "Feed the hound.", "goto": 31 }, "c2": { "choice": "Don't feed him just yet.", "goto": 32 } } },
		
		31: { "speaker": "", "dialogue": "You feed Ignus the dog food.", 		
		"setSaveVariable": ["ignus_fed", true], "end": true },
		32: { "speaker": "", "dialogue": "You don't feed Ignus the food.", "end": true },		 	
		
		#not fed, cant feed
		40: { "speaker": "", "dialogue": "This appears to be the hellhound's water and food bowls. While the water bowl is filled, the food bowl is empty.", "goto": 41 },
		41: { "speaker": "", "dialogue": "Good to know where this is - now, time to find the food.", "end": true },		
		},
	
	## TODO: finish writing, add proper ignus stuff		 
	"Fireplace": {
		0: { "checkSaveConditions": [
		{ "save_key": "fire_key", "goto": 2 },
		{ "save_key": "lounge_fireplaceLit", "goto": 30 },
		{ "save_key": "bathroom_furnaceFern", "goto": 60 },
		{ "save_key": "", "goto": 5 },		]},
	
		2: { "speaker": "", "dialogue": "The fire flickers quietly in the hearth, relieved of its treasure. It's a moment of quiet in this strange place.", "end": true },	
		
		5: { "speaker": "", "dialogue": "The hearth is cold and empty. Firewood is stacked up on the side, though there doesn't seem to be a way to light it in sight.", "end": true },				
		
		30: { "speaker": "", "dialogue": "The fire flickers quietly in the hearth. You can see something in center of the tongues of flame, glowing softly.", 
			"checkSaveVariable": { 
				"keyToCheck": "lounge_takenWateringCan", 
				"wantedValue": "true", 
				"goto_false": 31, 
				"goto_true": 32 }},		
		
		#without watering can
		31: { "speaker": "", "dialogue": "Maybe there's some way you can reach it.", 
		"choice": 
			{"c1": {"choice": "Reach for it.", "goto": 33 }, 
			"c2": { "choice": "Ask Ignus to get it", "goto": 40 }, 
			"c3": { "choice": "Maybe not.", "goto": 35 }  } },	
			
		#with watering can
		32: { "speaker": "", "dialogue": "Maybe there's some way you can reach it.", 
		"choice": 
			{"c1": {"choice": "Reach for it", "goto": 33 }, 
			"c2": { "choice": "Ask Ignus to get it", "goto": 40 }, 
			"c3": { "choice": "Put out the fire with the watering can", "goto": 36 }, 
			"c4": { "choice": "Maybe not...", "goto": 35 },  } },	
		
		# reach for it	
		33: { "speaker": "MC", "dialogue": "Ow!", "goto": 34 },
		34: { "speaker": "", "dialogue": "That's a very real fire, and a very real burn you almost gave yourself. Maybe not your smartest moment.", "end": true },			
				
		# maybe not
		35: { "speaker": "", "dialogue": "You've got to think about the best way to do this.", "end": true },
		
		#use watering can	
		36: { "speaker": "", "dialogue": "You grab the watering can, starting to pour its contents onto the fire- 
		Wait - is the key [i]melting[/i] under the stream?!", "goto": 37 },
		37: { "speaker": "", "dialogue": "You quickly pull back the wateirng can; thankfully the fire spring back to life and the key retakes its form. Damn, makes sense the thing's enchanted with some sort of magic - but if you can't put out the fire to grab it, nor find any tools for the job, how on earth are you supposed to do this?", "end": true },			
		
		#ask ignus
		40: { "speaker": "", "dialogue": "Ask Ignus", "end": true },
			
		60: { "speaker": "", "dialogue": "The hearth is cold and empty - and the furnace fern is burning a (metaphorical) hole in your pocket.", "end": true },	
	},		
					
	"Dishes": {
		1: { "speaker": "", "dialogue": "Some dishes with a few crumbs left on it. There's nothing for you to eat here, even if you were okay with somebody else's leftovers.", "end": true},
	},	
					
	"OtherChair": {
		1: { "speaker": "", "dialogue": "This chair appears to be in near new condition - a couple of minor scrapes, but even the quilted cushion on it appears to be barely used.", "end": true},
	},
				
	"WitchChair": {
		1: { "speaker": "", "dialogue": "This chair appears to be well used, the quilted cushion on the seat faded in a way only a good many washes can do. It has also been strangely tucked to one side, away from the dishes still left on the table. Did the witch mean to leave so quickly?", "end": true},
	},							
}
