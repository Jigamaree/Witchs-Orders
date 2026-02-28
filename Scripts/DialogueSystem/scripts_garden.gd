extends Node

class_name gardenConvos

static var Convos_Dict = {
	"Tree": {
			0: { "checkSaveConditions": [
			{ "save_key": "crow_key", "goto": 200 },							#finished crow tree
			{ "save_key": "cellar_eatenBirdSeed", "goto": 201},					#fucked the route
			{ "save_key": "garden_putClitRingOnWrong", "goto": 1000 },			#player fucked up route
			{ "save_key": "cellar_takenBirdSeed", "goto": 10 }, 				#bird can be fed - once done, starts clamps/ring bit
			{ "save_key": "garden_interactedWithCrowTree", "goto": 4 },			#bird is chilling		
			{ "save_key": "", "goto": 1 },		]}, 							#first found tree
			#Completed route
			200: { "speaker": "", "dialogue": "The crow has fluttered back up to the branches of the great tree, nestling in its branches. The key it gave you is a comforting weight in your hand, brimming with magic.", "end": true },		
			201: { "speaker": "", "dialogue": "The tree is alive with activity - singing birds enjoying the afternoon sun, the rustle of the breeze through the leaves.
			Corvid activity does not, however, seem to be charting.", "end": true },
			1000: { "speaker": "", "dialogue": "Your fresh nose ring is a strange reminder of your current circumstances. The crow has changed his, however, and is no longer here.", "end": true },								
		
			#introduction
			1: { "speaker": "", "dialogue": "This thing is huge - and yet wears its age well. An immense halo of greenery surrounds the great tree's crown, creating a safe haven for an endless ensemble of birds.", "goto": 2 },
			2: { "speaker": "", "dialogue": "It's mostly sparrows and pigeons you can see from here - though there seems to be a large crow hopping among the branches. Occasionally he seems to stop, peering down as if as fascinated with you as you are him.", "goto": 3 },
			3: { "speaker": "", "dialogue": "He doesn't seem to have any interest in approaching, though - clearly you're not [i]that[/i] level of interesting to him.", 
			"setSaveVariable": ["garden_interactedWithCrowTree", true], "end": true }, 
			
			#post intro
			4: { "speaker": "", "dialogue": "You spend some time birdwatching - the silly spats and flurry of activity from the little guys is a nice distraction from your current situation.
			Occasionally you see that crow still watching, but he disappears once you meet his eyes.", "end": true },
			
			10: { "speaker": "", "dialogue": "The rich canopy of leaves rustles overhead. While most of the residents overhead have no interest in your antics, the eyes of a very curious crow never leave you.", "choice": {
								"c1": { "choice": "Feed the crow", "goto": 20 },
								"c2": { "choice": "Blatantly eat the seed in front of it", "goto": 11 },
						}
				},		
			11: { "speaker": "", "dialogue": "Looking that black crow fuck right in the eye, you scoop a handful of seed into your mouth. Who's interesting now, buddy?", "goto": 12 },
			12: { "speaker": "", "dialogue": "To absolutely nobody's surprise, tactics of intimidation and belittlement do not work on crows.", 
			"setSaveVariable": ["cellar_eatenBirdSeed", true], "goto": 13 }, 
			13: { "speaker": "", "dialogue": "The crow hops down, watching you with a long, long look. The moment that your mouth starts to feel dry from the gritty, uncooked seeds crowding it through? He flutters off, a smudge of black disappearing into the treeline.", "goto": 14 }, 
			14: { "speaker": "", "dialogue": "...You've probably made better decisions in your life.", "end": true }, 
						
			
			20: { "speaker": "", "dialogue": "With the birdseed in your hand, you watch as the crow creeps forward curiously. Like this you can see there’s a glint of intelligence in its eyes - or is that magic? Whatever it is, the crow is as lured by scattered birdseed as any other - a few quick pecks is all he needs to deem the goods acceptable.", "goto": 22 },
			22: { "speaker": "", "dialogue": "You thought that'd be the end of it; what you weren’t expecting was the crow to fly back up to the tree, flying back with a couple of shining trinkets clutched in his talons. He drops them at your feet, before pinning you with a long, expectant look.", "goto": 23 },
			23: { "speaker": "MC", "dialogue": "Alright, alright, i’m going.", "goto": 24 },
			24: { "speaker": "", "dialogue": "They're surprisingly plain, all things considered - two plain open-end rings made of a rich gold. Any expectation of these rings being regular jewelry, however, is dashed by the purple shimmer that runs over their form.", "goto": 25 },
			25: { "speaker": "", "dialogue": "Come to think of it, you’ve seen this style of ring before- wait. No. [i]There?[/i]
					You look to the crow as if he can confirm anything about what you’re doing right now, only to be met with that same serious gaze.", "goto": 26 },
			26: { "speaker": "", "dialogue": "He may not be able to talk, but he’s clearly waiting on you to make a decision - and quickly.", "choice": {
								"c1": { "choice": "Put the rings on your ears", "goto": 33 },
								"c2": { "choice": "Put the rings on your nipples", "goto": 40 },
								"c3": { "choice": "Think about it and come back to it", "goto": 32 },
						}
				},
			32: { "speaker": "", "dialogue": "You want to think this through - unfortunately, the crow does not agree with your puny human decisions. With a beat of those powerful wings he takes off, quickly disappearing into the treeline.", 
			"setSaveVariable": ["cellar_eatenBirdSeed", true], "end": true }, 
			33: { "speaker": "", "dialogue": "You try to thread the rings through your ears, or hook them on somehow - no dice. The bird tilts his head at you, awaiting yyour final decision.", "choice": {
								"c2": { "choice": "Put the rings on your nipples", "goto": 40 },
								"c3": { "choice": "Think about it and come back to it", "goto": 32 },
						}
				},
			40: { "speaker": "", "dialogue": "Pressing the rings against your nipples is, in all honestly, an impulse - you’re not pierced there. Never have been, either. Still, if you didn’t know any better you would of sworn your hands were being moved by some unseen force, shifted into the right positions until-", "goto": 42 },
			42: { "speaker": "MC", "dialogue": "Ah!", "goto": 43 },
			43: { "speaker": "", "dialogue": "Pain flashes through your tits, quick slices of it that makes your hands flinch away. That was expected - what wasn't was the flood of heat after. Pleasure hits you with all the force of a wrecking ball, a wave that rushes through your body and goes straight to your clit.", "goto": 44 },
			44: { "speaker": "", "dialogue": "You’re not sure when you started groping your chest, fingers raking over the over-sensitive flesh and playing at your nipples. Even when you notice though you can't pull away your hands - you try, only to moan all the louder when you fail to resist within seconds. You're a finely tuned insturment for this arousal that's come out of nowhere, even the smallest brush of your fingertips making you shudder.", "goto": 45 },
			45: { "speaker": "", "dialogue": "Your celibacy in your duty to the God-King is long forgotten as you chase a pleasure that as inescapable as it is overwhelming. How can you think of it now? In this moment you are in service to no god, no man; just the exquisite pleasure raking your body.", "goto": 46 },
			46: { "speaker": "", "dialogue": "A caw breaks your concentration.", "goto": 47 },
			47: { "speaker": "", "dialogue": "In the crow’s mouth he presents one more gift - a single ring, one the shines the same gold-purple as the two piercings now aching on your chest. A final decision presents itself to you.", "choice": {
							"c1": { "choice": "Nose", "goto": 50 },
							"c3": { "choice": "Clit", "goto": 99 },
						}
				},
				
			50: { "speaker": "", "dialogue": "You hold the ring up to your nose - this time you expect the pain as it slices through your skin, setting into your body like it has and always will be there. What you don't expect is the pleasure to get [i]worse[/i].", "goto": 51 },
			51: { "speaker": "", "dialogue": "What is once an exquisite tide now rises to a fever pitch - so much, so much, too much! With a whimper you fall to your knees as your legs give way - with another sound you realise that 'upright' is too complicated a position for you to coordinate right now.", "goto": 52 },
			52: { "speaker": "", "dialogue": "Ass up, head down is how you settle, not able to keep your own hands off you long enough to stay on all fours. Fingers press under your underwear line, through the sopping mess of your cunt - finally feeling your own fingers where you need them makes you cry out, an orgasm ripping through your body like a lightning strike. You body conulses, your hole fluttring against your fingers as you gush against your hand.", "goto": 53 },
			53: { "speaker": "", "dialogue": "The pleasure doesn't stop. 
			Oh god, it doesn't stop.", "goto": 54 },
			54: { "speaker": "", "dialogue": "You don't know how long you lie there, staring into the middle distance as you play with your body. Every time you feel like this orgasm will surely push you to the point of oversensitivity? Your tits will ache, your fingers will brush against your clit anew, and you fall into the well of pleasure once more.", "goto": 74 },
			74: { "speaker": "", "dialogue": "You stop thinking. You can't say you miss it - in this place of pleasure where nothing matters except slickness, heat and want? The only thing missing is something holding you down and breeding you full, turning you completely into the mindless animal you've felt yourself become.", "goto": 75 },	
			75: { "speaker": "", "dialogue": "...", "goto": 55 },						
			55: { "speaker": "", "dialogue": "At some point your thoughts finally start threading together again. Your thighs are a sticky mess of arousal, fingers wrinkled from so much time spent fucking yourself on them. You can't help the impulse, licking them clean - the taste is creamier than you remember, but you can't find it in yourself to mind.", "goto": 56 },
			56: { "speaker": "", "dialogue": "Really, you [i]should[/i] be more worried about this - but worrysome thoughts like that now feel... Far away. Subjective. You're frankly too happy, lazy and fucked out to care.", 
			"setSaveVariable": ["garden_putClitRingOnWrong", true], "goto": 57 },
			57: { "speaker": "", "dialogue": "The crow is gone as well. That too should worry you too, should feel like you were so close to something more.
			Frankly, your lazy, mousy mind could not care less about that.", 
			"setSaveVariable": ["corruptionPoints_Cow_", 1],"end": true },
			
			99: { "speaker": "", "dialogue": "While you let your hands be shifted where they need to go, it doesn't change the very real human instinct of being gunshy around pain. You know what to expect - at least you think you do, anyway.", "goto": 100 },
			100: { "speaker": "", "dialogue": "You expect the pain - you don't expect the pleasure to get even [i]better[/i].", "goto": 101 },
			101: { "speaker": "", "dialogue": "No longer able to keep yourself up, you sink down onto your knees pleasure starts to roll over you in waves. They throb out from your clit and chest, over and over again, leaving you panting.", "goto": 102 },
			102: { "speaker": "", "dialogue": "You're riding the pleasure before long - pressing the heel of your palm into your cunt, grinding against the skin quickly getting slick with your own need. Over and over, more and more until-", "goto": 104 },
			104: { "speaker": "", "dialogue": "-You come, crying out as you grind out your release, rocking down onto your hand all through it to drag out the pleasure as long as possible.", "goto": 105 },
			105: { "speaker": "", "dialogue": "By the time the pleasure alieviates, you've sprawled back onto the grass. Frankly you felt as if you've run a marathon - though the bone deep satisfaction is much more rewarding.", "goto": 106 },
			106: { "speaker": "", "dialogue": " Absentmindedly one of your fingers lifts up one of the rings now threaded through your nipple. Huh. Not only is it completely healed, but you can see no way to take it out. Magical, indeed.", "goto": 107 },
			107: { "speaker": "", "dialogue": "With a rush of wings, you realise the crow has fluttered up to where you're recovering. With a pleased look in its eyes, it nudges a small key into your hand, before fluttering off.", 			
			"setSaveVariable": ["crow_key", true], "end": true }, 
	
		},
		
	#write the final transformation
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
					{ "save_key": "apprentice_seed_taken", "goto": 999 },					
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
				100: { "speaker": "", "dialogue": "Each of the three keys slides into its respective lock with ease - the weight of what you're holding in your hands feels greater, now you've gone through all this effort to acquire the keys.", 
				"checkSaveVariable": { "keyToCheck": "ending_all_jobs_properly_done", 
				"wantedValue": "true", 
				"goto_false": 101, 
				"goto_true": 110 }},
				101: { "speaker": "", "dialogue": "But as you try and open the box, you feel it shudder and jam in your hands. No amount of tugging or nudging of the box's exterior will get it to nudge - it's as if it's resisting your advancements!", "goto": 102 },
				102: { "speaker": "", "dialogue": "You rack your mind, trying to think of what possibly could be getting this thing to react like this - wait.", "goto": 103 },
				103: { "speaker": "MC", "dialogue": "Do you really care about my chores as well? Really?", "goto": 104 },
				104: { "speaker": "", "dialogue": "Just your luck. ", "end": true },
				
				110: { "speaker": "", "dialogue": "The box opens smoothly; as it does you watch as immediately a large whirl of magic escapes outwards. For a moment you wonder if you've let something terrible escape - or just whatever this is escape at all. All that effort to just have whatever this is get away from you?", "goto": 111 },
				111: { "speaker": "", "dialogue": "Thankfully, you need not of worried. The magic seems to still, hover in the air like morning fog. There's a presence to it - it feels like it's assessing you. It probably is.", "goto": 112 },
				112: { "speaker": "", "dialogue": "Suddenly it's surging into you - the sensation makes you shudder, cry and bow out. Your body sings with a newfound tuning; somewhere between the piercings strung through your body and your aching cunt you are turned into a live wire once more. This time, however, you are able to ride the current; the magic that was fucked into you now swelling, growing, making your body convulse with a pleasure that is both too much and [i]exactly[/i] what you need.", "goto": 113 },
				113: { "speaker": "", "dialogue": "You find yourself bucking against the air before you can stop yourself, chasing as much of this stimulation as you can get - its everything you needed, everything you wanted. Gods above, how did you survive without this for so long? You are a being of sex, plain and simple - and you were foolish to ever deny yourself otherwise.", "goto": 114 },
				114: { "speaker": "", "dialogue": "Never again.", "goto": 115 },
				115: { "speaker": "", "dialogue": "This time when you come it's not just a release - no, it's something more, something all encompassing. When the shocks run over your body, they burn like fire paper - but you're somehow left as [b]more[/b] than what you once were, not less. ", "goto": 116 },
				116: { "speaker": "", "dialogue": "It's easy to see why, as conscious thought comes back to you. Your skin, once only decorated by the markings of war, is now drowned in gorgeous swirls of colour. You have stripes now - dark things that curl around your forearms, up along your chest and down to your body beyond. You've heard the rumours of Blaschko lines before, how they mark a witch that is destined for greatness. Once upon a time you would of been frightened to see these upon your skin, to know you now stood for everything you once despised.", "goto": 117 },
				117: { "speaker": "", "dialogue": "But that was the old you. The you that followed a liar, that abstained from her own happiness to line another's pockets. Now, you know better. Now, you're exactly where you belong.", "setSaveVariable": ["apprentice_seed_taken", true], "end": true },				
 
				999: { "speaker": "", "dialogue": "There's nothing left for you here.", "end": true },
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
				
				5: { "speaker": "", "dialogue": "Whatever you're feeding clearly doesn't value quality of flavor. Still, an instruction is an instruction - you grab the bucket and scoop it in, hauling out a load of questionably smelling 'food'.", "setSaveVariable": ["garden_hasTentacleFood", true], "goto": 6 },
				6: { "speaker": "MC", "dialogue": "I'm not hauling this around any longer than I need to.", "end": true },							
		},
}
