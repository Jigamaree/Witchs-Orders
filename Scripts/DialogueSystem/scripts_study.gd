extends Node

class_name studyConvos

static var Convos_Dict = {
	"Armchair": {
				1: { "speaker": "", "dialogue": "Both of the armchairs in the other room look brand new compared to this one; the leather so well worn its gone supple all through. A crochet blanket in various shades of green is strewn over the back of the chair, looking not unlike a large patch of moss.", "goto": 2 },
				2: { "speaker": "", "dialogue": "Between that and the well loved pillow settled in the groove of the armchair cushion, you have the sneaking suspition that this armchair functions as a bed just as much as a chair. If not more, you muse, looking at the way some of the blankets edges are unraveling.", "end": true },
		},	
	
	"PlantGuide": {
			0: {"checkSaveVariable": { "keyToCheck": "plant_guide_read", "wantedValue": "true", "goto_false": 1, "goto_true": 100 }},		
				1: { "speaker": "", "dialogue": "A book sits on the table next to the armchair - its cover is well worn, the pages seemingly thumbed through a uncountable number of times. The title briefly displays as %ssA Guide to the Edible and Inedible%se - but as you read it over again, you notice it already starting to shimmer before your eyes. It presents its new title to you.", "goto": 2 },
				2: { "speaker": "", "dialogue": " %wsThe Witch's Guide to Botany%we.","completelyCentered": true, "goto": 3 },
				3: { "speaker": "", "dialogue": "Considering how many plants are around here, this might actually be quite useful.",  "choice": {
								"c1": { "choice": "Leave it", "goto": 10 },
								"c2": { "choice": "Take the book", "goto": 20 },
						}
				},
				10: { "speaker": "", "dialogue": "As useful as it seems to be, taking this book still feels sort of sacrilegious. You leave it for now.", "end": true },
				20: { "speaker": "", "dialogue": "You pick up the book, flicking through it before tucking it under your arm. Oh, you can already tell this is going to open up a [i]wealth[/i] of opportunities - what can you now learn about the plants around you with this under your wing?", 
				"setSaveVariable": ["plant_guide_read", true], "goto": 21 },
				21: { "speaker": "Witch_hide", "dialogue": "[i]You can now access the plant guide via the pause menu. 
				Additional and refreshed dialogue options have now opened up across all areas.[/i].", "completelyCentered": true, "end": true },
				100: { "speaker": "", "dialogue": "There's nothing left for you, here.", "end": true },				
		},	

	"Cauldron": {
			0: { "checkSaveConditions": [
			{ "save_key": "cauldron_finished_bool", "goto": 1 },
			{ "save_key": "study_putting_ingred_1_in", "goto": 10 },
			{ "save_key": "study_putting_ingred_2_in", "goto": 30 },
			{ "save_key": "study_putting_ingred_3_in", "goto": 50 },			
			{ "save_key": "", "goto": 5 },		]},
			
			#finished the caudron
			1: { "speaker": "", "dialogue": "You stand and stare at the bubbling cauldron.", 
			"checkSaveVariable": { "keyToCheck": "study_cauldron_succeeded", "wantedValue": "true", "goto_false": 2, "goto_true": 3 }},	
			2: { "speaker": "", "dialogue": "The dark, gurgling muck in the cauldron stares back. 
			Divine help you - why did you think you could do this in the first place? [b]There's no fixing this[/b]; you might as well wait for the witch right now...", "end": true },
			3: { "speaker": "", "dialogue": "The liquid has turned a vibrant pink, the magic circle under your feet glowing approvingly. You heave a sigh of relief - there's a part of you that's worried that it's going to suddenly implode the moment you stop looking at it.", "goto": 4 },
			4: {"speaker": "", "dialogue": "You're more proud you managed this than you expected.", "end": true },
			
			5: { "speaker": "", "dialogue": "The cauldron is intimidating; a large thing of cast iron, thrumming with an energy you can feel from across the room. The large magic circle under it is almost certainly helping with that effect; you shiver, just from the sheer feeling of [i]magic[/i] on the air.", "goto": 6 },
			6: { "speaker": "", "dialogue": "As you approach, you can hear a thrum on the air - you realise with a start that instead of you finding notes, this thing is going to [b]tell[/b] you what it wants.", "goto": 7 },
			7: { "speaker": "", "dialogue": "You suspect you'll have time to double check your work - but a bubbling cauldron is quite the unforgiving mistress.",  "choice": {
								"c1": { "choice": "Leave", "goto": 999 },
								"c2": { "choice": "Ask for the first instruction", "goto": 10 },
						}
			},
			
			10: { "speaker": "Witch_hide", "dialogue": "%wsFirst: I seek to see magic flow%we", "completelyCentered": true, "setSaveVariable": ["study_putting_ingred_1_in", true],
			"checkSaveVariable": { "keyToCheck": "plant_guide_read", "wantedValue": "true", "goto_false": 11, "goto_true": 12 }},
			
			11: { "speaker": "", "dialogue": "What have you gotten yourself into?", "choice": {
								"c1": { "choice": "Leave for now", "goto": 999 },
								"c2": { "choice": "Add the pink and white heart-shaped flowers", "goto": 666 },
								"c3": { "choice": "Add the dark purple flower with light edges", "goto": 666 },
								"c4": { "choice": "Add the purple flower with bladed leaves", "goto": 20 },
						}
				},	
								
			12: { "speaker": "", "dialogue": "You consider your options; you think you read something about a Dahlia doing that....", "choice": {
								"c1": { "choice": "Leave for now", "goto": 999 },				
								"c2": { "choice": "Add Dryad's Kiss", "goto": 666 },
								"c3": { "choice": "Add Zigll's Bloom", "goto": 666 },
								"c4": { "choice": "Add Dusk Dahlia", "goto": 20 },
						}
				},	
			
			20: { "speaker": "", "dialogue": "You drop the ingredient into the bubbling mixture...", "goto": 21 },
			21: { "speaker": "", "dialogue": "....And the cauldron continues to roil happily, flashing a lilac purple briefly as the Dusk Dahlia is muddled into the mix.
			The voice speaks for a second time.", "goto": 30 },
			
			
			###part 2 study_putting_ingred_2_in
			
			30: { "speaker": "Witch_hide", "dialogue": "%wsSecond: I seek arousal, potent and honed%we", "completelyCentered": true, "setSaveVariable": ["study_putting_ingred_2_in", true],
			"checkSaveVariable": { "keyToCheck": "plant_guide_read", "wantedValue": "true", "goto_false": 31, "goto_true": 32 }},
			
			31: { "speaker": "", "dialogue": "How... Degenerate.", "choice": {
								"c1": { "choice": "Leave for now", "goto": 999 },
								"c2": { "choice": "Add the pink and white teardrop flower", "goto": 40 }, ########
								"c3": { "choice": "Add the pink and purple teardrop flower", "goto": 666 },
								"c4": { "choice": "Add the phallic, waxy flower", "goto": 666 },
						}
				},				
			
			32: { "speaker": "", "dialogue": "There's certainly a lot of aphrodisiac-styled effects - which one is she asking for?", "choice": {
								"c1": { "choice": "Leave for now", "goto": 999 },
								"c2": { "choice": "Add Heatflush", "goto": 40 }, ########
								"c3": { "choice": "Add Plushdrop", "goto": 666 },
								"c4": { "choice": "Lover's Drop", "goto": 666 },
						}
				},					
			
			40: { 
				"speaker": "", "dialogue": "You drop the ingredient into the bubbling mixture...", "goto": 41 },
			41: { 
				"speaker": "", "dialogue": "....And the cauldron bubbles in delight. A sweet smell wafts from the cauldron, and it makes you clench your thighs together.
				The voice speaks for a final time.", "goto": 50 },
			
			50: { "speaker": "Witch_hide", "dialogue": "%wsFinally: I seek amplification, truest to my craft%we", "completelyCentered": true, "setSaveVariable": ["study_putting_ingred_3_in", true],
			"checkSaveVariable": { "keyToCheck": "plant_guide_read", "wantedValue": "true", "goto_false": 51, "goto_true": 52 }},	
			
			51: { "speaker": "", "dialogue": "That's so vague!", "choice": {
								"c1": { "choice": "Leave", "goto": 999 },
								"c2": { "choice": "Add the dried dark blue fruits", "goto": 666 }, 
								"c3": { "choice": "Add the red and yellow trumpet flower", "goto": 666 },
								"c4": { "choice": "Add pea green succulent leaves", "goto": 666 },
								"c5": { "choice": "Add the tiny white flowers", "goto": 60 }, ###
								"c6": { "choice": "Phallic! Flower! Time!", "goto": 666 },
						}
				},						
			
			52: { "speaker": "", "dialogue": "The final ingrediant seems to be honing the mixture, like a lens on kindling.", "choice": {
								"c1": { "choice": "Leave", "goto": 999 },
								"c2": { "choice": "Add String of Dreams", "goto": 666 },
								"c3": { "choice": "Add Dryad's Kiss", "goto": 666 },
								"c4": { "choice": "Add Altharia", "goto": 60 }, ###
						}
				},				

			60: { "speaker": "", "dialogue": "You drop the ingredient into the bubbling mixture...", 
			"setSaveVariable": ["study_cauldron_state", SaveData_CurrentGame.Puzzle_State.CORRECT], "goto": 61 },	
			61: { "speaker": "", "dialogue": "And brighten as the roiling mix settles down completely!", 
			"end": true },
			
			666: { "speaker": "", "dialogue": "You drop the ingredient into the bubbling mixture...", 
			"setSaveVariable": ["study_cauldron_state", SaveData_CurrentGame.Puzzle_State.INCORRECT], "goto": 667 },		
			667: { "speaker": "", "dialogue": "...And yelp as the cauldron sudden hisses and boil, the mixure suddenly going an unpleasant black.
			Oh no.", "end": true },
			999: { "speaker": "", "dialogue": "You leave for now - surely you can find [i]something[/i] poking around.", "end": true },
		},	
	
	"BackTable": {
				1: { "speaker": "", "dialogue": "If the bookshelves around you speak to a wealth of knowledge, this table speaks to the witches current flights of fancies and fascinations alike. You card through them carefully, being sure not to disturb the careful mayhem of the spread.", "goto": 2 },
				2: { "speaker": "", "dialogue": "In some piles there are books on botany and arcane specificities that you'd never known to connect before. In other piles are theory books that looks unfathomably dense - trigonometry in relation to summoning circles, chemical reductions required for advanced potion making.", "goto": 3 },
				3: { "speaker": "", "dialogue": "As a Divine's Chosen, you [i]should[/i] be disgusted by the blatant displays of magic. These tomes, this research is hearsay, a desecration of the God-King's land and her people. You should be burning these.", "goto": 4 },
				4: { "speaker": "", "dialogue": "....You can't bring yourself to. You try to tell yourself that it's because this will be valuable evidence - try to insist to your logical mind that you're not in a position to enact wanton property destruction. ", "goto": 5 },
				5: { "speaker": "", "dialogue": "The real spark of curiousity on your gut, the one that's always glowed when talk of witches and the arcane comes up, the one that wondered why the arcane had to be banished instead of harnessed - the ones that you'd promised to yourself to lay to rest once you picked up your sword.", "goto": 6 },
				6: { "speaker": "", "dialogue": "Your own truth always has a way of making its way out, you suppose.", "end": true },
		},	
	
	"MiddleRoomShelf": {
				1: { "speaker": "", "dialogue": "There's plenty of storage for the bits and pieces the witch needs in this room - this shelfing unit, however, seems to make up the bulk of the witch's accessible working ingredients. The shelf gives off an air not unlike an extended and deranged spice drawer; there truly is a little container for everything.", "goto": 2 },
				2: { "speaker": "", "dialogue": "...You glance to the cauldron. This is probably where the ingredients for that are going to come from, huh? Best to get familiar with it, you suppose.", "goto": 3 },
				3: { "speaker": "", "dialogue": "Before you leave you space a glance towards the bones perched on top of the cabinet. If you hadn't already been poking around the witch's house as much as you had, you might have interpreted these as a threat. Now? You see the care the humanoid skull has been cared for with; free of dust, polished and clean. As for the canine skull it's in impeccable condition, no fractures to speak and all teeth and other little bones accounted for.", "goto": 4 },
				4: { "speaker": "", "dialogue": "This is a woman that cares for things even in death - for a woman who can cull far easier than she can heal, who has seen how power over life can make somebody monsterous? There's a strange comfort in knowing that there's a person that walk with this sort of peace alongside those who are no longer here.", "end": true },
		},	
	
	"Ladder": {
				1: { "speaker": "", "dialogue": "This sturdy little rolling ladder has brass wheels attached to the bottom. You can see the railing peeking from over the top; if there was any doubt in your mind how you were to reach the higher shelves, this put that stedfastly out of your mind.", "goto": 2 },
				2: { "speaker": "", "dialogue": "...Not that there was, though. This thing is absurdly difficult to miss.", "end": true },
		},
			
	"FrontTableLeft": {
			1: { "speaker": "", "dialogue": "This table seems to be the heart of the witch's crafting. Active crafting, too; a small magical burner seems to have been left alight on this table. Some reagent either too small or too urgent to wait for cauldron's pace bubbles away on top; you can't tell the ingrediants, but the punchy liquorice scent is putting you off investigating that too closely. ", "goto": 2 },
			2: { "speaker": "", "dialogue": "A variety of half empty bottles and potions litter the back wall. Some sport names you recognise from your mother's kitchen growing up - eye of newt (mustard seed), poor man's treacle (garlic), semen of the Old Gods (dill)...", "goto": 3 },
			3: { "speaker": "", "dialogue": "Others are less familiar to you, but speak to the witch's proclivities. A iridescent green-white slime in one jar is labeled as Tentacle Monster Slick - a thinner clear liquid in another is labeled as Vampire Venom. One jar is filled to the brim with black fur, and seems to follow your movements; you're not sure why Werewolf Undercoat is acting as much, and you're not sure you want to find out.", "goto": 4 },
			4: { "speaker": "", "dialogue": "Several vials contain the spend of various creatures: semen of minotaur, hellhound, gorgon, hydra and more litter the back half of the desk, some used much more than others. There's even several for dragons, even sorted into the different coloured wyverns they came from.","goto": 5 },
			5: { "speaker": "", "dialogue": "A rune on the top of each vial is clearly keeping these things fresh enough for use - you wonder what they're used for. Hell, you wonder how the witch collects these samples.", "goto": 6 },
			6: { "speaker": "", "dialogue": "...The rush of inappropriate thoughts [i]that[/i] brings up is enough to get you to move on.", "end": true },
		},	
		
	"FrontTableRight": {
				1: { 
					"speaker": "", "dialogue": "While the left table seems to be a more dedicated working surface, this one seems to be set up as an actual bottling area. Six bottles are sprawled on the surface, with a note pinned delictately under one of them.", "choice": {
								"c1": { "choice": "Read the note", "goto": 100 },
								"c2": { "choice": "Investigate the bottles", "goto": 200 },
								"c3": { "choice": "Sort the bottles", "goto": 300 },								
								"c4": { "choice": "Leave", "goto": 2 },
						}				
				},
				
				2: { "speaker": "", "dialogue": "You'll come back to this.", "end": true },
		
				100: { "speaker": "", "dialogue": "As you pick up the note, you find some amusement in the fact that this woman had enough time to leave instructions for you, but not enough to actually be here when you woke up.", "goto": 101 },
				101: { "speaker": "Witch_hide", "dialogue": "%wsStart with the end, and end with the start.
						The location of these will come from the heart
						Corruption will claim the sweetest release
						The devil will bring the lovers no peace%we", "completelyCentered": true, "goto": 102 },
				102: { "speaker": "Witch_hide", "dialogue": "%wsTo build up one's spend you must hold on.
						Until your might can be gazed upon
						Bring it down from ten to one,
						And finally the job is done%we", "completelyCentered": true, "goto": 103 },
	
				103: { "speaker": "MC", "emote": "exasperated", "dialogue": "...Of course this wasn't going to be easy.", "setSaveVariable": ["study_readPotionPoem", true], "goto": 1 },
		
				200: { "speaker": "", "backgroundImage": "bottles", "dialogue": "Six bottle are placed in front of you, each sloshing with a different liquid. You read them off; back to front, left to right.", "goto": 201 },
				201: { "speaker": "Witch_hide", "dialogue": 
					"%wsSuccubus' Heat
					Turning your touch to heat for those you love 
					-and agony to those you despise.%we", 
				"completelyCentered": true, "keepImage": true, "goto": 202 },
				202: { "speaker": "Witch_hide", "dialogue": 
					"%wsStud X
					For gaining the shaft, balls, and come of a monster.
					(Improvement on the Stud IX formula. )%we", 
				"completelyCentered": true, "keepImage": true, "goto": 203 },
				203: { "speaker": "Witch_hide", "dialogue": 
					"%wsLover's Kiss
					Makes the target dream of your touch
					(Only works with mutual attraction)%we", 
				"completelyCentered": true, "keepImage": true, "goto": 204 },
				204: { "speaker": "Witch_hide", "dialogue": 
					"%wsKnocker Gawker
					For just a pair of fat, honkin' tits%we", 
				"completelyCentered": true, "keepImage": true, "goto": 205 },
				205: { "speaker": "Witch_hide", "dialogue": 
					"%wsAngel's Climax
					Sensation light as a feather to take you to cloud nine%we", 
				"completelyCentered": true, "keepImage": true, "goto": 206 },
				206: { "speaker": "Witch_hide", "dialogue": 
					"%wsDance of the Fervored One
					 Sparks both the energy and libedo for a night of endless passion.%we", 
				"completelyCentered": true, "keepImage": true, "goto": 207 },	
				207: { "speaker": "", "dialogue": "Your head spins with possibilities - and also, frankly, how on earth to order these.", "goto": 1  },
				
				300: { "speaker": "MC", "dialogue": "Lets do this.", "preloadPotionMenu": true, "end": true },
		},
		
	"FinishedPotionSort": {
				1: { "speaker": "", "dialogue": "That should do it! You hope, anyway. You suppose you could always give it another shot if you need to...", "end": true }
		},		
		
	"BackBoofshelf": {
				1: { "speaker": "", "dialogue": "The wealth of books before you is unlike anything you've ever seen - a mix of printed and handwritten tomes line the shelves in an eclectic menagerie. ", "goto": 2 },
				2: { "speaker": "", "dialogue": "It was a miracle at all you'd learnt how to read, taught from a young age by your mother before you'd known how illicit the knowledge was in your hands. Women in the Divine's kingdom didn't have use for such a skill, apparently.", "goto": 3 },
				3: { "speaker": "", "dialogue": "Naturally, it was something you'd always quietly disagreed with, fully aware of how often it'd come in handy just travelling, let alone for the knowledge tomes like these provided. 
				Of course, you'd known better than to question that aloud.", "goto": 4 },
				4: { "speaker": "", "dialogue": "Witches being able to read and write was one of the signs of their degeneracy, in the Divine's eyes. In this quiet moment to yourself though? Perhaps you're the degenerate - you drink in the sight of so much knowledge at your fingertips.", "goto": 5 },
				5: { "speaker": "", "dialogue": "The air is scented heavily with lignin and leather, a fitting backdrop as you peruse just a smattering of the titles presented to you. There's tomes of arcane knowledge, thick encyclopedias detailing far off lands and creatures you've never seen, books detailing kingdoms and battles you've never seen, nor fought.", "goto": 6 },
				6: { "speaker": "", "dialogue": "It's a marvel - and you know you'll remember this for a long time.", "end": true },
		},				
}
