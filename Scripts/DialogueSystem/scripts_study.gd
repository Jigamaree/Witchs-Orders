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
				20: { "speaker": "", "dialogue": "You pick up the book, flicking through it before tucking it under your arm. Oh, you can already tell this is going to open up a [i]wealth[/i] of opportunities.", 
				"setSaveVariable": ["plant_guide_read", true], "end": true },
				100: { "speaker": "", "dialogue": "There's nothing left for you, here.", "end": true },				
		},	
	
	#complex
	"Cauldron": {
				1: { "speaker": "", "dialogue": "Cauldron dialogue goes here", "end": true }
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
				1: { "speaker": "", "dialogue": "Middle of the room shelf dialogue goes here", "end": true }
		},	
	
	"Ladder": {
				1: { "speaker": "", "dialogue": "This sturdy little rolling ladder has brass wheels attached to the bottom. You can see the railing peeking from over the top; if there was any doubt in your mind how you were to reach the higher shelves, this put that stedfastly out of your mind.", "goto": 2 },
				2: { "speaker": "", "dialogue": "...Not that there was, though. This thing is absurdly difficult to miss.", "end": true },
		},
			
	"FrontTableLeft": {
				1: { "speaker": "", "dialogue": "Table with random shit dialogue goes here", "end": true }
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
				102: { "speaker": "Witch_hide", "dialogue": "%wsTo build up spend you must hold on.
						Until your might can be gazed upon
						Bring it down from ten to one,
						And finally the job is done%we", "completelyCentered": true, "goto": 103 },
				103: { "speaker": "MC", "emote": "exasperated", "dialogue": "...Of course this wasn't going to be easy.", "goto": 1 },
		
				200: { "speaker": "", "backgroundImage": "bottles", "dialogue": "Six bottle are placed in front of you, each sloshing with a different liquid. You read them off; back to front, left to right.", "goto": 201 },
				201: { "speaker": "Witch_hide", "dialogue": 
					"%wsSuccubus' Heat
					Turning your touch to heat for those you love 
					-and agony to those you despise.%we", 
				"completelyCentered": true, "keepImage": true, "goto": 202 },
				202: { "speaker": "Witch_hide", "dialogue": 
					"%wsStud X
					For gaining the shaft, balls, and come of a monster.
					(Improvement on the Stud W formula. )%we", 
				"completelyCentered": true, "keepImage": true, "goto": 203 },
				203: { "speaker": "Witch_hide", "dialogue": 
					"%wsLover's Kiss
					Makes the target dream of your touch
					(Only works with mutual attraction)%we", 
				"completelyCentered": true, "keepImage": true, "goto": 204 },
				204: { "speaker": "Witch_hide", "dialogue": 
					"%wsKnocker Gawker
					For a pair of tits that'll make anybody stare.%we", 
				"completelyCentered": true, "keepImage": true, "goto": 205 },
				205: { "speaker": "Witch_hide", "dialogue": 
					"%wsAngel's Climax
					Sensation light as a feather triggering an orgasm that'll take you and keep you in cloud nine%we", 
				"completelyCentered": true, "keepImage": true, "goto": 206 },
				206: { "speaker": "Witch_hide", "dialogue": 
					"%wsDance of the Fervored One
					 Sparks both the energy and libedo for a night of endless passion.%we", 
				"completelyCentered": true, "keepImage": true, "goto": 207 },	
				207: { "speaker": "", "dialogue": "Your head spins with possibilities - and also, frankly, how on earth to order these.", "goto": 1  },
				
				300: { "speaker": "", "dialogue": "Lets do this", "preloadPotionMenu": true, "end": true },
		},
		
	"FinishedPotionSort": {
				1: { "speaker": "", "dialogue": "That should do it! You hope, anyway.", "end": true }
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
