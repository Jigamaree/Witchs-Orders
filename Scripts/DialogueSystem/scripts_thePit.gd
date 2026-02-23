extends Node

class_name thePitConvos

static var thePit_Convos_Dict = {
	"topOfStairs": {
				1: { "speaker": "", "dialogue": "The door creaks open, letting you gaze into the staircase beyond. You have to take a moment just to witness it - to realise you're staring at a set of stairs that is a straight march into the black.", 
				"checkSaveVariable": { "keyToCheck": "garden_hasTentacleFood", "wantedValue": "true", "goto_false": 2, "goto_true": 3 }},
				#does not have tentacle food
				2: { "speaker": "", "dialogue": "It's [i]eerie[/i]. The sound of your breath is too loud in your ears, standing here, each small shift echoing down the way. With nothing responding back it makes it feel like you're the only person around for miles.
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
				3: { "speaker": "", "dialogue": "Of those that followed the Will 'o Wisps, next to none come back. For a rare few, they'd stagger back to society - but while their body returned, their mind never quite following behind.", "goto": 4 },
				4: { "speaker": "", "dialogue": "You wonder which one you'll be.", "end": true },
		},		
		
		
	#there are two situations the player can be in
	#hasn't got food 
	#immediately go to bad end
	#HAS got food
	#Can either toss the food - completes "tend to pit" and allows player to engage later (exit EnteringRoom)
	#OR wait it out, and engage
	"enteringRoom": {
				0: { "checkSaveVariable": { "keyToCheck": "garden_hasTentacleFood", "wantedValue": "true", "goto_false": 100, "goto_true": 100 }},
				#does not have food
				1: { "speaker": "none", "dialogue": "The room is lit by a single flickering blue torch - while dim, it brings your attention to the massive pit in the ground.", "goto": 40 },
				2: { "speaker": "", "dialogue": "Its [i]huge[/i]. You'd think it access to some sort of ancient sewage system, like you've heard adventurers finding in antiquity ruins, but this looks more tended to than that. Scrubbed stone, free of lichen or crumbling rock makes up the floor, with solid brick overhead.", "goto": 3 },
				3: { "speaker": "", "dialogue": "The only true blemishes in the room are a slickness to the edge of the pit, something that only catches your attention because of the flickering light. You realise that isn't some failed attempt of cleaning - it's beause of what's inside the hole itself.", "goto": 4 },
				4: { "speaker": "", "dialogue": "You can barely make it out, even from where you're standing at the door - something undulating in the dark, the picture of unrest- No. Somethings, [i]plural[/i]. There's an impossible amount of movement from an impossible amount of limbs, all barely visible to the eye.",  "goto": 5 },
				5: { "speaker": "", "dialogue": "That sweet scent on the air is only growing stronger by the second - turning slightly sour as you hover in place.", "goto": 6 },				
				6: { "speaker": "MC", "dialogue": "Fuck.", "goto": 7 },
				7: { "speaker": "", "dialogue": "This isnt just a pit.", "goto": 30 },
				30: { "speaker": "", "dialogue": "This is a nest - and you're shown up empty handed.", 
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
						}
				},
				40: { "speaker": "", "dialogue": "But it's too late.", "specialAction": "drag", "fadeToBlack": true, "playEnding": SaveData_EndingTracker.EndingEnum.TENTACLE_BAIT },
				
				#does have food
				100: { "speaker": "none", "dialogue": "The room is dim, lit only by that single, flickering blue light. A simple light for a simple room, though the colour makes it feel less like waking life and more like some strange dream-state that you've fallen into.", "goto": 101 },
				101: { "speaker": "", "dialogue": "In front of you is a massive hole in the ground - it looks like a water well, but it's truly enormous size leaves you wondering if this is some sort of paved over sink hole. However it got here in the first place, you can see the stone is clearly kept clean and the place free of lichen and dust - the closest thing to mess is the slick on the edge of the hole.", "goto": 102 },
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
				300: { "speaker": "", "dialogue": "Getting between a... Tentacle monster? Whatever the hells that thing is- Getting between it and it's food sounds like a recipe for disaster.", "goto": 301 },
				301: { "speaker": "", "dialogue": "With a deft heft, you send the bucket flying - before it can clang noisily to get ground, you watch another tentacle snap it out of the air like a well trained dog.", "goto": 302 },
				302: { "speaker": "", "dialogue": "The bucket is drawn down into the dark, along with the single searching tentacle you saw. Not a few momnets later the bucket is kicked into some obscure corner of the room - the sweet scent on the air intensifies even more.", "goto": 303 },
				303: { "speaker": "", "dialogue": "And as that smell intensifies the well [i]blooms[/i] open. Tentacle after tentacle unfurls from the dark, curling into the air like some sort of exotic coral. They swirls and coil in the air, an endless cycling pattern. It's... Almost beautiful?", "goto": 304 },
				304: { "speaker": "", "dialogue": "Despite its clear size and strength advantage - a baffling thing to say as a [i]Divine's Chosen[/i] - it seems to be in no rush to overpower you.
				You daresay it might even be trying to impress you. Huh.", "end": true },
				
				#FUCK! THAT! SQUID!
				400: { "speaker": "", "dialogue": "Testing this", "loadDifferentConvo": "test", "end": true },
		},							
	
	"test": {
				1: { "speaker": "none", "dialogue": "%wsA mysterious hole.%ws", "completelyCentered": true, "end": true }
		},			
}
