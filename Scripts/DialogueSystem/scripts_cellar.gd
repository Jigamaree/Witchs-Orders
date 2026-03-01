extends Node

class_name CellarConvos

static var convos_Dict = {
	"Boxes": {
			1: { "speaker": "none", "dialogue": "A good many wooden crates are stacked up in the back of this cellar. As you look through the contents though, you realise that most of them are empty - the few things left are hardly the makings of a meal. Oils, a few spices, a bag of salt.", 
			"checkSaveVariable": { "keyToCheck": "realise_shit_is_fucked", "wantedValue": "true", "goto_false": 2, "goto_true": 3 }},
			#before shits fucked
			2: { "speaker": "", "dialogue": "You'd heard that the Saevii forces had shut down the trade routes, but you'd been told the people were being fed - why would the God-King not feed his own people? But seeing the lack of supplies here... It leaves an uncomfortable feeling twisting in your stomach.", "end": true },
			#after shits fucked
			3: { "speaker": "", "dialogue": "Knowing that the Saevii forces had been so close makes looking at these empty boxes all the more uncomfortable. You want to blame this on yourself, for being blind to the suffering of the people you're supposed to protect...", "goto": 4 },
			4: { "speaker": "", "dialogue": "But how were you supposed to act, to question things when by every account you were fed, the Divine had everything under control?
			The God-King had even gone so far as to claim that the other armies had the paltry raids under control, that there was no reason for his chosen to 'roam the streets'.", "end": true },
			5: { "speaker": "", "dialogue": "The idea that you were just... Sitting about while people were suffering only complicates your feelings towards the Divine even more.", "end": true },		
		},
		
	"Cheese": {
			0: {"checkSaveVariable": { "keyToCheck": "knight_fed", "wantedValue": "true", "goto_false": 2, "goto_true": 1 }},
			#have eaten
			1: { "speaker": "none", "dialogue": "Several large blocks of cheese sit on the counter, the scent of it light and sweet. While it smells delicious, you're not interested in eating anything more right now.", "end": true },
			#could eat
			2: { "speaker": "", "dialogue": "Several large blocks of cheese sit on the counter - the sweet, rich smell of it making your stomach rumble. A few slices of this would probably be acceptable as 'something to eat' in the witch's eyes.",
					"choice": {
							"c1": { "choice": "Find something else", "goto": 3 },
							"c2": { "choice": "Enjoy some cheese", "goto": 4 },
					}
			},
			#do not the cheese
			3: { "speaker": "", "dialogue": "Probably best to explore your other options.", "end": true },
			#eat the cheese
			4: { "speaker": "", "dialogue": "Cheese may be a simple food, but you've always enjoyed it. You carefully carve off a piece of the block, popping it your mouth. The taste is sweet, creamy and rich, forcing a grunt of surprise from you - it's delicious!", "goto": 5 },
			5: { "speaker": "", "dialogue": "The singular slice you decide to take off the block turns to two, three, four - by the time you come back to your senses, you're pleasantly stuffed. You chase the taste of it from your fingers as you consider your next move.", "goto": 6 },
			6: { "speaker": "", "dialogue": "And, hopefully, figure out when you can next have more of that cheese. Just the thought is enough to make you low in approval.", 
			"setSaveVariable": ["knight_eaten_item", SaveData_CurrentGame.Eaten_Item.CHEESE], "end": true},						
		},	
		
	"EmptyShelves": {
		1: { "speaker": "none", "dialogue": "You can tell these shelves would be where more pantry staples should be. Jams, honey, maybe even some pickles or canned meals. Instead, nothing but a thin layer of dust greets you.", "goto": 2 },
		2: { "speaker": "", "dialogue": "You want to blame this on the witch being disorganised - but witches are known for their capacity to hide amongst the commonfolk. If there was food to be had, she would have just as much capacity to get it as any other civilian... The fact there's nothing here worries you.", "end": true },
		},
	
	"MeatHook": {
			0: { "checkSaveConditions": [
			{ "save_key": "cellar_haveIgnusMeat", "goto": 1 },
			{ "save_key": "cellar_eatenIgnusMeat", "goto": 1 },
			{ "save_key": "", "goto": 2 },		]},		

			#has the meat
			1: { "speaker": "", "dialogue": "This should be an empty hook, but a certain dev didn't have time to remove it. Oops.", "end": true },
			#does not have the meat
			2: { "speaker": "", "dialogue": "The shelves along this back wall have hooks set in the wall, clearly set up to hold up salamis and other curing meats to dry. Right now, though, there is but a single meager bone hung up. Around the bone hangs the tag 'Ignus'.", "choice": {
								"c1": { "choice": "Leave the meat", "goto": 999 },
								"c2": { "choice": "Take it for Ignus", "goto": 5 },
								"c3": { "choice": "Eat it", "goto": 9 },
						}
				},
			5: { "speaker": "", "dialogue": "You take the hefty bone - now, where was his bowl...?", 			
			"setSaveVariable": ["cellar_haveIgnusMeat", true], "end": true},	

			9: { "speaker": "", "dialogue": "Come to think of it, it's been a long while since you've had a lovely bit of cured meat like this...", 
			"checkSaveVariable": { "keyToCheck": "knight_fed", "wantedValue": "true", "goto_false": 10, "goto_true": 998 }},
			10: { "speaker": "MC", "dialogue": "You know what?", "goto": 11 },
			11: { "speaker": "MC", "dialogue": "Fuck it.", "goto": 12 },
			12: { "speaker": "", "dialogue": "You've been knocked around so hard your memory's been scrambled, got picked up by a witch instead of your own squadron, and now need to solve little puzzles like a circus monkey? 			
			You deserve a treat, damnit!", "goto": 13 },
			13: { "speaker": "", "dialogue": "Hunkering down in the closet, you tear into it caveman style, making a pleased sound at the taste on your tongue. You could probably have combined this with... Basically anything else in the house to make a more respectable meal out of it - but frankly? You're hungry, and if this is pet food? You can be a damn pet for a second.", 
			"setSaveVariable": ["knight_eaten_item", SaveData_CurrentGame.Eaten_Item.DOGFOOD], "end": true},			
	
			998: { "speaker": "", "dialogue": "...But you've already eaten. That's probably saved you from a bad decision, in hindsight.", "goto": 2 },
			999: { "speaker": "", "dialogue": "You decide to scope out your surroundings a bit more.", "end": true },				
				
		},####
	
	"Milk": {
			0: {
				"checkSaveVariable": { "keyToCheck": "knight_fed", "wantedValue": "true", "goto_false": 2, "goto_true": 1 }},
			#have eaten
			1: { 
				"speaker": "none", "dialogue": "A large jug of milk and a glass sits on the counter, chilled by the cool air of the cellar. You've already eaten, so a rich glass of milk is the last thing on your mind.", "end": true },
			#could eat
			2: { "speaker": "", "dialogue": "While not typically a meal - and not usually your go-to meal, either - a glass of creamy milk would easily keep you going food-wise. You can tell just by looking at it that it's as fresh as it comes.",
					"choice": {
							"c1": { "choice": "Find something else", "goto": 3 },
							"c2": { "choice": "Have a glass of milk", "goto": 4 },
					}
			},
			3: { "speaker": "", "dialogue": "There'll be other options, you're sure.", "end": true },			
			4: { "speaker": "", "dialogue": "Taking the conveniently placed cup, you pour yourself a serving of milk. Having something so farm-fresh is a novelty to you; years of travelling on the road has practically re-wired your palate for rations and the occasional tavern stew and ale combo.", "goto": 5 },
			5: { "speaker": "", "dialogue": "Yet as the milk touches your lips, it's as if all the years you've not indulged in fresh dairy come barreling back.
			
			Divine help you, this is [i] delicious! [/i]", "goto": 6 },
			6: { "speaker": "", "dialogue": "It's like you can't control your hands - you [i]need[/i] more of this milk, hungering for it in a way that you can't put words to. It's not a question of whether you should have another glass, it's how fast you can get the next mouthful in. By the third you've foregone the glass entirely, holding the jug to your lips and desperately swallowing back the creamy liquid.", "goto": 7 },
			7: { "speaker": "", "dialogue": "Some detached part of you think that this is the same enthusiasm you used to swallow cock with, back before you pledged yourself to celibacy as a Divine's Chosen. Any elaboration on that thought remains unrealised, though - that would require you to be engaging in any form of thinking.
			No, you have something much more important to lose yourself in.", "goto": 8 },
			8: { "speaker": "", "dialogue": "Coming back to yourself is like awakening to a crime scene - your face and chest sticky with spilt-over milk, the creaminess of your indulgence still sitting pleasantly on your tongue. You're not sure when you ended up sprawled on the ground, but it makes you even more aware of the heat to your skin and the pleasant ache between your thighs.", "goto": 9 },
			9: { "speaker": "", "dialogue": "An ache you seem to be indulging without realising - your fingers are curling in a steady, easy rhythm against your clit, coinciding with the waves of pleasure you had just put down to a good meal. You know, realistically, you should stop right now - instead it takes you minutes to drag your fingers away from where it feels so good to curl your fingers in.", 
			"setSaveVariable": ["knight_eaten_item", SaveData_CurrentGame.Eaten_Item.MILK], "goto": 10 },
			10: { "speaker": "", "dialogue": "Shaking your head, you bring your focus back to the present moment. You're fed. That's good - that's [i]progress[/i]. One less thing on your metaphorical plate - even if it doesn't quite feel like all your mind's come back from the experience.",  
			"setSaveVariable": ["knight_eaten_item", SaveData_CurrentGame.Eaten_Item.MILK], "end": true},						
		},
	
	"Sacks": {
		1: { "speaker": "none", "dialogue": "Large sacks of flour sit on the ground - you can tell this is the finely ground stuff, the sort that can sit for months without going bad. It doesn't have as much flavor as freshly milled flour - but it'll make as decent a loaf as any.", "end": true }
		},				
	
	"SeedHook": {
		0: { "checkSaveConditions": [
		{ "save_key": "cellar_takenBirdSeed", "goto": 1 },
		{ "save_key": "cellar_eatenBirdSeed", "goto": 1 },		
		{ "save_key": "garden_interactedWithCrowTree", "goto": 2 },
		{ "save_key": "", "goto": 3 },		]},
		#taken the seed, somehow
		1: { "speaker": "", "dialogue": "There's nothing left on this shelf for you - even the little sack of seed now lies empty.", "end": true },	
		#have interacted with the tree, so know you can use it as birdseed	
		2: { 
			"speaker": "none", "dialogue": "A small shelf sits mounted to this wall. The meat hooks underneath it are as empty as the others in this room, but a small bag of seed sits on top.
			It looks [i]technically[/i] edible, but not appetising in the slightest - it is an option, though.", 
			"choice": {
					"c1": { "choice": "Leave it", "goto": 999 },
					"c2": { "choice": "Eat the seed", "goto": 99 },
					"c3": { "choice": "Take some seed with you", "goto": 200 },
					}
			},
			
		#no idea about the crow	
		3: { 
			"speaker": "none", "dialogue": "A small shelf sits mounted to this wall. The meat hooks underneath it are as empty as the others in this room, but a small bag of seed sits on top.
			It looks [i]technically[/i] edible, but not appetising in the slightest - it is an option, though.", 
			"choice": {
					"c1": { "choice": "Leave it", "goto": 999 },
					"c2": { "choice": "Eat the seed", "goto": 99 },
					}
			},
		
		99: { "speaker": "", "dialogue": "You look at the little parcel. Are you really considering this?", 
		"checkSaveVariable": { "keyToCheck": "knight_fed", "wantedValue": "true", "goto_false": 100, "goto_true": 998 }},	
		100: { "speaker": "", "dialogue": "...Yes, yes you are. Grimacing, you take down the bag. Survival has never looked so... Unpleasant. The reality isn't much better; each mouthful of seed has you regretting your decision more, with its gritty, slightly oily texture drying your mouth out fast. ", "goto": 101 },
		101: { "speaker": "", "dialogue": "By the time the bag is empty you're somehow both unpleasantly full and unsatiated. 
		One order off the list - but at what cost?", 
		"setSaveVariable": ["knight_eaten_item", SaveData_CurrentGame.Eaten_Item.BIRDSEED], "end": true},
		
		200: { "speaker": "", "dialogue": "You dip your hand into the small bag, retrieving a handful of seed. There's only one place around here you've seen a bird...", 
		"setSaveVariable": ["cellar_takenBirdSeed", true], "end": true},		
				
		998: { "speaker": "", "dialogue": "...No, no you're not. You've already eaten - you don't need to subject yourself to this.", "end": true },		
		999: { "speaker": "", "dialogue": "You leave the small sack of seed alone.", "end": true },
		
		},###	
}
