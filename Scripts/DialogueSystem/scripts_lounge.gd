extends Node

class_name LoungeConvos

static var convos_Dict = {
	"": {
		1: { "speaker": "none", "dialogue": "Hello! You didn't put a thing in!", "end": true }
		},
	
	"firstEntry":{
		1: { "speaker": "", "dialogue": "You freeze as you enter the room - the sound of slow, heavy breathing fills the air, from a creature many times your size. Best be careful - or leave out the front door, before it can see you.", "setSaveVariable": ["lounge_enteredFirstTime", true], "end": true }
	},	
		
	"rightArmchair": {
		1: { "speaker": "", "dialogue": "This appears to be where the witch would like you to wait for her when you're done. Would you like to?", 
		"choice": {
					"c1": { "choice": "Not just yet", "goto": 2 },
					"c2": { "choice": "Yes", "goto": 66 },
				}
		},
		2: { "speaker": "", "dialogue": "You continue to look around.", "end": true },
		66: { "speaker": "", "dialogue": "Time to wait for the witch.", "goToWitchEpilogue": true },	
		},	
					
	"leftArmchair": {
			1: { "speaker": "", "dialogue": "While this looks just like the other armchair, there's a firmness to the stuffing and crispness to the leather that makes it feel unusued. Guess the witch has a favorite chair.", "end": true },
		}, 
			
	"CoffeeTable": {
		0: {"checkSaveVariable": { "keyToCheck": "armour_interracted", "wantedValue": "true", "goto_false": 1, "goto_true": 100 }},		
			1: { "speaker": "", "dialogue": "No - that can't be right.", "goto": 2 },
			2: { "speaker": "", "dialogue": "You sit down on the armchair beside the table, eyes wide as you look over the state of the armour that's been carefully heaped up on the coffee table. Your first kneejerk is to discount all this as Not Yours - as some test of faith from the Divine, or a cruel manipulation from the witch that's brought you here.", "goto": 3 },
			3: { "speaker": "", "dialogue": "You can't deny it though. This [i]is[/i] your armour. You can see the minute dents and scrapes that no amount of upkeep had been able to buffer up - the cross over the heart, the ding at the collarbone, the wonky links of chainmail at the side of the tunic. There's too many details that you know off by heart for this to be some simple forgery, especially made in the little amount of time you've been passed out.", "goto": 4 },
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
			10: { "speaker": "", "dialogue": "You don't know if you trust anything in this house - but you need to find out what happened after the Battle of Daybreak. A part of you wants to believe that if things got so dire that you were all but felled, the God-king had swept in soon after, cleansing the battlefield in a wave of shining light like the scriptures you'd heard.
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
				"keyToCheck": "plant_guide_read", 
				"wantedValue": "true", 
				"goto_false": 10, 
				"goto_true": 20 }},
				
		10: { "speaker": "", "dialogue": "That's how she waters the plants - truly, stunning technology at play here.", "end": true },				
		20: { "speaker": "", "dialogue": "There's probably a way you can use that...", 
		"choice": {"c1": {"choice": "Take the watering can", "goto": 22 }, "c2": { "choice": "Leave it.", "goto": 21 } } },
		
		21: { "speaker": "", "dialogue": "You leave the watering can for now.", "end": true },
		22: { "speaker": "", "dialogue": "You take the watering can. It has a nice heft to it from the water sloshing inside.", 
			"setSaveVariable": ["lounge_takenWateringCan", true], "end": true },					
		}, 
					
	"Saplings": {
		1: { "speaker": "", "dialogue": "This shelf has a variety of saplings parked on it. All different sizes, colours and varieties make for quite the impressive display. It doesn't seem like any plant type is an obstacle.", "end": true},
		}, 

	"Bowls": {
		0: {"checkIgnusState": {
			"goto_fucked": 10, 
			"goto_fed": 20, 
			"goto_canfeed": 30, 
			"goto_cantfeed": 40 }},	
			
		##eaten out by Ignus
		10: { "speaker": "", "dialogue": "Ignus' food and water bowls are here. As you look them over, you watch as the hellhound pins you with his gaze, before licking his lips. Slowly. That damn tongue moves intentionally through the air, flicking at the end deftly. All the while his eyes stay pinned on you - knowing. [i]Goading.[/i]", "goto": 11 },
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
	 
	"Fireplace": {
		0: { "checkSaveConditions": [
		{ "save_key": "fire_key", "goto": 2 },
		{ "save_key": "lounge_fireplaceLit", "goto": 30 },
		{ "save_key": "bathroom_furnaceFern", "goto": 600 },
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
		37: { "speaker": "", "dialogue": "You quickly pull back the watering can; thankfully, the fire springs back to life and the key retakes its form. Damn, makes sense the thing's enchanted with some sort of magic - but if you can't put out the fire to grab it, nor find any tools for the job, how on earth are you supposed to do this?", "end": true },			
		
		#ask ignus
		40: { "speaker": "MC", "dialogue": "Would you mind getting this out, Ignus?", 
		"checkSaveConditions": [
		{ "save_key": "ignus_fucked_ate_out", "goto": 60 },
		{ "save_key": "ignus_fed", "goto": 45 },
		{ "save_key": "", "goto": 41 },		]},

		41: { "speaker": "", "dialogue": "Ignus just gives you a long look.", "goto": 42 },
		42: { "speaker": "Ignus", "dialogue": "You expect me to do that on an empty stomach?", "goto": 43 },
		43: { "speaker": "", "dialogue": "Seems like he'll be no use unless you tend to his needs.", "end": true },
			
		45: { "speaker": "", "dialogue": "His eyes rest easy on you, the red low and lidded. You're a soldier; you're used to being the hunter, the victor, the one that can stand her ground. In this moment, you are the rabbit with the hound breathing down your neck.", "goto": 46 },
		46: { "speaker": "Ignus", "emote": "pleased", "dialogue": "I could... But I require some dessert, first.", "goto": 47 },
		47: { "speaker": "", "dialogue": "He stares at you like the cat that's got the cream.", 		
		"choice": 
			{"c1": {"choice": "Absolutely not", "goto": 48 }, 
			"c2": { "choice": "Serve Ignus his dessert - you", "goto": 50 }, 
			} 
		},			
		48: { "speaker": "Ignus", "dialogue": "Suit yourself, pup", "goto": 49 },
		49: { "speaker": "", "dialogue": "The hellhound settles back down, leaving you to think over your choices.", "end": true },
		
		50:	{ "speaker": "Ignus", "dialogue": "Excellent.", "preloadConversation": "IgnusEatOut", "end": true },
		
		60: { "speaker": "", "dialogue": "The hellhound gives you a long, heated look - for a moment you wonder if the monster is going to demand more of you. Your mouth on his cock. Your tits - maybe even your cunt, stretched and broken for him completely... It's not a terrible thought, really.", "goto": 61 },
		61: { "speaker": "Ignus", "dialogue": "Sure.", "goto": 62 },
		62: { "speaker": "", "dialogue": "You watch as he gets up and walks to the fireplace, grabbing the item with his mouth before dropping it back into your hand. Despite the fact it's been sitting in the heart of the flames, it's only pleasantly warm for the touch.", "goto": 63 },
		63: { "speaker": "MC", "dialogue": "Thanks, Ignus.", "goto": 64 },
		64: { "speaker": "Ignus", "dialogue": "Took you long enough, pup.", "goto": 65 },
		65: { "speaker": "", "dialogue": "Despite the rough words, the monster sounds... Fond.", 
		"setSaveVariable": ["fire_key", true], "end": true },			
			
		600: { "speaker": "", "dialogue": "The hearth is cold and empty - and the furnace fern is burning a (metaphorical) hole in your pocket.",		
		"choice": 
			{"c1": {"choice": "Leave", "goto": 601 }, 
			"c2": { "choice": "Light the fireplace", "goto": 610 }, 
			} 
		},
		601: { "speaker": "", "dialogue": "You continue to look around the house.", "end": true },	
		
		610: { "speaker": "", "dialogue": "You take some time to load in some firewood from the side of the room. After a few moments of stacking, you look to the little frond in your hand. Will this thing really catch alight? Really?", "goto": 611 },
		611: { "speaker": "", "dialogue": "Thankfully nature works on her own rules, not your apprehensions. The moment you wiggle your fingers together, the Furnace Fern lights up like a magic trick. Throwing it in easily catches the stacked firewood alight... And makes you all too aware of a shape glowing within.", 		
		"setSaveVariable": ["lounge_fireplaceLit", true], "end": true },			
	},		
			
	"IgnusEatOut": {
			1: { "speaker": "", "dialogue": "Ignus is on you the moment you let him, pouncing like you're a morsel of prey he's been hunting for days. Before you know it, you're sprawled backwards onto the ground, all too aware of the massive creature behind you. Your legs are wrenched open, body manipulated like you're nothing more than a toy.", "goto": 2 },
			2: { "speaker": "Ignus", "emote": "delighted", "dialogue": "I'm going to make you [b]scream[/b], pup.", "goto": 3 },
			3: { "speaker": "", "dialogue": "Before you can make any sort of retort, you feel Ignus lick a long stripe up the sensitive flesh between your legs and oh- oh. Your fingers scramble at the floor beneath you, desperate to find anything that can ground you through [b]that[/b]. Behind you, you can hear Ignus chuckling in a way that is all too satisfied with himself.", "goto": 4 },
			4: { "speaker": "", "dialogue": "His tongue is thick, and slick in all the ways you want something pressing up against your cunt to be. It's also infuriatingly and consistently just a shade too slow; the long laps against your sensitive hole goes from mind meltingly good to infuriating in record time. Each press of the tongue is a reminder of just how empty you are - and it seems like Ignus is in no rush to get you off any faster.", "goto": 5 },
			5: { "speaker": "", "dialogue": "When you start squirming though, bucking back into his tongue to get any sort of stimulation whatsoever? That's when a paw come down on your back and knocks you to the ground. When the hound speaks again it's right into your ear, the low husk of his voice immediately making you explode out into gooseflesh.", "goto": 6 },
			6: { "speaker": "Ignus", "emote": "headtilt", "dialogue": "You feeling lucky, pup?", "goto": 7 },
			7: { "speaker": "MC", "dialogue": "I'm feeling like I'm losing my [i]mind[/i], Ignus!", "goto": 8 },
			8: { "speaker": "Ignus", "emote": "delighted",  "dialogue": "Good. You're better without it.", "goto": 9 },
			9: { "speaker": "", "dialogue": "So brashly said, and yet as he returns to his ministrations with you freshly pinned you can't help but wonder if his words are prophetic in nature. Soon enough nothing matters more than the lap of Ignus' tongue against your folds, the way you're quickly becoming soaked under his care and yet never feel like it's going to be enough. ", "goto": 10 },
			10: { "speaker": "", "dialogue": "You're whimpering as much before you know it - broken half pleads of 'please' and 'so close' and 'more' and 'fuck me', along with anything else that seems even remotely relevant to your pleasure-addled mind. It's not until you're losing track of your own tongue, tripping over your own begging words, that you hear that dark rumbling laugh from behind you.", "goto": 11 },
			11: { "speaker": "Ignus", "dialogue": "I want you to remember this, pup. Remember this and remember how fucking good I can make you feel. ", "goto": 12 },
			12: { "speaker": "", "dialogue": "He plunges his tongue in all at once, curling it in against your G-spot, and you come so hard your voice cracks.", "goto": 13 },
			13: { "speaker": "", "dialogue": "Pulse after pulse, you come over Ignus' tongue. The hellhound laps you diligently through each gush of release, each shiver of a contraction. You can't get air into your lungs fast enough, can't clench down on Ignus enough - you want to remember the shape of that tongue inside you forever, splitting you open and making you see whatever unholy equivalent to god Ignus follows.", "goto": 14 },
			14: { "speaker": "", "dialogue": "Some delirious part of you realises, with him being a demon, that's probably himself. Divine help you.", "goto": 15 },
			15: { "speaker": "", "dialogue": "Another lick and you're blindsided into another orgasm, one that shocks you so hard to the bone you're shivering by the time you come down. Still, Ignus licks you diligently through each aftershock, until the flutter of your cunt ceases and leaves you just breathing heaving on the ground.", "goto": 16 },
			16: { "speaker": "", "dialogue": "Pulling yourself up is hard - looking behind you and seeing Ignus staring at you like sex incarnate is another sort of hard altogether. As is the cock now blatantly on display in-between his hind quarters; the tip already looks ruddy and aching with arousal, the shaft thick and blood-hot. You can already imagine the salty tang of it on your tongue, the way it would split you open like a curse and fuck you into incoherency...", "goto": 17 },
			17: { "speaker": "", "dialogue": "...No. You should probably think about this some more. Ignus is fed, and that is that - and if you indulge any more than you have, you're not sure you're the one that's going to be coming out on top.",
		"setSaveVariable": ["ignus_fucked_ate_out", true], "end": true}, 
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
