extends Node

class_name gardenConvos

static var Convos_Dict = {
	"Tree": {
			0: { "checkSaveConditions": [
			{ "save_key": "crow_key", "goto": 200 },							#finished crow tree
			{ "save_key": "cellar_eatenBirdSeed", "goto": 201},					#fucked the route
			{ "save_key": "garden_putClitRingOnWrong", "goto": 100 },			#player fucked up route
			{ "save_key": "cellar_takenBirdSeed", "goto": 10 }, 				#bird can be fed - once done, starts clamps/ring bit
			{ "save_key": "garden_interactedWithCrowTree", "goto": 4 },			#bird is chilling		
			{ "save_key": "", "goto": 1 },		]}, 							#first found tree
			#Completed route
			200: { "speaker": "", "dialogue": "[Has Crow Key]", "end": true },		
			201: { "speaker": "", "dialogue": "The tree is alive with activity - singing birds enjoying the afternoon sun, the rustle of the breeze through the leaves.
			Corvid activity does not, however, seem to be charting.", "end": true },
			100: { "speaker": "", "dialogue": "Your fresh nose ring is a strange reminder of your current circumstances. The crow has changed his, however, and is no longer here.", "end": true },								
		
			#introduction
			1: { "speaker": "", "dialogue": "This thing is huge - and yet wears its age well. An immense halo of greenery surrounds the great tree's crown, creating a safe haven for an endless ensemble of birds.", "goto": 2 },
			2: { "speaker": "", "dialogue": "It's mostly sparrows and pigeons you can see from here - though there seems to be a large crow hopping among the branches. Occasionally he seems to stop, peering down as if as fascinated with you as you are him.", "goto": 3 },
			3: { "speaker": "", "dialogue": "He doesn't seem to have any interest in approaching, though - clearly you're not [i]that[/i] level of interesting to him.", 
			"setSaveVariable": ["garden_interactedWithCrowTree", true], "end": true }, 
			
			#post intro
			4: { "speaker": "", "dialogue": "You spend some time birdwatching - the silly spats and flurry of activity from the little guys is a nice distraction from your current situation.
			Occasionally you see that crow still watching, but he disappears once you meet his eyes.", "end": true },
			
			10: { "speaker": "", "dialogue": "[Taken bird feed, have option to feed crow]", "choice": {
								"c1": { "choice": "Feed the crow", "goto": 20 },
								"c2": { "choice": "Blatantly eat the seed in front of it", "goto": 11 },
						}
				},		
			11: { "speaker": "", "dialogue": "Looking that black crow fuck right in the eye, you scoop a handful of seed into your mouth. Who's interesting now, buddy?", "goto": 12 },
			12: { "speaker": "", "dialogue": "To absolutely nobody's surprise, tactics of intimidation and belittlement do not work on crows.", 
			"setSaveVariable": ["cellar_eatenBirdSeed", true], "goto": 13 }, 
			13: { "speaker": "", "dialogue": "The crow hops down, watching you with a long, long look. The moment that your mouth starts to feel dry from the gritty, uncooked seeds crowding it through? He futters off, a smudge of black disappearing into the treeline.
			...You've probably made better decisions in your life.", "goto": 14 }, 
			14: { "speaker": "", "dialogue": "Looking that black crow fuck right in the eye, you scoop a handful of seed into your mouth. Who's interesting now, buddy?",  "end": true },
			
			
			20: { "speaker": "", "dialogue": "[Crow eats seeds]", "goto": 21 },
			21: { "speaker": "", "dialogue": "[Crow then throws the player a set of rings. Emphasis on it being time sensitive the decision.]", "choice": {
								"c1": { "choice": "Put the rings on your ears", "goto": 23 },
								"c2": { "choice": "Put the rings on your nipples", "goto": 30 },
								"c3": { "choice": "Think about it and come back to it", "goto": 22 },
						}
				},
			22: { "speaker": "", "dialogue": "You want to think this through - unfortunately, the crow does not agree with your puny human decisions. With a beat of those powerful wings he takes off, quickly disappearing into the treeline.", 
			"setSaveVariable": ["cellar_eatenBirdSeed", true], "end": true }, 
			23: { "speaker": "", "dialogue": "You make a decision. It's the wrong one. You can try one more time", "choice": {
								"c2": { "choice": "Put the rings on your nipples", "goto": 30 },
								"c3": { "choice": "Think about it and come back to it", "goto": 22 },
						}
				},
			30: { "speaker": "", "dialogue": "[Sexy nipple ring enchantment scene]", "goto": 31 },
			31: { "speaker": "", "dialogue": "[Crow offers you one more ring] It naturally goes on your.", "choice": {
								"c1": { "choice": "Nose", "goto": 32 },
								"c3": { "choice": "Clit", "goto": 40 },
						}
				},
			32: { "speaker": "", "dialogue": "Nose was wrong, cow points up!", 
			"setSaveVariable": ["corruptionPoints_Cow", 1], "goto": 33 },
			33: { "speaker": "", "dialogue": "Now all of game knows you fucked up.", 
			"setSaveVariable": ["garden_putClitRingOnWrong", true], "end": true }, 			 
			
			40: { "speaker": "", "dialogue": "Clit was right - get a key for your troubles.", 
			"setSaveVariable": ["crow_key", true], "end": true }, 		
		},
		
	#true end route placement
	"River": {
				0: { "checkSaveVariable": { "keyToCheck": "frontdoor_diagram", "wantedValue": "true", "goto_false": 1, "goto_true": 10 }},
				#haven't checked diagram
				1: { "speaker": "", "dialogue": "It's nice to take a minute out here to yourself - the whistle of wind, the rustle of leaves overhead and birdsong beyond. It's peaceful; you'd forgotten how much you'd missed peaceful.", "checkSaveVariable": { "keyToCheck": "crow_key", "wantedValue": "true", "goto_false": 2, "goto_true": 9 }},
				2: { "speaker": "", "dialogue": "You take a moment to breathe the fresh air into your lungs - to remind yourself, in some small way, that you're here and alive.", 
				"checkSaveVariable": { "keyToCheck": "fire_key", "wantedValue": "true", "goto_false": 3, "goto_true": 9 }},
				3: { "speaker": "", "dialogue": "You don't know what to do with yourself, not really - but you can put one foot in front of the other and find your way that ways. 
				Your destiny will come to you soon.", 
				"checkSaveVariable": { "keyToCheck": "plant_key", "wantedValue": "true", "goto_false": 4, "goto_true": 9 }},	
				4: { "speaker": "", "dialogue": "You're sure of it.", "end": true },							
				
				
				9: { "speaker": "", "dialogue": "-Wait. That glinting over the bank. What on earth is that?", 
				"setSaveVariable": ["frontdoor_diagram", true], "goto": 11 },
				10: { "speaker": "", "dialogue": "This is the place, isn't it?", "goto": 11 },
				11: { "speaker": "", "dialogue": "Getting onto your knees you carefully lean over the edge of the riverbank, feeling around until-", "goto": 12 },
				12: { "speaker": "", "dialogue": "-got it!", "goto": 13 },
				13: { "speaker": "", "dialogue": "You pull up a small box, its edges shining in the afternoon light. Along its face sits three keyholes. 
				What a curiousity.", 
				"checkSaveConditions": [
					{ "save_key": "all_three_keys", "goto": 100 },
					{ "save_key": "crow_key", "goto": 20 },
					{ "save_key": "fire_key", "goto": 20 },
					{ "save_key": "plant_key", "goto": 20 },			
					{ "save_key": "", "goto": 30 },		]},	
					
				20: { "speaker": "", "dialogue": "Unfortunately, less than three keys is not three keys, much as you'd like for the math to work out otherwise. It doesn't stop you from poking and jabbing in every which way you can, though. Maybe you can shimmy it open? Maybe?", "goto": 21 },
				21: { "speaker": "", "dialogue": "You even try poking a nail into one of the empty key sockets, in case you could jiggle it open. 
				(A small shock to your hand is enough to dissuade you.)", "goto": 22 },
				22: { "speaker": "", "dialogue": "Guess you'll have to do this legitimately - now, where are those other keys?", "end": true },	
									
				30: { "speaker": "", "dialogue": "You jiggle it and turn the box every which way, but the answer is clear as day - you're not getting into this unless you have the keys. Figuring out where to find [i]those[/i] is a whole other question though.", "end": true },
									
				#apprentice_seed_taken	
				100: { "speaker": "", "dialogue": "Insert transformation here.", 
				"setSaveVariable": ["apprentice_seed_taken", true], "end": true },	
		},
	
	#tentacle food booth	
	"Bin": {
				0: { "checkSaveVariable": { "keyToCheck": "garden_hasTentacleFood", "wantedValue": "true", "goto_false": 2, "goto_true": 1 }},
				# has food
				1: { "speaker": "", "dialogue": "You've taken what you need from here - last time you checked, you weren't a fan of rummaging around in filth, anyway.", "end": true },
				#doesnt have food
				2: { "speaker": "", "dialogue": "A large bin made of wood sits just outside the door, a bucket sitting next to it. A quick glance inside reveals a strange concoction; grass clippings, fallen leaves, and what appears to be spoilt milk?", "goto": 3 },
				3: { "speaker": "", "dialogue": "On the side of the bin is the words 'Pit Food'.", "choice": {
								"c1": { "choice": "What? No.", "goto": 4 },
								"c2": { "choice": "Take a bucketful of sludge.", "goto": 5 },
						}
				},
				4: { "speaker": "", "dialogue": "Eurgh.", "end": true },	
				
				5: { "speaker": "", "dialogue": "Whatever you're feeding clearly doesn't value quality of flavor. Still, an instruction is an instruction - you grab the bucket and scoop it in, hauling out a load of questionably smelling 'food'.", "goto": 6 },
				6: { "speaker": "MC", "dialogue": "I'm not hauling this around any longer than I need to.", "end": true },							
		},
}
