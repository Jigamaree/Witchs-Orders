extends Node

class_name witchEndings

static var endingsDict = {
	"true_bimbo_ending":
		#specialEnding_didNothing
	{
		1: { "speaker": "", "dialogue": "You wait. 
			You wait a [i]really[/i] long time. ", "goto": 2 },
		2: { "speaker": "", "dialogue": "Light moves and stretches across the room - and sure, you start off with good intentions to stay up and meet the witch face to face. But... You're so tired....", "goto": 3 },
		3: { "speaker": "", "dialogue": "...", "goto": 4 },
		4: { "speaker": "Witch_hide", "dialogue": "Well, well, well. What am I going to do with you?", "goto": 5 },
		5: { "speaker": "", "dialogue": "You bolt up with a start, looking around- no, [i]up[/i] at the woman in front of you. Immediately you recognise her; those eyes, glinting above your broken form with a light like wildfire have haunted your memories since you came to here.",  "goto": 6 },
		6: { "speaker": "", "dialogue": "Right now though, she has an almost... Pitying look on her face. It makes some part of you squirm intensely.", "goto": 7 },
		7: { "speaker": "The Witch", "dialogue": "You didn't even try, did you?", "goto": 8 },
		8: { "speaker": "", "dialogue": "You go to open your mouth, retort, bite back... But nothing comes to your mind. You really didn't do [b]anything[/b] she asked you to, did you? There's nobody but you to blame for your current circumstances, for your inability to take even the smallest iota of initiative over your own destiny.", "goto": 9 },
		9: { "speaker": "", "dialogue": "She doesn't look mad though - if anything there's a fond look on her face - not the fondness reserved for an equal, though. No - its something more... Demeaning. Something about it makes both your face heat and your cunt ache in arousal.", "goto": 10 },
		10: { "speaker": "The Witch", "emote": "amused", "dialogue": "It's okay, Allie. I know you've been working so hard, for so long. A pretty girl like you should of never ended up as a guardswoman, anyway - of course when somebody finally ridded you of that silly little sword and armour you could barely think straight. Isn't that right?", "goto": 11 },
		11: { "speaker": "", "dialogue": "Gods above, you want to argue. You [b]should[/b] argue - but you're oh so very tired, and the women in front of you is just... So, so pretty.",
		"setSaveVariable": ["specialEnding_didNothing", true], 
		"preloadConversation": "BetterNotToThinkSex", "end": true },
	},		


	"BetterNotToThink":
	{
				1: { "speaker": "", "dialogue": "You wait. Time stretches out before you, fluid and plastic - has it been two minutes or two hours since you sat down? It's hard for you to tell. ", "goto": 2 },
				2: { "speaker": "", "dialogue": "You're almost nodding off by the time you hear the door unlatch, when you hear heavy footfalls coming through the door. Trepidation rises in your throat - it's one thing to see flashes of her in half remembered memories. It's quite another to see the woman in front of you, swishing around to look you up and down.", "goto": 3 },
				
				3: { "speaker": "", "dialogue": "Those eyes like wildfire are every bit as captivating now - and scrutinize you carefully. Not taking her eyes off you she pulls a book - a spell book, perhaps? - out of nowhere. She plucks a quill out of her hair; with a wave of her hand she watches as it starts to jot.", 
				"checkSaveVariable": { 
					"keyToCheck": "knight_fed", 
					"wantedValue": "true", 
					"goto_true": 4, 
					"goto_false": 5 }},
					
				4: { "speaker": "The Witch", "dialogue": "You did feed yourself...", "goto": 6 },
				5: { "speaker": "The Witch", "dialogue": "You didn't feed yourself...", "goto": 6 },
				6: { "speaker": "", "dialogue": "The sound of a scratching quill.", 
				"checkSaveVariable": { 
					"keyToCheck": "ignus_fed", 
					"wantedValue": "true", 
					"goto_true": 7, 
					"goto_false": 8 }},
					
				7: { "speaker": "The Witch", "dialogue": "You did feed Ignus....", "goto": 9 },
				8: { "speaker": "The Witch", "dialogue": "You didn't feed Ignus....", "goto": 9 },
				9: { "speaker": "", "dialogue": "More scratching sounds", 
				"checkSaveVariable": { 
					"keyToCheck": "pit_fed", 
					"wantedValue": "true", 
					"goto_true": 11, 
					"goto_false": 10 }},
					
				10: { "speaker": "The Witch", "dialogue": "You didn't feed the pit in any way...", "goto": 14 },
				11: { "speaker": "The Witch", "dialogue": "You fed the pit...", 				
				"checkSaveVariable": { 
					"keyToCheck": "pit_fucked", 
					"wantedValue": "true", 
					"goto_true": 12, 
					"goto_false": 13 }},
					
				12: { "speaker": "The Witch", "dialogue": "...and tended to it quite well.", "goto": 14 },
				13: { "speaker": "The Witch", "dialogue": "...but you didn't tend to all it's needs, did you?", "goto": 14 },
				14: { "speaker": "", "dialogue": "A little hum, alongside more scratchy sounding writing.", 				
				"checkSaveVariable": { 
					"keyToCheck": "potions_correct", 
					"wantedValue": "true", 
					"goto_true": 15, 
					"goto_false": 16 }},
					
				15: { "speaker": "The Witch", "dialogue": "The potions were correct....", "goto": 17 },
				16: { "speaker": "The Witch", "dialogue": "The potions weren't ordered correctly...", "goto": 17 },
				17: { "speaker": "", "dialogue": "More definiative scratching.", 				
				"checkSaveVariable": { 
					"keyToCheck": "study_cauldron_succeeded", 
					"wantedValue": "true", 
					"goto_true": 18, 
					"goto_false": 19 }},
					
				18: { "speaker": "The Witch", "dialogue": "And the cauldron was correct.", "goto": 19 },
				19: { "speaker": "The Witch", "dialogue": "And you were unable to complete the cauldron.", "goto": 20 },
				20: { "speaker": "", "dialogue": "As she finishes her thoughts she taps the quill against the side of her book, looking to you with something curious and pitying in her face. It's beautiful, in it's own frightful way - and it makes some quiet, submissive part of you squirm.", "goto": 21 },
				21: { "speaker": "", "dialogue": "Oh, my dear sweet Allie. You've struggled so hard to get here, haven't you?", "goto": 22 },
				22: { "speaker": "", "dialogue": "You want to recoil at the language - instead you're frankly too baffled to respond. What- why is she speaking to you, a grown woman, this way...?", "goto": 23 },
				23: { "speaker": "", "dialogue": "You've fought for your king for so long you've forgotten how to think for yourself. But you're here now, okay?", "goto": 24 },
				24: { "speaker": "", "dialogue": "She gives you a saccharine sweet smile.", "goto": 25 },
				25: { "speaker": "", "dialogue": "And I promise you'll never have to think for yourself even again.",
				 "preloadConversation": "BetterNotToThinkSex", "end": true },		
	},
	
	"BetterNotToThinkSex":
	{
		1: { "speaker": "none", "dialogue": "Bimbo ending!", "END_OF_GAME": "softEnding_bimbo" }
	},

#successfully completed all
	"TrueEnd":
	{
		1: { "speaker": "none", "dialogue": "True ending!", "END_OF_GAME": "specialEnding_trueEnd" }			
	},	
	
	"default_ending_setup": ##covers beginning of imp, cow, pet, and failed apprentice	
	{
		1: { "speaker": "none", "dialogue": "Default ending path.", "END_OF_GAME": "specialEnding_trueEnd" }					
	},
	
}
