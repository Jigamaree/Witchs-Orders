extends Node

class_name LoungeConvos

static var convos_Dict = {
	"": {
		1: { "speaker": "none", "dialogue": "Hello! You didn't put a thing in!", "end": true }
		},
	
	"firstEntry":{
		1: { "speaker": "", "dialogue": "You freeze as you enter the room - the sound of slow, heavy breathing fills the air, from a creature many times your size. Best be careful - or leave out the front door, before it can see you.", "setSaveVariable": ["lounge_enteredFirstTime", true], "end": true }
	},	
	
	#wait for witch here	
	"rightArmchair": {
		1: { "speaker": "", "dialogue": "Right armchair dialogue goes here.", "end": true},
		}, 
					
	"leftArmchair": {
			1: { "speaker": "", "dialogue": "While this looks just like the other armchair, there's a firmness to the stuffing and crispness to the leather that makes it feel unusued. Guess the witch has a favorite chair.", "end": true },
		}, 
	
	#complex			
	"CoffeeTable": {
		0: {"checkSaveVariable": { "keyToCheck": "armour_interracted", "wantedValue": "true", "goto_false": 1, "goto_true": 100 }},		
		1: { "speaker": "", "dialogue": "You have not interacted with the armour yet.", "end": true},
		100: { "speaker": "", "dialogue": "This has been seen.", "end": true},		
		}, 
					
	"WateringCanTable": {
		1: { "speaker": "", "dialogue": "Watering can table dialogue goes here.", "end": true},
		}, 
					
	"Saplings": {
		1: { "speaker": "", "dialogue": "This shelf has a variety of saplings parked on it. All different sizes, colours and varieties make for quite the impressive display. It doesn't seem like any plant type is an obstacle.", "end": true},
		}, 
							
	"Bowls": {
		0: {"checkIgnusState": {
			"goto_fucked": 10, 
			"goto_fed": 20, 
			"goto_canfeed": 30, 
			"goto_cantfeed": 40 }},	
			
		##eaten out by Ignus
		10: { "speaker": "", "dialogue": "Ignus' food and water bowls are here. As you look them over you watch as the hellhound pins you with his gaze, before licking his lips. Slowly. That damn tongue moves intentionally through the air, flicking at the end deftly. All the while his eyes stay pinned on you - knowing. [i]Goading.[/i]", "goto": 11 },
		11: { "speaker": "", "dialogue": "He is fed, sure. But it seems Ignus would not mind having seconds. Or thirds. Or, you suspect, throwing out the metaphor entirely and soothing the ache in your cunt properly.", "end": true },
		
		#fed, not fucked
		20: { "speaker": "", "dialogue": "There's not a crumb left of food - you realise that Ignus is watching you as you look over the now-clean bowl. His attention feels like a weight, and makes you squirm.", "end": true },
		
		#not fed, but can now
		30: { "speaker": "", "dialogue": "Ignus' food and water bowls are here - while the water is filled, the food bowl is empty. The hellhound seems to be keeping a careful eye on the meat in your hand, but makes no move to take it from you. How... Polite.", "choice": {"c1": {"choice": "Feed the hound.", "goto": 31 }, "c2": { "choice": "Don't feed him just yet.", "goto": 32 } } },
		
		31: { "speaker": "", "dialogue": "You feed Ignus the dog food.", 		
		"setSaveVariable": ["ignus_fed", true], "end": true },
		32: { "speaker": "", "dialogue": "You don't feed Ignus the food.", "end": true },		 	
		
		#not fed, cant feed
		40: { "speaker": "", "dialogue": "This appears to be the hellhound's water and food bowls. While the water bowl is filled, the food bowl is empty.", "goto": 41 },
		41: { "speaker": "", "dialogue": "Good to know where this is - now, time to find the food.", "end": true },		
		},
		 
	"Fireplace": {
		1: { "speaker": "", "dialogue": "Fireplace dialogue goes here.", "end": true},
		},
					
	"Dishes": {
		1: { "speaker": "", "dialogue": "Dishes dialogue goes here.", "end": true},
		},					
	"OtherChair": {
		1: { "speaker": "", "dialogue": "Chair dialogue goes here.", "end": true},
		},
	"WitchChair": {
		1: { "speaker": "", "dialogue": "Witch's chair dialogue goes here.", "end": true},
		},							
}
