extends Node

class_name FrontDoorConvos

static var convos_Dict = {
	"DeadPlant": {
			0: { "checkSaveConditions": [
				{ "save_key": "plant_key", "goto": 2 },
				{ "save_key": "lounge_takenWateringCan", "goto": 20 },
				{ "save_key": "plant_guide_read", "goto": 10 },
				{ "save_key": "", "goto": 3 },		]},
			#plant key accquired.	
			2: { "speaker": "", "dialogue": "The [i]Luck of the Lady[/i] seems to be even more lush than it was before. Then again, a good fuck leaves most folk feeling re-energised - no reason that same logic can't apply to plants.", "end": true },	
			#baseline interaction
			3: { "speaker": "", "dialogue": "In a home filled with as much greenery as this one, a dead plant - right by the front door, no less - sticks out like a sore thumb.
Guess even a witch as talented as this one can't keep everything alive.", "end": true },
			#has read plant book
 			10: { "speaker": "MC", "dialogue": "...Wait a second.", "goto": 11 },
			11: { "speaker": "", "dialogue": "You grab the plant guide book, flicking through it. According to the tome, a particular vine often seen by front doors - the Luck of the Lady - often retreats into a dormant state during periods of drought. It's apparently theoriesed to do this over winter, so it's ready for the spring.", "goto": 12 },
			12: { "speaker": "", "dialogue": "Well, it's certainly not winter now - what a confused little plant.", "end": true },
			# has watering can
			20: { "speaker": "", "dialogue": "The Luck of the Lady looks as dead as ever - but you have the power of watering cans at your disposal.", "choice": {
								"c1": { "choice": "Water the plant", "goto": 22 },
								"c2": { "choice": "Leave it alone", "goto": 21 },
						}
				},
			21: { "speaker": "", "dialogue": "Maybe you shouldn't mess with unknown plants.", "end": true },
			22: { "speaker": "", "dialogue": "[Plant sex]", 
				"setSaveVariable": ["plant_key", true], "end": true },		
		},
		
	"FrontDoor": {
		1: { "speaker": "", "dialogue": "Freedom, at your fingertips - you try the door and the handle works freely. There's nothing between you and getting the hell out of this place... And yet, the thought gives you pause.", "choice": {
			"c1": {"choice": "Not just yet", "goto": 2 }, 
			"c2": { "choice": "Get out of here!", "goto": 3 }, 
			} 
		}, 
		2: { "speaker": "", "dialogue": "Your fingers, still wrapped around the handle, hesitate. You still don't know exactly why you're here - what purpose the witch had for sweeping you, personally, off the battlefield. The answer to that question is not going to be found outside these walls.", "end": true },
		
		3: { "speaker": "", "dialogue": "You hit the handle, making your way outside - no ten step puzzles or strange enchantments or helldogs wait for you out here. Being held captive by some [i]witch[/i] is a fate you refuse to fall to.", "fadeToBlack": true, "goto": 4 },
		4: { "speaker": "", "dialogue": "It's practicality that makes you hesitate at the fenceline. Being out here makes you all the more aware of your current circumstances; alone, unarmed, and woefully unsupplied for a long journey.", "goto": 5 },
		5: { "speaker": "", "dialogue": "Naked for all intents and purposes as well - more than naked to some, considering your state of dress. It's nothing you can handle - but whether that's the wisest thing is another matter entirely.", "choice": {
			"c1": {"choice": "Get back inside", "goto": 6 }, 
			"c2": { "choice": "Leave", "goto": 7 }, 
			} 
		}, 
		6: { "speaker": "", "dialogue": "You make your way back inside - a tactical retreat, you tell yourself. It's hard to convince even yourself of that though when you feel less like the well seasoned warrior you are and more like a sheepish dog returning home. The important thing is, however, that you're back - and the mysteries of the house still awaits you.", "fadeIntoScene": true, 
		"setSaveVariable": ["corruptionPoints_Pet", 1], "end": true },
		7: { "speaker": "", "dialogue": "You've made your decision, and you're not backing down from it now.", "playEnding": "Captured" },
		},###

	"Window": {
			0: {"checkSaveVariable": { "keyToCheck": "looked_out_front_windows", "wantedValue": "true", "goto_false": 1, "goto_true": 100 }},
			#havent checked window
			1: { "speaker": "", "dialogue": "You hadn't given too much thought to exactly [i]where[/i] you were until now. Turns out, that was something of high importance.", "goto": 2 },
			2: { "speaker": "", "dialogue": "The Capital is a shining beacon of the Radiance Regieme - the city being the home of the God-King you've sworn your life to. At all corners of the country, no many how many weeks ride you go out, if you look towards the Capital lies you can see the Spire of the Divine piercing the horizon.", "goto": 3 },
			3: { "speaker": "", "dialogue": "Some call the effect magic, witchcraft, arcane wizardry. You'd been pointedly told that the Divine, who led the Arcane Purges at the forefornt of his rule, would never stoop to arcane tricks.", "goto": 4 },
			4: { "speaker": "", "dialogue": " The effect is the result of divinity; of his powers given from on high, and a promise the Radiance Regieme would never fall.", "goto": 5 },
			5: { "speaker": "", "dialogue": "A now broken promise.", "goto": 6 },
			6: { "speaker": "", "dialogue": "You look with wide eyes at the horizon - that familiar source of comfort now a crumbled wreck. Around it, you watch the serpentine shapes of Poison Drakes fly, circling like flies about a bloating corpse. One dives; even at this distance you can see it take out another chunk of the Spire.", "goto": 7 },
			7: { "speaker": "", "dialogue": "The Capital has fallen. You'd been denying it to yourself all this time - but how else were you going to end up here? If the Battle of Daybreak had been won, you would be back at camp sharing ill-gotten booze and stories. Not this. Never this.", "goto": 8 },
			8: { "speaker": "", "dialogue": "Is there even anything for you to return to anymore? You just don't know.", 		"setSaveVariable": ["looked_out_front_windows", true], "end": true },						
			
			# have 	
			100: { "speaker": "", "dialogue": "The fallen Capital outside is a harsh reminder of your current circumstances. No city to protect, no Divine to serve, your years of service now null and void. A part of you aches to rush out and find somebody, anybody else who knows - but you steady that impulse for now.", "end": true },
		},
			
	"NoticeBoard": {
		1: { "speaker": "none", "dialogue": "A large noticeboard has been hung on the wall here - an ecclectic collection of pin colours keeps them all in place", "choice": {	
						"c1": { "choice": "Handwritten letter", "goto": 100 },
						"c2": { "choice": "Flyer for tavern", "goto": 200 },
						"c3": { "choice": "Strange, offical-looking notice", "goto": 299 },
						"c4": { "choice": "Partially ripped paper pad.", "goto": 400 },
						"c5": { "choice": "Rag-tag stack of notes.", "goto": 500 },
						"c6": { "choice": "Sketched diagram.", "goto": 600 },
						"c7": { "choice": "Leave", "goto": 999 },												
					}
	   	 		},
		
		#letter from beewoman	
		#WITCH'S NAME HERE	
		100: { 
			"speaker": "", "dialogue": "The letter appears to be from a 'Jullibee Busyworth', addressing 'my dearest Vivienne'. In extravagant cursive, Jullibee details her thanks for the hellhound shed and Plushdrop blooms Titania has supplied, promising some un-enchanted honey and fabrics - the former to eat, the later to use on the injured, given the influx of them.", "goto": 101 },
		101: { 
			"speaker": "", "dialogue": "The letter makes it sound like the trade routes were so deeply affected that [i]nothing[/i] could get into the country - but you'd been told that wasn't the case, multiple times. Why would the Divine lie?", "goto": 1 },
	
		#flyer
		200: { "speaker": "", "dialogue": "The letter advertises a tavern by the name of 'The Short Rest', claiming that their pastries are not to be missed. The word 'pastries' is underlined several time in quill ink.", "goto": 1 },	
		
		#offical notice
		299: { 
				"speaker": "", "dialogue": "A green and silver snake winds around the boarder of the paper. The letterhead's banner states this to be an 'Important Notice'.", 
				"checkSaveVariable": { "keyToCheck": "read_notice", "wantedValue": "true", "goto_false": 300, "goto_true": 350 }},
		300: { 
				"speaker": "", "dialogue": "As you look over the letterhead, you feel a chill run down your neck. You recognise this letter head - but only in offical demands made to the Divine, letters crooning of a wanted 'peaceful end' to the conflict that [i]they[/i] started. 
				This shouldn't be in the hands of a civilian.", "goto": 301 },
		301: { 
				"speaker": "Saevii", "dialogue": "The Divine is dead. We, the Saevii, claim rightful ownership of this land and their people. 
				500 gold reward to those who turn in Radiance sympathisers.
				1000 gold reward to those who turn in Radiance soldiers and personnel.", "completelyCentered": true, "goto": 302 },
		302: { 
				"speaker": "", "dialogue": "No. No this can't be right.", "goto": 303 },
		303: { 
				"speaker": "", "dialogue": "Your fingers move over the text, as if this was all some trick of the light. You don't want to believe it. You can't believe it.", "goto": 304 },
		304: { 
				"speaker": "", "dialogue": "You know better than to discount anything close to a truth, sitting plainly in your hands.
				Before you can tear the notice up in anger, you gingerly place it back on the noticeboard.", 
				"setSaveVariable": ["read_notice", true], "goto": 1 },	
		350: { 
				"speaker": "", "dialogue": "It reads like a nightmare, as your eyes scan over it over and over again. Better to know... Even if you struggle to believe it.", "goto": 1 },	
		
		#paper pad
		400: { "speaker": "", "dialogue": "It appears to be a shopping list; pinned in a covenient location to grab and go. While the most current one is missing, you can still read the last one from where the pen indented the paper behind.", "goto": 401 },
		401: { "speaker": "Witch_hide", "dialogue": "Check in with hunters - are animals still being culled?
				Eggs, milk (prepare for excess), sugar.
				Check Dalla made it out.
				Robe (for Alessia).", "completelyCentered": true, "goto": 402 },
		402: { "speaker": "MC", "dialogue": "...How does she know my name?", "goto": 1 },		
				
		#notes
		500: { 
			"speaker": "", "dialogue": "You gently take the stack of notes off the wall, flipping through them. They seem to be various thank you notes - thanking for fertility pills, pregnancy advice, gender affirming care, as well as sourcing rare plants and potions.", "goto": 501 },
		501: { 
			"speaker": "", "dialogue": "The notes closer to the back, however, paint a different story. Concealment cloaks, masculisation charms - and for a few, thanks for aid in getting over the boarder to kingdoms beyond.", "goto": 502 },
		502: { 
			"speaker": "", "dialogue": "You know these later notes all come from women - the way the Saevii treat them is something you've both heard from the Divine and witnessed first hand. Treated worse than livestock, sold as much as well. But things were nowhere near that dire... Right?", "goto": 1 },		
		
		#diagram
		600: { 
			"speaker": "", "dialogue": "The drawing shows a small box, tucked into a hollow over a cliff.", "goto": 1 },	
		
		#leave				
		999: { 
			"speaker": "", "dialogue": "The rest of the house awaits you.", "end": true },
		},###	
}
