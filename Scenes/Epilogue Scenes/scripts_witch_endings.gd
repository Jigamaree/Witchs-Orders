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
				20: { "speaker": "", "dialogue": "As she finishes her thoughts she taps the quill against the side of her book, looking to you with something curious and pitying in her face. 
				It's beautiful, in it's own frightful way - and it makes some quiet, submissive part of you squirm.", "goto": 21 },
				21: { "speaker": "The Witch", "dialogue": "Oh, my dear sweet Allie.", "goto": 220 },
				220: { "speaker": "The Witch", "dialogue": "You've struggled so hard to get here, haven't you?", "goto": 22 },				
				22: { "speaker": "", "dialogue": "You want to recoil at the language - instead you're frankly too baffled to respond. You're a decorated solider, you've slain monster and man alike. Why is she speaking to you, a grown woman, this way...?", "goto": 23 },
				23: { "speaker": "", "dialogue": "You've fought for your king for so long you've forgotten how to think for yourself. But you're here now, okay?", "goto": 24 },
				24: { "speaker": "", "dialogue": "She gives you a saccharine sweet smile.", "goto": 25 },
				25: { "speaker": "", "dialogue": "And I promise you'll never have to think for yourself ever again.",
				 "preloadConversation": "BetterNotToThinkSex", "end": true },		
	},
	
	"BetterNotToThinkSex":
	{
				1: { "speaker": "", "dialogue": "The witch seems to take advantage of your confusion to get in front of you; until her body takes up your entire field of focus. You try to push yourself up out of the chair in response - get yourself some breathing room of any description - but a hand on your chest stops you. Those eyes, eyes like wildfire, seem to look into your very core and pin you open. It makes you shudder - you try to look somewhere, anywhere else, but your eyes are drawn back to the witch all the same.", "goto": 2 },
				2: { "speaker": "", "dialogue": "She's just so... Pretty.", "goto": 3 },
				3: { "speaker": "The Witch", "dialogue": "I promise we can talk afterwards, my dearest - but will you listen to me first, though? I know it's a lot to ask when you're stressed, and you don't quite know what's going on. You can manage that for me though, can't you?", "goto": 4 },
				4: { "speaker": "MC", "dialogue": "I... Suppose.", "goto": 5 },
				5: { "speaker": "The Witch", "dialogue": "Good. Thank you.", "goto": 6 },
				6: { "speaker": "", "dialogue": "She catches your eyes in her - they draw you in so effortlessly. Is it magnetic attraction, or something else? You're not entirely sure.", "goto": 7 },
				7: { "speaker": "The Witch", "dialogue": "Breathe for me. In. Out. We can talk better if you're relaxed.", "goto": 8 },
				8: { "speaker": "", "dialogue": "In and out. Let that feeling of calm roll through you dear - because we both know you deserve it. It's like the tide, isn't it? Lapping at your feet, moving up to your ankles. Then to your knees, thighs, hips.", "goto": 9 },
				9: { "speaker": "", "dialogue": "You nod, lazier than before. You hadn't realised until now just how tightly wound you'd been; a spring loaded toy moments before shattering itself under its own torsion. An easy sigh leaves you - something the witch seems more than pleased by.", "goto": 10 },
				10: { "speaker": "The Witch", "dialogue": "Good. You're doing so good.", "goto": 11 },
				11: { "speaker": "The Witch", "dialogue": "And it feels even better as that tide rises even further, doesn't it? Rising to you hips, to your waist. Reaching up to your shoulders and letting those hang loose. It'll go further too - the tide always does, doesn't it? It'll move over your neck, loosen your jaw, right up to where you're tense in that brow - and it's so hard to keep your eyes focused at this point, isn't it?", "goto": 12 },
				12: { "speaker": "The Witch", "dialogue": "It's okay if they lose focus a bit, you know. As long as you can hear me, you're still paying perfectly good attention to my words. You're still listening so well to me. We're still having such a good conversation.", "goto": 13 },
				13: { "speaker": "The Witch", "dialogue": "Even as you drop deeper and deeper, down and down. Down to a place where you don't have to think for yourself.", "goto": 14 },
				14: { "speaker": "The Witch", "dialogue": "You don't have to think much at all.", "goto": 15 },
				15: { "speaker": "The Witch", "dialogue": "And isn't it nice, down here? ", "goto": 16 },
				16: { "speaker": "", "dialogue": "You feel a hand now, moving over your cheek. It tilts your head so sweetly - relaxed and easy as you are, you go with the touch like a...
				A...
				There's probably a simile that works here, but you're too relaxed to think of it.", "goto": 17 },
				17: { "speaker": "The Witch", "dialogue": "Good girl.", "goto": 18 },
				18: { "speaker": "The Witch", "dialogue": "Now you're all relaxed, it's easy to listen to my words, isn't it?", "goto": 19 },
				19: { "speaker": "The Witch", "dialogue": "Easy to let them roll over you, sink into you - because I'm speaking to that deepest part of you.", "goto": 20 },
				20: { "speaker": "The Witch", "dialogue": "The one that recognises that if I can get you this relaxed, this pliant, this sweet, that means something to a woman who's usually so guarded like yourself.", "goto": 21 },
				21: { "speaker": "The Witch", "dialogue": "That means you trust me.", "goto": 22 },
				22: { "speaker": "The Witch", "dialogue": "You trust me because I can make you feel this relaxed.", "goto": 23 },
				23: { "speaker": "The Witch", "dialogue": "And you'll trust the words I say, because you trust me. Isn't that right?", "goto": 24 },
				24: { "speaker": "The Witch", "dialogue": "Good girl.", "goto": 25 },
				25: { "speaker": "The Witch", "dialogue": "And now we're talking - isn't it nice to feel this relaxed, to feel this easy and good? No thoughts in that pretty little head of yours. ", "goto": 26 },
				26: { "speaker": "The Witch", "dialogue": "It's a good feeling, right? Especially when thinking has been so hard for you for so long.", "goto": 27 },
				27: { "speaker": "The Witch", "dialogue": "Your kingdom let you behind. Your king didn't look after you. You fought for them, but they didn't look after you in return. And now they're gone. ", "goto": 28 },
				28: { "speaker": "The Witch", "dialogue": "But don't be sad, dear - we can make sure you never feel that confused again. Be a good girl and drink for me.", "goto": 29 },
				29: { "speaker": "", "dialogue": "You feel something press to your lips - easy, obediently you drink, letting the bubblegum sweet liquid flow over your tongue. Heat blooms in its wake - one that makes your whimper and rub your thighs together. It tastes like sparks, like sugar - you're quickly running out of words to describe it except good.", "goto": 30 },
				30: { "speaker": "", "dialogue": "You giggle. That feels good, too. Like each bubble of laughter is making your head just that bit lighter. You giggle again and again, eyes unfocused and body thrumming with arousal until you feel the witch's hand run over your jaw and draw your attention back once more.", "goto": 31 },
				31: { "speaker": "The Witch", "dialogue": "There you go, dearest. Isn't it good, not to think?", "goto": 32 },
				32: { "speaker": "The Witch", "dialogue": "Isn't it [b]better[/b], not to think?", "goto": 33 },
				33: { "speaker": "The Witch", "dialogue": "You don't need to do that anymore - not when you can think about nicer things. Like that heat between your thighs, or my cock between your lips. Buch a pretty, pretty little thing you're going to be for me.", "goto": 34 },
				34: { "speaker": "", "dialogue": "The hand against your cheek turns instructive - a tap on the cheek to turn your face outward, to let your mouth drop open. You're aware of how good it is to have the witch side into your mouth like this, the thick length of her cock quickly leaving you drooling and dazed. You're not even doing anything, as she fucks into your mouth like this.", "goto": 35 },
				35: { "speaker": "", "dialogue": "That would require you to be able to think - and the hand that has drifted to your cunt in desperation would speak to your complete inability to do that right now.", "goto": 36 },
				36: { "speaker": "The Witch", "dialogue": "Just a pretty hole for me. Just a gorgeous sleeve for me. ", "goto": 37 },
				37: { "speaker": "", "dialogue": "When she comes, you barely have the co-ordination to swallow; your face is a mess of slick and drool, slowly working around the cock fucked deep into your throat. Your orgasm comes soon after - but the clarity that comes afterwards is absent. The only thing that rises is your arousal once more, a pleasure that you don't even know to fight before it swallows you whole.", "goto": 38 },
				38: { "speaker": "", "dialogue": "But that's okay. Because this is your life now - a sweet, brainless fucktoy for a gorgeous woman and her cock. 
				And truly? You cannot think of any way you'd be happier.", "goto": 39 },
				39: { "speaker": "", "dialogue": "[Ending 2 - Better Not to Think]", "END_OF_GAME": "softEnding_bimbo" }
	},

#successfully completed all
	"TrueEnd":
	{
		1: { "speaker": "", "dialogue": "You don't have to wait long before you hear the jingle of the door handle, as the woman you've been waiting to see finally sweeps in the door. As if understanding the situation in turn, you can hear her stop, pausing. A laugh like silver bells sits on the air.", "goto": 2 },
		2: { "speaker": "The Witch", "dialogue": "My dearest, you have been busy, haven't you?", "goto": 3 },
		3: { "speaker": "", "dialogue": "The other witch sweeps around in front of you, bright eyes shining with delight. Now entirely at ease in her house you're able to drink in the sight of the woman in front of you.", "goto": 4 },
		4: { "speaker": "", "dialogue": "She stands a good half foot taller than you; while her form is much leaner than your own, it doesn't do anything to change the presence that she walks with. There's a smile on her face as she admires your form - your new piercings, the stripes that now swirl around the curves of your body like the magic you've been drowned in has marked itself permanently onto your skin.", "goto": 5 },
		5: { "speaker": "The Witch", "dialogue": "How does it feel?", "goto": 6 },
		6: { "speaker": "MC", "dialogue": "Better than I expected. I didn't realise arousal could feel so.... Powerful.", "goto": 7 },
		7: { "speaker": "The Witch", "dialogue": "It's hard to describe, isn't it? I've tried to explain it to other apprentices to be before, but I've found it's a process better experienced for one's self.", "goto": 8 },
		8: { "speaker": "", "dialogue": "Your eyes meet hers, wide with surprise.", "goto": 9 },
		9: { "speaker": "MC", "dialogue": "Apprenticeship?", "goto": 10 },
		10: { "speaker": "The Witch", "dialogue": "Of course. With your king felled and the kingdom you served gone, I suspect you'll need a new purpose in life.", "goto": 11 },
		11: { "speaker": "The Witch", "dialogue": "I was going to offer that to you as the chance to leave responsibility behind and become my playtoy - but you wouldn't have managed all of this if you wanted such simple pleasures.", "goto": 12 },
		12: { "speaker": "MC", "dialogue": "I enjoy surprising people.", "goto": 13 },
		13: { "speaker": "The Witch", "dialogue": "I can tell.", "goto": 14 },
		14: { "speaker": "", "dialogue": "She takes your hands - not as a superior, not as a witch as powerful as she is beautiful, but something more approachable.
		A mentor. A teacher. Perhaps even a lover.", "goto": 15 },
		15: { "speaker": "The Witch", "dialogue": "Stay with me, Alessia. Learn how to wield the magic you've taken on so beautifully. We can do so much more together.", "goto": 16 },
		16: { "speaker": "", "dialogue": "Her words carry a weight to them - a heat, but also a promise.
		One you are all too happy to accept.", "goto": 17 },
		17: { "speaker": "", "dialogue": "[Ending 10 - True End]", "END_OF_GAME": "specialEnding_trueEnd" }			
	},	
	
	"default_ending_setup": ##covers beginning of imp, cow, pet, and failed apprentice	
	{
				1: { "speaker": "", "dialogue": "You wait - watching the light stretch across the sky, drifting off a little as you do. You're roused by the sound of footfalls on the ground, of a hand that is not your own trying and turning the lock.", "goto": 2 },
				2: { "speaker": "", "dialogue": "The witch is a woman of beauty, as she swirls around to meet you face to face. A half head taller than yourself, her leaner frame takes away nothing from the power that she walks with. Her presence fills the room, and it makes you heart flutter in your chest. She places some bags laden with who knows what on the dining room table before coming to stand over you, eyes bright.", "goto": 3 },
				3: { "speaker": "The Witch", "dialogue": "Welcome back to the world of the living, dearest - you have been busy, haven't you?", "goto": 4 },
				4: { "speaker": "MC", "dialogue": "That's what happens when you leave a job list for me.", "goto": 5 },
				5: { "speaker": "The Witch", "dialogue": "But of course. I need to keep you out of trouble - or perhaps get you into trouble, should it suit you better.", "goto": 6 },
				6: { "speaker": "", "dialogue": "Shaking your head to rid yourself of the flush you know she's referring to, you pin her with a look.", "goto": 7 },
				7: { "speaker": "MC", "dialogue": "You said that when I was done you'd take me back home.", "goto": 8 },
				8: { "speaker": "The Witch", "dialogue": "I did. But I also said that I would only do that if you wanted it. And do you really want that, now?", "goto": 9 },
				9: { "speaker": "", "dialogue": "You know you should... But you hesitate. You [i]know[/i] that the world outside you've be returning to isn't the one you left. Sensing your hesitation, the witch's smile widens. You're a rabbit, caught in a trap - but is it really a trap if the woodlands are ablaze around you? There's nothing but smoke and ash that makes up where you've been before.", "goto": 10 },
				10: { "speaker": "", "dialogue": "This is the only place left for you, now.", 
				"checkCurrentCorruption": [
				#same ending - choose
				{ "condition_type": SaveData_CurrentGame.Corruption_Type.NONE, "goto": 100 },
				{ "condition_type":  SaveData_CurrentGame.Corruption_Type.UNDEFINED, "goto": 100 },	
				#brat ending
				{ "condition_type": SaveData_CurrentGame.Corruption_Type.IMP, "goto": 200 },		
				#cow ending
				{ "condition_type": SaveData_CurrentGame.Corruption_Type.COW, "goto": 300 },
				#pet ending
				{ "condition_type": SaveData_CurrentGame.Corruption_Type.PET, "goto": 400 },		
				#apprentice ending should NEVER come up			
				]},	
				
				100: { "speaker": "", "dialogue": "The witch, meanwhile, seems to think to herself, before standing over you.", "goto": 101 },
				101: { "speaker": "The Witch", "dialogue": "You, my dear, are a precious and strange thing. I would of thought by now that I'd know what calls to your heart - what needs that pretty little face of yours desires. But your results are... Muddled.", "goto": 102 },
				102: { "speaker": "The Witch", "dialogue": "But I forgot the most important factor of all this: you.", "goto": 103 },
				103: { "speaker": "", "dialogue": "She tip your head up with one finger.", "goto": 104 },
				104: { "speaker": "The Witch", "dialogue": "Do you want to be my precious cow? A hard working woman, treated like a princess? It would give you purpose - and endless pleasure.", "goto": 105 },
				105: { "speaker": "The Witch", "dialogue": "Or perhaps you crave a steadying hand? Somebody to yank your leash, to remind you who will make sure you want for nothing ever again? I can be a wonderfully cruel mistress, my dear - and you'll learn to love it so.", "goto": 106 },
				106: { "speaker": "The Witch", "dialogue": "Of course, it might be that you're tired of such a hard life. I can relieve you of all of that - make submission as easy as a collar around your neck and sweet words in your ear.", "goto": 107 },
				107: { "speaker": "MC", "dialogue": "I'm a trained solider. I could- protect you. Hunt for you. Train under you, maybe. Surely there's other options. ", "goto": 108 },
				108: { "speaker": "The Witch", "dialogue": "Oh, but you don't understand. For you? There aren't, my dear. Any other choice would mean your happiness would be forfeit - and I simply will not stand for that.", "goto": 109 },
				109: { "speaker": "", "dialogue": "Make your choice.", "completelyCentered": true, 
				"choice": {
								"c1": { "choice": "Cow", "goto": 307 },
								"c2": { "choice": "Submissive", "goto": 300 },
								"c3": { "choice": "Pet", "goto": 403 },
						}
				},			
				
				111: { "speaker": "The Witch", "dialogue": "Thank you for your trust. I'll make sure you enjoy it every bit as much as I do.", 
						"preloadConversation": "soft_imp_ending", "end": true },		
				
				#imp prologue
				200: { "speaker": "MC", "dialogue": "No - I won't!", "goto": 201 },
				201: { "speaker": "", "dialogue": "You speak before you can think better, glaring at the witch. You're not even sure why you bite back like you do; you know this is the safest place for you. You know the witch is giving you shelter, protecting you in a way you frankly need right now... But you have to test your bindings. You have to see how far you can go.", "goto": 202 },
				202: { "speaker": "MC", "dialogue": "You've made me do these stupid little puzzles - fucked monsters, eaten god knows what. I want to leave! Now!", "goto": 203 },
				203: { "speaker": "The Witch", "dialogue": "And where will you go?", "goto": 204 },
				204: { "speaker": "MC", "dialogue": "I don't have to tell you.", "goto": 205 },
				205: { "speaker": "The Witch", "dialogue": "But I have to know where to take you.", "goto": 206 },
				206: { "speaker": "", "dialogue": "You glare at her - it's petulant and you know it. All forces are met with an equal and opposite one - and your stubbornness is met with a firm hand around your throat. The witch examines you, her eyes steady.", "goto": 207 },
				207: { "speaker": "The Witch", "dialogue": "I don't think you understand, dear. I know what is best for you - and you're going to do what I say. Aren't you?", "goto": 208 },
				208: { "speaker": "", "dialogue": "You go to bite back a retort - when a knee comes up between your thighs, grinding into the tight heat of your cunt. Shit, when did you get so turned on? What about this stupid fucking gorgeous woman is making your body light up like a god damn circus attraction?", "goto": 209 },
				209: { "speaker": "The Witch", "dialogue": "Stop pretending you don't enjoy this just as much as I do.", "goto": 210 },
				210: { "speaker": "MC", "dialogue": "Fuck you.", "goto": 211 },
				211: { "speaker": "The Witch", "dialogue": "No. I'm going to fuck [b]you[/b]. And you're going to love it.", 
						"preloadConversation": "soft_imp_ending", "end": true },					
				
				#cow prologue
				300: { "speaker": "", "dialogue": "The witch peers at you before standing up straight, starting to walk long striding circles around you. You watch her with wide eyes - you feel judged.", "goto": 301 },
				301: { "speaker": "", "dialogue": "...No. That's not quite right. The eyes on you are more discerning than that. She's not looking at you like you've failed at something - it's more subjective, like you're a fine jewel or rich silks. 
				You're being evaluated.", "goto": 302 },
				302: { "speaker": "The Witch", "dialogue": "Your body is exquisite, dearest. Did you know that? Such strength in these muscles, such beauty in your curves. There's plenty to work with here.", "goto": 303 },
				303: { "speaker": "MC", "dialogue": "Work with?", "goto": 304 },
				304: { "speaker": "The Witch", "dialogue": "But of course. We can't have somebody like you sitting idle? You're a woman used to being given purpose - and while I will certainly never put you in harm's way again, we can make sure that you still have that.", "goto": 305 },
				305: { "speaker": "", "dialogue": "There's a part of you that wants to fight, that wants to bite back - you're a Divine's chosen! This shouldn't even be a consideration - you should be fighting  to leave this witch's home and her strange machinations. There are so many people to help!", "goto": 306 },
				306: { "speaker": "", "dialogue": "...And yet you can't find the words. This woman looks at you like you're something of value - not of value [i]to[/i] something, not value in what you can do. You, yourself are of value in these plans that she has. It's enough to still your tongue - she notices, and smiles.", "goto": 307 },
				307: { "speaker": "", "dialogue": "She raises a hand and beckons you closer - and you follow.", 				 "preloadConversation": "soft_cow_ending", "end": true },
				
				#pet ending
				400: { "speaker": "", "dialogue": "That thought alone leaves you unsteady - looking to the witch with a cold fear in your chest you can't shake. This can't be it, right? ", "goto": 401 },
				401: { "speaker": "", "dialogue": "As if sensing your fear, the witch finally closes the distance between you, sweeping you into a hug. That smell of petrichor and vanilla clings to the folds of her clothes; you bury your face into them, allowing yourself for the first time in gods know how long to be weak.", "goto": 402 },
				402: { "speaker": "The Witch", "dialogue": "There, there, my precious. We're going to look after you now - and I know just the thing to prove it.", "goto": 403 },
				403: { "speaker": "", "dialogue": "Digging into her pocket she retrieves a strip of rich brown leather - plush on the inside, substantial but not constrictive in girth. A tag jingles on the front, with 'Pet' engraved onto it in looping cursive.
				A collar.", "goto": 404 },
				404: { "speaker": "The Witch", "dialogue": "Yours, if you want it.", "goto": 405 },
				405: { "speaker": "", "dialogue": "You know you have a choice - but being presented with such softness, such easiness and care at the hands of somebody so beautiful? You present your neck eagerly for the witch's touch.", "goto": 406 },
				406: { "speaker": "", "dialogue": "Her touch is deft as she moves, clicking the buckle around your neck, threading a couple of fingers into the space between the collar and your neck to make sure that it's just the right amount of tight. You can't help yourself - you lean into the touch, seeking out the hands of a woman that has designated herself owner. She certainly doesn't seem to mind, meeting your affections eagerly.", "goto": 407 },
				407: { "speaker": "The Witch", "dialogue": "Good girl. [b]Best[/b] girl. Now - lets look after you properly.", 
				"preloadConversation": "soft_pet_ending", "end": true },						
				
	},

	"soft_cow_ending":
	{
		1: { "speaker": "none", "dialogue": "Ending 4: Prized Cow", "END_OF_GAME": "softEnding_cow" }			
	},	
	
	"soft_pet_ending":
	{
		1: { "speaker": "none", "dialogue": "Ending 7: A Pretty Pet", "END_OF_GAME": "softEnding_pet" }			
	},		
	
	"soft_imp_ending":
	{
		1: { "speaker": "none", "dialogue": "Ending 5: To Know Your Place", "END_OF_GAME": "softEnding_demon" }			
	},			
	
}
