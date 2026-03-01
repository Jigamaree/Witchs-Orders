extends Node

class_name thePitConvos

static var thePit_Convos_Dict = {
	"topOfStairs": {
				1: { "speaker": "", "dialogue": "The door creaks open, letting you gaze into the staircase beyond. You have to take a moment just to witness it - to realise you're staring at a set of stairs that is a straight march into the black. This is definitely no set of cellar stairs - this is leading you much, [b]much[/b] deeper than that.", 
				"checkSaveVariable": { "keyToCheck": "garden_hasTentacleFood", "wantedValue": "true", "goto_false": 2, "goto_true": 3 }},
				#does not have tentacle food
				2: { "speaker": "", "dialogue": "It's [i]eerie[/i]. The sound of your breath is too loud in your ears, standing here, each small shift echoing down the way. With nothing responding back, it makes it feel like you're the only person around for miles.
				...You're not comforted by the fact that, besides Ignus, you actually might be.", "goto": 4 },
				#does have tentacle food
				3: { "speaker": "", "dialogue": "Your fingers grip the bucket tightly - you're not sure what awaits you at the center of this place, but you know the so-called food in your hands should at least somewhat placate it.", "goto": 4 },
				#end for both
				4: { "speaker": "", "dialogue": "The darkness awaits.", "end": true },
		},		

	"middleOfStairs": {
				1: { "speaker": "none", "dialogue": "Deeper and deeper you go - the darkness rushes up to you like a tide, but no torchlight comes to guide you. There is [i]something[/i] though, further in the distance - a dim blue light, flickering like a distant star.", "goto": 2 },
				2: { "speaker": "", "dialogue": "When being trained as one of the Divine's Chosen, you were taught about Will o' Wisps - strange arcane lights that witches could summon at will. Too enchanted by the colour and the promise of something just out of reach, hapless victims would be lured into traps indescribable by any sane man.", "goto": 3 },
				3: { "speaker": "", "dialogue": "You swear you can hear something writhing in the dark.", "end": true },
		},		

	"bottomOfStairs": {
				1: { "speaker": "none", "dialogue": "The floor levels out ahead of you - the blue light glimmers all the brighter. A sweet smell has joined it on the air, but it's not a sweetness that comes from cane sugar.", "goto": 2 },
				2: { "speaker": "", "dialogue": "It's something heavier- muskier, perhaps? The sweetness that comes not from the living, but from something that is [i]alive[/i]. 
				The sound of something slick and wet, something churning, something Other - that sound is only getting closer.", "goto": 3 },
				3: { "speaker": "", "dialogue": "Of those that followed the Will 'o Wisps, next to none come back. A rare few would stagger back to society - but while their body returned, their mind never quite followed behind.", "goto": 4 },
				4: { "speaker": "", "dialogue": "You wonder which one you'll be.", "end": true },
		},		
		
		
	#there are two situations the player can be in
	#hasn't got food 
	#immediately go to bad end
	#HAS got food
	#Can either toss the food - completes "tend to pit" and allows player to engage later (exit EnteringRoom)
	#OR wait it out, and engage

	"enteringRoom": {
				0: { "checkSaveVariable": { "keyToCheck": "garden_hasTentacleFood", "wantedValue": "true", "goto_false": 1, "goto_true": 100 }},
				#does not have food
				1: { "speaker": "none", "dialogue": "The room is lit by a single flickering blue torch - while dim, it brings your attention to the massive pit in the ground.", "goto": 2 },
				2: { "speaker": "", "dialogue": "Its [i]huge[/i]. You'd think it access to some sort of ancient sewage system, like you've heard adventurers finding in Antiquity-era ruins, but this looks more tended to than that. Scrubbed stone free of lichen or crumbling rock makes up the floor, with solid brick overhead.", "goto": 3 },
				3: { "speaker": "", "dialogue": "The only true blemishes in the room are a slickness to the edge of the pit, something that only catches your attention because of the flickering light. You realise that isn't some failed attempt at cleaning - it's because of what's inside the hole itself.", "goto": 4 },
				4: { "speaker": "", "dialogue": "You can barely make it out, even from where you're standing at the door - something undulating in the dark, the picture of unrest- No. Somethings, [i]plural[/i]. There's an impossible amount of movement from an impossible amount of limbs, all barely visible to the eye.", "specialAction": "singleTentacle", "goto": 5 },
				5: { "speaker": "", "dialogue": "That sweet scent on the air is only growing stronger by the second - turning slightly sour as you hover in place.", "goto": 6 },				
				6: { "speaker": "MC", "dialogue": "Fuck.", "goto": 7 },
				7: { "speaker": "", "dialogue": "This isnt just a pit.", "goto": 30 },
				30: { "speaker": "", "dialogue": "This is a nest - and you've shown up empty-handed.", "specialAction": "singleTentacle", 
				"choice": {
								"c1": { "choice": "RUN", "goto": 40 },
								"c2": { "choice": "RUN", "goto": 40 },
								"c3": { "choice": "RUN", "goto": 40 },
								"c4": { "choice": "RUN", "goto": 40 },
								"c5": { "choice": "RUN", "goto": 40 },
								"c6": { "choice": "RUN", "goto": 40 },
								"c7": { "choice": "RUN", "goto": 40 },
								"c8": { "choice": "RUN", "goto": 40 },
								"c9": { "choice": "RUN", "goto": 40 },
								"c10": { "choice": "RUN", "goto": 40 },
								"c11": { "choice": "RUN", "goto": 40 },
								"c12": { "choice": "RUN", "goto": 40 },
								"c13": { "choice": "RUN", "goto": 40 },
								"c14": { "choice": "RUN", "goto": 40 },
								"c15": { "choice": "RUN", "goto": 40 },
								"c16": { "choice": "RUN", "goto": 40 },
								"c17": { "choice": "RUN", "goto": 40 },
								"c18": { "choice": "RUN", "goto": 40 },
								"c19": { "choice": "RUN", "goto": 40 },
						}
				},
				40: { "speaker": "", "dialogue": "But it's too late.", "specialAction": "drag", "fadeToBlack": true, "playEnding": SaveData_EndingTracker.EndingEnum.TENTACLE_BAIT },
				
				#does have food
				100: { "speaker": "none", "dialogue": "The room is dim, lit only by that single, flickering blue light. A simple light for a simple room, though the colour makes it feel less like waking life and more like some strange dream-state that you've fallen into.", "goto": 101 },
				101: { "speaker": "", "dialogue": "In front of you is a massive hole in the ground - it looks like a water well, but its truly enormous size leaves you wondering if this is some sort of paved-over sink hole. However it got here in the first place, you can see the stone is clearly kept clean and the place free of lichen and dust - the closest thing to mess is the slick on the edge of the hole.", "goto": 102 },
				102: { "speaker": "", "dialogue": "As you figure out exactly what you're looking at, you see a single long tentacle reach out of the hole. The things is as large around as your torso, but endlessly dexterous - it curls through the air, as if tasting something on it.","specialAction": "singleTentacle", "goto": 103 },
				103: { "speaker": "", "dialogue": "The sweet smell you've been following down here intensifies as well - strangest of all is how that directly correlates to a heat rising in your cheeks and an ache between your legs.", "goto": 104 },
				104: { "speaker": "", "dialogue": "You could just throw the bucket at this thing and be done with it.... But the note did say it needed to be [i]tended[/i] to...", 
								"choice": {
								"c1": { "choice": "Throw the bucket", "goto": 300 },
								"c2": { "choice": "Offer yourself as well", "goto": 400 },
								"c3": { "choice": "BOOK IT", "goto": 200 },
						}
				},
				#whoops! bad end time!
				200: { "speaker": "MC", "dialogue": "Fuck this. Fuck this fuck this [i]fuck this[/i].", "goto": 201 },
				201: { "speaker": "", "dialogue": "You need a minute to collect yourself - to figure out what on earth is going on and why some creature from the far realms has parked itself in a Divine-forsaken basement. Twisting on your heels, you book it toward the stairs.", "goto": 202 },
				202: { "speaker": "", "dialogue": "Unfortunately, you've made yourself a moving target.", "specialAction": "drag", "fadeToBlack": true, "playEnding": SaveData_EndingTracker.EndingEnum.TENTACLE_BAIT },
				
				# neutral end
				300: { "speaker": "", "dialogue": "Getting between a... Tentacle monster? Whatever the hells that thing is- Getting between it and its food sounds like a recipe for disaster.", "goto": 301 },
				301: { "speaker": "", "dialogue": "With a deft heft, you send the bucket flying - before it can clang noisily to the ground, you watch another tentacle snap it out of the air like a well trained dog.", "goto": 302 },
				302: { "speaker": "", "dialogue": "The bucket is drawn down into the dark, along with the single searching tentacle you saw. Not a few moments later, the bucket is kicked into some obscure corner of the room - the sweet scent on the air intensifies even more.", "goto": 303 },
				303: { "speaker": "", "dialogue": "And as that smell intensifies, the well [i]blooms[/i] open. Tentacle after tentacle unfurls from the dark, curling into the air like some sort of exotic coral. They swirl and coil in the air, an endless cycling pattern. It's... Almost beautiful?","specialAction": "singleTentacle", "goto": 304 },
				304: { "speaker": "", "dialogue": "Despite its clear size and strength advantage - a baffling thing to say as a [i]Divine's Chosen[/i] - it seems to be in no rush to overpower you.
				You daresay it might even be trying to impress you. 
				Huh.",
				"setSaveVariable": ["pit_fed", true], "end": true },
				
				#FUCK! THAT! SQUID!
				400: { "speaker": "", "dialogue": "You bite your lip, looking between the bucket in your hand, yourself and the pit in front of you. Are you really considering this, stepping into a massive tentacle pit? You have no guarantee this isn't going to hurt you or kill you. Hell, it might even eat you! Any sane person would turn around and bolt right the fuck now.", "goto": 401 },
				401: { "speaker": "", "dialogue": "But that's the thing about this place, isn't it? The logical thing to you - a woman trained to shun sex and magic as equal horrors - is not going to be the logical thing for a place that reveres both of those things above else. To survive is to adapt - and if adapting is to present yourself to this tentacle pit for it to do Divine knows what to you? Well, so be it.", "goto": 402 },
				402: { "speaker": "", "dialogue": "(You say that to yourself like submitting to a pit of writhing tentacles doesn't immediately make your thighs rub together eagerly.)", "goto": 403 },
				403: { "speaker": "", "dialogue": "Shedding your clothing to one side of the room you step forward confidently, bucket in hand and head held high. If you're going to throw yourself to the wolves - or the tentacle pit - you're going to do it with dignity.",  "preloadConversation": "FuckThatSquid", "end": true },
		},							

	# the player has either fucked it - in which case it wants to make it a willing broodmare, or has not, and its not going to ask.
	"thePit": {
			0: {"checkSaveVariable": { "keyToCheck": "pit_fucked", "wantedValue": "true", "goto_false": 100, "goto_true": 1 }},
			#if you HAVE fucked it.
			1: { "speaker": "", "dialogue": "As you move forward, tentacles curl around your legs, smooth over your hair. There's a tenderness to it, a wanting that's both surprisingly human and yet entirely alien.", "goto": 2 },
			2: { "speaker": "", "dialogue": "You know that this creature wants you for something more than a simple fuck. This is its nest, after all. You know how good it made you feel just now - what would happen if you gave yourself over entirely?", "choice": {
								"c1": { "choice": "Step away", "goto": 10 },
								"c2": { "choice": "Embrace your fate", "goto": 20 },
						}
				},
			10: { "speaker": "", "dialogue": "It's an entertaining fantasy - but it has to stay a fantasy, for now. You extract yourself from the tentacles once more.", "end": true },
			20: { "speaker": "", "dialogue": "You can't resist - not when you know how good it feels. You open your arms and feel the tentacles wrap around you, pulling you once more again into this creature's euphoric clutches.", 
			"fadeToBlack": true, "playEnding": SaveData_EndingTracker.EndingEnum.TENTACLE_BAIT },	
			#if you HAVENT
			100: { "speaker": "", "dialogue": "The tentacles seen to close around you as you get closer - curious, questing. Tentacles slither over your body; the cool sweet slick it leaves behind feels like a claiming bond.", "goto": 101 },
			101: { "speaker": "", "dialogue": "You've sent quite the message, walking into its clutches again.",  
			"choice": {
								"c1": { "choice": "Leave", "goto": 111 },
								"c2": { "choice": "Tend to the monster", "goto": 200 },
						}
				},
			111: { "speaker": "", "dialogue": "You try to extract yourself - this time, though, the tentacles don't budge. When you try to shove them harder, they wrap around all the tighter before dragging you in.", "goto": 112 },
			112: { "speaker": "", "dialogue": "They weren't asking, anymore.",  "specialAction": "drag", "fadeToBlack": true, "playEnding": SaveData_EndingTracker.EndingEnum.TENTACLE_BAIT },	
			
				200: { "speaker": "", "dialogue": "Logically, you know this thing has every advantage on you - just one tentacle is both bigger, stronger, and infinitely more dexterous than you. Not to mention you're sure even if you were to cull one - Divine knows how you'd manage that - three more would take its place. At least!", "goto": 201 },
				201: { "speaker": "", "dialogue": "If it wasn't using that advantage, that meant it saw you as valuable - maybe even just any human that came in as valuable. Would this creature damage something it saw as valuable? There's just something on the air that makes you want to say yes.", "goto": 202 },
				202: { "speaker": "", "dialogue": "You've always been good at sensing places of power, at finding magical artifacts dating back to antiquity that would have surely harmed somebody if it'd gotten into the wrong hands. You'd always called that a sixth sense to protect people... 
				Standing here, shedding your clothes as you ready yourself to be welcomed by the tentacled abyss, you wonder if you were sensing magic, instead.", "goto": 203 },
				203: { "speaker": "", "dialogue": "You step forward, sure in yourself.",  "preloadConversation": "FuckThatSquid", "end": true },		
		},
	
	##TODO: write tentacle fucking the first
	"FuckThatSquid": {
				1: { "speaker": "", "dialogue": "The tentacles are on you immediately - but they're not unkind. Instead, they curl around your body like they're greeting somebody coming home once more instead of meeting you for the first time. You were expecting the limbs to be cold to the touch - toad-like, even - but you're surprised to find them pleasantly warm to your skin instead. You hold out a hand experimentally; one of the tentacles runs against the underside of it in turn, the even, solid pressure more of a comfort than you expected.", "goto": 2 },
				2: { "speaker": "", "dialogue": "'Solid pressure' is a good description for this creature's movements, really. The solid pressure of tentacles exploring your body, leaving paths of slick in their wake. The solid pressure of tentacles winding curiously around your legs, questing towards your core. The solid pressure of a tentacle at your back, a steadying presence as the creature binds you and takes your own balance out of your grasp. ", "goto": 3 },
				3: { "speaker": "", "dialogue": "All the tentacled comfort in the world wouldn't make being lifted any less strange, however. Neither does it comfort the cold swoop of your stomach as you're drawn over and towards a pit that - to your eyes - is nothing but an endless drop into the abyss. But as you're drawn into the dark, more and more tentacles come through; they wrap around you, over you, embracing you like a lover.", "specialAction": "drag", "fadeToBlack": true, "goto": 4 },
				4: { "speaker": "", "dialogue": "You're starting to feel like you've come into the embrace of one, too - with a start you realise that's not just from the anticipation of the situation, either. Everywhere those tentacles have moved over now thrums with sensitivity, your body turning into a canvas of pleasure under its touch. Suddenly the firm touches aren't just comforting - they're unignorable, a reminder of the bondage you've found yourself in. ", "goto": 5 },
				5: { "speaker": "", "dialogue": "And the press against your mouth after that? That's a promise of things to come - a pleasure inescapable. How are you not supposed to give yourself over to that?", "goto": 6 },
				6: { "speaker": "", "dialogue": "The tentacle in your mouth fucks shallowly at first, nothing more than a pleasant slide against the tongue - but it only takes a few thrusts for you to realise that it's quickly becoming not just mere stimulation anymore. The more the tentacle slides against your tongue, the roof of your mouth, brushes against the back of your throat, the more nerve endings you didn't even know were there come to life. ", "goto": 7 },
				7: { "speaker": "", "dialogue": "Soon you're groaning on each press into your mouth, desperately craning your head to take each thrust as it's offered to you. More, more - deeper, harder, faster. You groan as your mouth is wrenched opened further, as the tentacle fucks deep enough into your throat to block off your air. While the world spins around you, your cunt only pulses with all the more arousal.", "goto": 8 },
				8: { "speaker": "", "dialogue": "Behind you, you can feel the tentacles tilting you up, pulling your legs open. You've lost count of how many tentacles are brushing over you now - it's like this creature needs to feel you with every limb, in every angle; slather you in enough magic so you drown in pleasure. Being fucked so deep it's making you dizzy, you can't say you mind the thought. ", "goto": 9 },
				9: { "speaker": "", "dialogue": "You do, however, learn how to count again when two more tentacles press against you - a thicker one against your cunt, a thinner one against your ass. Being breached by the largest one is a delight; being fucked into and made airtight by the final one? Euphoria, plain and simple. Your eyes roll at the feeling of being filled in all holes; as much a toy for this creature as it a lover to you.", "goto": 10 },
				10: { "speaker": "", "dialogue": "The pleasure swallows you whole. Each fuck into your mouth is followed by one into your cunt, then your ass - and by then the one in your mouth is skewering through into your throat once more. Your body is a livewire of arousal; so much so that the first brush of a tentacle against your clit is enough for you to come with a muffled scream, convulsing where you're pierced through and dripping around the tentacle now fucking your hole into a frothing mess.", "goto": 11 },
				11: { "speaker": "", "dialogue": "Things... Get a bit blurry after that.", "goto": 12 },
				12: { "speaker": "", "dialogue": "When you come to, you no longer have tentacles fucking you from every angle; instead, you seem to be resting on what appears to be functionally a bed of tentacles. The light from the single blue torch shines somewhere far above you; around you, the body of the beast twist and coils in slow motion; a pleasure just as bone deep as the one you feel, you're sure.", "goto": 13 },
				13: { "speaker": "", "dialogue": "One nudges against you, tilts to one side. It feels like a question.", "goto": 14 },
				14: { "speaker": "MC", "dialogue": "Yeah. Yeah I'm back. I'm okay.", "goto": 15 },
				15: { "speaker": "MC", "dialogue": "...Thanks.", "goto": 16 },
				16: { "speaker": "", "dialogue": "That seems to be a satisfactory enough answer for it. Tentacles winding around you once more, it winches you up and out of the hole, dropping you right next to your clothes. You're able to dress yourself easily, getting yourself presentable once more.", "specialAction": "push", "fadeIntoScene": true, "goto": 17 },
				17: { "speaker": "", "dialogue": "...And yet, you're aware of the monster still watching you, still tracking your every movements. If before it was treating you as a lover, now you're aware of how it acts like a creature all unto it's own. You have the sense that if it were to take you again, it'd never let you go.", "setSaveVariable": ["pit_fed", true], "goto": 18 },
				18: { "speaker": "", "dialogue": "You can't say you're not tempted - but. For now at least the pit is [i]fully[/i] tended to; a job, checked well and truly off the list.", "setSaveVariable": ["pit_fucked", true], "end": true },
				
		},			
}
