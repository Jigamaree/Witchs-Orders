extends Node

class_name gardenConvos

static var Convos_Dict = {
	"Tree": {
				1: { "speaker": "", "dialogue": "Tree!", "end": true },
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
