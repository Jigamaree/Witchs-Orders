extends Node

class_name hardEndings

static var endingsDict = {
	"": 
	{
		1: { "speaker": "none", "dialogue": "Oops! Ending wasn't defined.", "END_OF_GAME": true }
	},
	
	#Ending 1 - Captured. Leave the witch's house. True bad end.	
	"Captured": 
	{
		1: { "speaker": "", "dialogue": "You don't think about it further - mysteries of the house and your circumstances be damned, you need to get out of here. Just being in the presence of so much witchcraft, the workings of a [i]witch[/i], has been enough to make your skin crawl. 
		The sooner you can find your way back to civilization, the better. ", "goto": 2 },
		2: { "speaker": "", "dialogue": "You were thankful for the travelling farmers that picked you up off the side of the road, seemed all too happy to give you a ride to the nearest inn. It made you almost forget your state of undress – but at least you were one step closer to normality, with a bowl of soup in your hands and a week’s travel ahead of you.", "goto": 3 },
		3: { "speaker": "", "dialogue": "There was no reason to suspect this was a trap – as you felt a crack over your head, you realized it may be the last decision you ever get to make.", "goto": 4 },
		4: { "speaker": "", "dialogue": "The cage you wake up in is barely tall enough to stand in, let alone stretch out your cramped muscles. Other captives are caged alongside you, worse that cattle - soldiers, priests, loyalists to the Divine, all made equal in the most demeaning of ways.", "goto": 5 },
		5: { "speaker": "", "dialogue": "Some groan from unhealed injuries, others hiss at passing guards. The ones you feel most sorry for though are the ones that have yet to encounter the Saevii. One woman pleads with them for water, for bandages for another cellmate's wounds. Later, she slams at the bars as two guardsmen take their lunch in front of her. She'll be labeled 'spirited', you're sure.
		", "goto": 6 },
		6: { "speaker": "", "dialogue": "The Divine, help her.", "goto": 7 },
		7: { "speaker": "", "dialogue": "You’d heard of the Saevii auctions, the gold-drowned swap of flesh for coin by people with too much money for morals. It’s another thing entirely to be led up onto the stage yourself. The chains around your wrists are the closest you get to cover; they do nothing to dissuade the auctioneer that’s all too gleeful to point out the “rugged” features of one of the fallen king’s most trusted soldiers. ", "goto": 8 },
		8: { "speaker": "", "dialogue": "Your breasts are hefted to show there's still enough to squeeze. Your ass is spanked until it turns red, your cunt fingered and spread wide for onlooking eyes. When one nobleman comes up to inspect you he puts out his cigar on your shoulder - you grit your teeth to stop yourself yelling out.", "goto": 9 },
		9: { "speaker": "", "dialogue": "They call you a trophy; a symbol of the Divine’s last pathetic gasps at life.
			You’re too distracted by the news of your fallen kingdom, of everything you’ve fought for being denounced dead and gone, to catch how much your life is now worth.", "goto": 10 },
		10: { "speaker": "", "dialogue": "The man that buys you never tells you his name, nor asks yours. Soon your days are a sludge of manual labour and too little sleep, toiling in the broken city you once protected and the glaring eye of poison drakes.", "goto": 11 },
		11: { "speaker": "", "dialogue": "Something is changing you while you work here too - is it something in the food? Is it the unholy, dark magic that clings to this place like a smog? Is it just the pressure of toiling under these conditions, being faced everyday by your failure as a King's Chosen?", "goto": 12 },
		12: { "speaker": "", "dialogue": "You're not sure - all you know is that heat starts to cling to your body, to make every hour without sating it agony. You can see the cruel glee in your master's eyes when you finally break, ask for something to soothe the raging arousal inside you that makes you feel like your body isn't your own.", "goto": 125 },
		125: { "speaker": "", "dialogue": "His cock, splitting you blissfully, terribly open, makes you feel so good you forget your own name.", "goto": 13 },		
		13: {  "speaker": "none", "dialogue": "It never comes back. The sex that proceeds to rule your life from then on out drowns you so entirely you never remember it - or yourself - again.", "goto": 14 },
		14: { "speaker": "", "dialogue": "Ending 1 - Captured.", "END_OF_GAME": "hardEnding_bad" }
	},
	
	#Ending 4 - Desperate Milkings. Hard cow end.
	"DesperateMilkings": 
	{
		1: { "speaker": "", "dialogue": "You've never had a particularly sensitive chest - but right now? Yours is starting to ache, badly. A quiet, ignorable throb that only makes your brow twitch in discomfort quickly grows into an unignorable ache.", "goto": 2 },
		2: { "speaker": "", "dialogue": "Fuck - what's happening to you?", "goto": 3 },
		3: { "speaker": "", "dialogue": "The sound of rippling fabric startles you - your clothes have been turned into tatters on your form, failing to hold back the growing swell of your chest and hips. You try to find it in you to yell for help but the sound that comes from your throat barely sounds from human. ", "goto": 4 },
		4: { "speaker": "", "dialogue": "It only becomes worse when you touch your chest. Fuck- [b]fuck[/b]. You cry out as exquisite pleasure crashes over you, both of your hands coming up to paw at your tits. Your hands are becoming slick under your touch, the sweet smell of cream filling the air. You want to figure out what's going on but you can't fucking think straight.", "goto": 5 },
		5: { "speaker": "", "dialogue": "You have to just keep on touching yourself. Have to keep tugging at your chest, trying desperately to relieve the pressure in your chest that's built up so high you can't move from where you've collapsed on the ground.", "goto": 6 },
		6: { "speaker": "The Witch", "dialogue": "Oh, my dear, sweet girl.", "goto": 7 },
		7: { "speaker": "", "dialogue": "You feel a touch at your head, a brush over your ear. You have the brief thought of not remembering them being so long and velvety before, but its something you can't find the words to say. You can't find any words at all; when you look up to the witch the only sound you can manage is a whine of desperation.", "goto": 8 },
		8: { "speaker": "", "dialogue": "That whine turns into a full blown moan as the witch's hands wrap around your chest, groping into the thick flesh. It feels like a dam has broken, milk gushing over the witch's hands as she kneads and kneads. Still it keeps coming - and with each squeeze of your tit, it feels like a bit of your mind is gushing out alongside it.", "goto": 9 },
		9: { "speaker": "", "dialogue": "You know, intrinsically, its not coming back. Being as desperately aroused as you are, the only thought you have is if not having your mind anymore will make it any easier to come.", "goto": 10 },
		10: { "speaker": "The Witch", "dialogue": "You look so backed up, my dear. That's okay though - I'm going to take care of you, my pretty prized cow. 
		You'll never want for nothing, ever again.", "goto": 11 },
		11: { "speaker": "none", "dialogue": "Ending 4 - Desperate Milkings.", "END_OF_GAME": "hardEnding_cow" }
	},	
	
	#Ending 6 - Marked and Heeled. Enthralled hard end.
	"MarkedAndHeeled": 
	{
		1: { "speaker": "none", "dialogue": "Ending 6 - Marked and Heeled.", "END_OF_GAME": "hardEnding_demon" }
	},		
	
	#Ending 8 - Ignus' Bitch. Present to Ignus after letting him eat you out.
	"IgnusBitch": 
	{
		1: { "speaker": "none", "dialogue": "Ending 8 - Ignus' Bitch.", "END_OF_GAME": "hardEnding_pet" }
	},		

	#Ending 9 - Tentacle Bait. Struggle against the tentacle pit.
	"TentacleBait": 
	{
		1: { "speaker": "none", "dialogue": "Ending 9 - Tentacle Bait.", "END_OF_GAME": "hardEnding_tentacleBait" }
	},				
	
}

#
