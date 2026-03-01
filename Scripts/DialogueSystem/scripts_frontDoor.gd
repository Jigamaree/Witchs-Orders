extends Node

class_name FrontDoorConvos

static var convos_Dict = {

##TODO: write the plant sex
	"DeadPlant": {
			0: { "checkSaveConditions": [
				{ "save_key": "frontdoor_cantgetkey", "goto": 32 },
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
			11: { "speaker": "", "dialogue": "You grab the plant guide book, flicking through it. According to the tome, a particular vine often seen by front doors - the Luck of the Lady - often retreats into a dormant state during periods of drought. It's apparently theorised to do this over winter, ready for the deep rains of spring.", "goto": 12 },
			12: { "speaker": "", "dialogue": "Well, it's certainly not winter now - what a confused little plant.", "end": true },
			# has watering can
			20: { "speaker": "", "dialogue": "The Luck of the Lady looks as dead as ever - but you have the power of watering cans at your disposal.", "choice": {
								"c1": { "choice": "Water the plant", "goto": 22 },
								"c2": { "choice": "Leave it alone", "goto": 21 },
						}
				},
			21: { "speaker": "", "dialogue": "You decide to stay your hand for now. No use watering a dead plant, right?", "end": true },

			22: { "speaker": "", "dialogue": "You water the plant in front of you, making sure to get the water nice and deep into the soil. If you're going to do the job, might as well do it right - right?", "goto": 23 },
			23: { "speaker": "", "dialogue": "That is what you expect to be the end - what you don't expect is for the plant to [i]immediately[/i] shoot up from the soil, racing along the wall and coiling over the entire front wall of the house. You've heard of fast moving plants but this is unbelievable; you can't quite believe your eyes as you watch the now flourishing plant thrive.", "specialAction": "bloom",  "goto": 24 },
			24: { "speaker": "", "dialogue": "...Thrive quite significantly, it seems. You watch as alongside the new growth, a stalk grows outwards towards you. On the end is some sort of additional growth- wait. No. A [i]flower[/i]. The bloom is as big as your face as it unfurls in a shower of pollen, one that makes you sneeze as you watch.", "goto": 25 },
			25: { "speaker": "", "dialogue": "You'd wondered, when you'd read the passage on this plant, why people were so reluctant to talk about this plant's bloom. Now, face to face with the flush-pink bloom, you realise why. 
			Divine save you, this thing is [b]phallic![/b]", "goto": 26 },
			26: { "speaker": "", "dialogue": "The central stamen is a hefty thickness and a good seven inches thick to boot- it rises erect out of a bed of blood red petals, right towards your face. While you want to call it a coincidence that such a perverted plant has bloomed in front of you? You know it's absolutely expected for a place like this. ", "goto": 27 },			
			27: { "speaker": "", "dialogue": "You realise your mouth is already watering - was it something in the pollen, or some long dead want to choke yourself on cock coming to the forefront? You're not sure, but either way you have a choice to make.", "choice": {
								"c1": { "choice": "Let the plant be", "goto": 30 },
								"c2": { "choice": "Give the flower a blowjob", "goto": 40 },
						}
				},
			#don't fuck the plant	
			30: { "speaker": "", "dialogue": "No, this feels decidely like a trap. You pull back from the plant, shaking your head to try and clear the fuck hunger from it. You have things to do, damnit!", "goto": 31 },
			31: { "speaker": "", "dialogue": "You do double take though, as suddenly the plant falters and wilts, the bloom falling to the ground with a solid [b]thud[/b].
			You stare down at the bloom, and wonder if you made the right choice.", 
			"setSaveVariable": ["frontdoor_cantgetkey", true], "end": true },	
			
			32: { "speaker": "", "dialogue": "The vine rustles in the slight breeze moving through the house. It, unfortunately, seems to have no further interest in you.", "end": true },		
			
			40: { "speaker": "", "dialogue": "It's... Instinctual, really. You've always been quite the fan of blowjobs, and while you haven't been able to indulge in some time? Those simple joys don't leave you. Flattening your tongue, you take the thick head of the plant's flower onto it, sucking at the head like it has any nerve endings at all.", "goto": 41 },
			41: { "speaker": "", "dialogue": "What you weren't expecting was the flood of sweetness into your mouth, honey sweet and thin as water. Surprised, you swallow it down - and immediately groan at the taste. Holy shit, that tastes good! Not to mention there's a brightness that you can't place the flavor of, something that makes you immediately go back to the vine to drink.", "goto": 42 },
			42: { "speaker": "", "dialogue": "Lapping at the stamen isn't enough though; quickly you find the only way to get more of that rich sweetness is to bob your head along the length of this thing. Each choking thrust you take of it down your throat rewards you anew, spurring you onwards through this mad delusion of a situation.", "goto": 43 },
			43: { "speaker": "", "dialogue": "You swallow, and fuck forward. Swallow, and fuck forward - soon that's all that your mind centers down to. The feeling of weight against your tongue. The drag of the petals around your face. The sweet slickness, the salty undertone to the plant's spend that only makes you want to drink it more. You sink to your knees so you can focus on it more, wind a hand around its base so you can better fuck it into your mouth.", "goto": 44 },
			44: { "speaker": "", "dialogue": "More and more, faster and faster - it feels so good, sliding over your tongue, filling you both literally and in a way you can't put into words. Despite the fact that you were the one to step towards the plant and initiate all of this, it truly feels like the Lady is the one in control - just the thought alone is enough to make you shudder and swallow back another mouthful of nectar.", "goto": 45 },
			45: { "speaker": "", "dialogue": "It's the moment that you feel the plant's final release upon you, ready to gush into your throat one final time, that it all clicks together. Why you recognise the taste of the plant in your mouth, why it feels so familiar to you.", "goto": 46 },
			46: { "speaker": "", "dialogue": "The Luck of the Lady's flower is fucking magic into you - not a spell, not a curse, not some artifact or runed object. 
			Pure, unfiltered magic.", "goto": 47 },
			47: { "speaker": "", "dialogue": "The vine comes, after that realisation; it's locked so far down your throat that you can't do anything else but swallow, over and over again. The taste is overwhelming now, sweet and salty and so magical it lights arcane fire behind your eyes. It makes you shudder, your eyes rolling back into your skull. What a pleasure, to be a vessel for this thing, to take its magic into yourself so eagerly and wanting.", "goto": 48 },
			48: { "speaker": "", "dialogue": "It takes you a good few moments to find your coordination, to rise up off the floor. When you do though, one single vine nudges into your hand. When you open it, a green-purple key is dropped into before the vine retreats from sight.
			One of two gifts, then - the other being how as you finally walk away from the tree, you still crave the feeling of something nice and thick fucking your mouth full.",
			"setSaveVariable": ["plant_key", true], "end": true },				
		},
		
	"FrontDoor": {
		#if any keys are achieved, no more leaving
		0: { "checkSaveConditions": [
		{ "save_key": "realise_shit_is_fucked", "goto": 200 },			
		{ "save_key": "crow_key", "goto": 100 },
		{ "save_key": "fire_key", "goto": 100 },
		{ "save_key": "plant_key", "goto": 100 },	
		{ "save_key": "", "goto": 5 },		]},

		200: { "speaker": "", "dialogue": "If you leave now? There is no way you're going to get far on your own without being picked up by the Saevii forces. Hell, you can imagine just how pleased they'd be to have a Divine's Chosen in their clutches.
		No. You're staying here for now.", "end": true },		
		100: { "speaker": "", "dialogue": "Where once you would have been raring to get out this door, now you hesitate. There's something more to this place, something hidden in the very bones of it all. Those questions aren't getting answered out there.", "end": true },		
		
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
		6: { "speaker": "", "dialogue": "You make your way back inside - a tactical retreat, you tell yourself. It's hard to convince even yourself of that though, when you feel less like the well-seasoned warrior you are and more like a sheepish dog returning home. The important thing is, however, that you're back - and the mysteries of the house still await you.", "fadeIntoScene": true, 
		"setSaveVariable": ["corruptionPoints_Pet", 1], "end": true },
		7: { "speaker": "", "dialogue": "You've made your decision, and you're not backing down from it now.", "playEnding": SaveData_EndingTracker.EndingEnum.CAPTURED},
		},###

	"Window": {
			0: {"checkSaveVariable": { "keyToCheck": "looked_out_front_windows", "wantedValue": "true", "goto_false": 1, "goto_true": 100 }},
			#havent checked window
			1: { "speaker": "", "dialogue": "You hadn't given too much thought to exactly [i]where[/i] you were until now. Turns out, that was something of high importance.", "goto": 2 },
			2: { "speaker": "", "dialogue": "The Capital is a shining beacon of the Radiance Regime - the city being the home of the God-King you've sworn your life to. At all corners of the country, no many how many weeks ride you go out, if you look towards the Capital you can see the Spire of the Divine piercing the horizon.", "goto": 3 },
			3: { "speaker": "", "dialogue": "Some call the effect magic, witchcraft, arcane wizardry. You'd been pointedly told that the Divine, who led the Arcane Purges at the forefornt of his rule, would never stoop to arcane tricks.", "goto": 4 },
			4: { "speaker": "", "dialogue": " The effect is the result of divinity; of his powers given from on high, and a promise the Radiance Regime would never fall.", "goto": 5 },
			5: { "speaker": "", "dialogue": "A now broken promise.", "goto": 6 },
			6: { "speaker": "", "dialogue": "You look with wide eyes at the horizon - that familiar source of comfort now a crumbled wreck. Around it, you watch the serpentine shapes of Poison Drakes fly, circling like flies about a bloating corpse. One dives; even at this distance you can see it take out another chunk of the Spire.", "goto": 7 },
			7: { "speaker": "", "dialogue": "The Capital has fallen. You'd been denying it to yourself all this time - but how else were you going to end up here? If the Battle of Daybreak had been won, you would be back at camp sharing ill-gotten booze and stories. Not this. Never this.", "goto": 8 },
			8: { "speaker": "", "dialogue": "Is there even anything for you to return to anymore? You just don't know.", 		"setSaveVariable": ["looked_out_front_windows", true], "end": true },						
			
			# have 	
			100: { "speaker": "", "dialogue": "The fallen Capital outside is a harsh reminder of your current circumstances. No city to protect, no Divine to serve, your years of service now null and void. A part of you aches to rush out and find somebody, anybody else who knows - but you steady that impulse for now.", "end": true },
		},

#name Vivienne			
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
			"speaker": "", "dialogue": "The letter appears to be from a 'Jullibee Busyworth', addressing 'my dearest Vivienne'. In extravagant cursive, Jullibee details her thanks for the hellhound shed and Plushdrop blooms Vivienne has supplied, promising some un-enchanted honey and fabrics - the former to eat, the later to use on the injured, given the influx of them.", "setSaveVariable": ["learned_witchs_name", true], "goto": 101 },#
		101: { 
			"speaker": "", "dialogue": "The letter makes it sound like the trade routes were so deeply affected that [i]nothing[/i] could get into the country - but you'd been told that wasn't the case, multiple times. Why would the Divine lie?", "goto": 1 },
	
		#flyer
		200: { "speaker": "", "dialogue": "The letter advertises a tavern by the name of 'The Short Rest', claiming that their pastries are not to be missed. The word 'pastries' is underlined several time in quill ink.", "goto": 1 },	
		
		#offical notice
		299: { 
				"speaker": "", "dialogue": "A green and silver snake winds around the boarder of the paper. The letterhead's banner states this to be an 'Important Notice'.", 
				"checkSaveVariable": { "keyToCheck": "read_notice", "wantedValue": "true", "goto_false": 300, "goto_true": 350 }},
		300: { 
				"speaker": "", "dialogue": "As you look over the design, you feel a chill run down your neck. You recognise this letterhead - but only in offical demands made to the Divine, letters crooning of a wanted 'peaceful end' to the conflict that [i]they[/i] started. 
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
				Check Sylra made it out.
				Robe (for Alessia).", "completelyCentered": true, "goto": 402 },
		402: { "speaker": "MC", "dialogue": "...How does she know my name?", "goto": 1 },		
				
		#notes
		500: { 
			"speaker": "", "dialogue": "You gently take the stack of notes off the wall, flipping through them. They seem to be various thank you notes - expressing gratitude for fertility pills, pregnancy advice, gender affirming care, as well as sourcing rare plants and potions.", "goto": 501 },
		501: { 
			"speaker": "", "dialogue": "The notes closer to the back, however, paint a different story. Concealment cloaks, masculinisation charms - and for a few, thanks for aid in getting over the border to kingdoms beyond.", "goto": 502 },
		502: { 
			"speaker": "", "dialogue": "You know these later notes all come from women - the way the Saevii treat them is something you've both heard from the Divine and witnessed first hand. Treated worse than livestock, sold as much as well. But things were nowhere near that dire... Right?", "goto": 1 },		
		
		#frontdoor_diagram
		600: { 
			"speaker": "", "dialogue": "The drawing shows a small box, tucked into a hollow over a cliff.
			It's strange to see it up here among the other, seemingly more important, notes. This has to be on the property, right?", 
			"setSaveVariable": ["frontdoor_diagram", true], "goto": 1 },		
		
		#leave				
		999: { 
			"speaker": "", "dialogue": "The rest of the house awaits you.", "end": true },
		},###	
}
