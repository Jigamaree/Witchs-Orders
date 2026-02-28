extends Node

class_name bathroomConvos

static var convos_Dict = {
	
	"bandages":{
		1: { "speaker": "", "dialogue": "The mess of bandages tells a story - the ending of which is currently strapped against your chest. ", "goto": 2 },
		2: { "speaker": "", "dialogue": "You have a sneaking suspicion that if they weren't there, you wouldn't have woken up... But that doesn't give you any better insight as to why you're here in the first place.", "end": true }			
	},
	
	"bath":{
		1: { "speaker": "", "dialogue": "This bath is god-damn [i]huge[/i].", "goto": 2 },
		2: { "speaker": "", "dialogue": "You don't know the last time you saw one this big - at a noble's house, perhaps? It was certainly a luxury too rich for your blood, even as one of the Divine's chosen.",  "goto": 3 },
		3: { "speaker": "", "dialogue": "This one however seems to be... Moving? No- [i]self-cleaning[/i]. You watch for a few moments as the murky water swirls, streaks of dirt and blood streaked under the soapy surface. It's almost hypnotic, and it's that thought that makes you tear your eyes away.",  "goto": 4 },
		4: { "speaker": "", "dialogue": "You have better things to do than lose time to this.", "end": true },								
	},
	
	"mirror":{
		0: { "checkCurrentCorruption": [
		{ "condition_type": SaveData_CurrentGame.Corruption_Type.NONE, "goto": 10 },
		{ "condition_type": SaveData_CurrentGame.Corruption_Type.IMP, "goto": 20 },		
		{ "condition_type": SaveData_CurrentGame.Corruption_Type.COW, "goto": 30 },
		{ "condition_type": SaveData_CurrentGame.Corruption_Type.PET, "goto": 40 },		
		{ "condition_type": SaveData_CurrentGame.Corruption_Type.APPRENTICE, "goto": 50 },	
		{ "condition_type":  SaveData_CurrentGame.Corruption_Type.UNDEFINED, "goto": 60 },				
		]},
		
		#no corruptions
		10: { "speaker": "", "dialogue": "It's you! You look at yourself in the mirror, all too familiar with the woman staring back. The scars across your toned body tell the story of war, each puckered mark and gash a reminder that your life is not a sure-given thing in this world.", "goto": 11 },
		11: { "speaker": "", "dialogue": "It is a weapon, one you've trained yourself to rely on, to depend on every bit as the sharp mind behind your eyes.", "goto": 12 },
		12: { "speaker": "", "dialogue": "And yet... You know the magic of witches, of their capacity to take and twist and change. It might be worth coming back to check on yourself here occasionally, just to make sure you're still you.", "goto": 13 },
		13: { "speaker": "", "dialogue": "Anything to make sure you don't lose your mind in a place like this.", "end": true },
		
		#Imp corruption
		20: { "speaker": "", "dialogue": "You look over yourself in the mirror - cock out your hip as you do. Damn, you look good! You've always been an attractive woman, with your toned body and tousled auburn hair - but you're appreciating it in yourself all the more right now.", "goto": 21 },
		21: { "speaker": "", "dialogue": "There's something different about yourself - a flash of gold in the eyes, maybe? A extra hour-shaped kiss to your hips? Whatever it is, it makes you feel all the more cheeky, all the more sure in yourself. ", "goto": 22 },
		22: { "speaker": "", "dialogue": "That witch won't know what hit her.", "end": true },
		
		#cow corruption
		30: { "speaker": "", "dialogue": "You take a moment to stare at yourself in the mirror... Maybe a few more than you expect. Time has gotten hazy-daisy around the edges, a pleasant fog over your mind that you can't bring yourself to do much more than nominally notice.", "goto": 31 },
		31: { "speaker": "", "dialogue": "There's a softness to your body that you haven't seen before - a plushness that shows itself in your thighs, in your stomach, and especially in your tits. You hands pass over them absentmindedly; when you brush a nipples and a dull pleasant ache vibrates out from that point? Oh, the low, lazy sound of pleasure you make in return is so pleasurable in itself.", "goto": 32 },
		32: { "speaker": "", "dialogue": "You're a fighter, a burning arrow seeking its target, burning brilliant bright. Some part of you is shocked at how easy you've become placid and easy. And yet... you could get used to this.", "end": true },
		
		#pet corruption
		40: { "speaker": "", "dialogue": "You glance at yourself in the mirror - double take. Is it just you or do you look... Cute? It's a strange thing to realise, makes you fiddle with the hem of your clothing. You're one of the most brilliant warriors of this land usually, a avatar of death armed with a shining gold sword... And yet right now there's something quiet about your appearance. Sweet.", "goto": 41 },
		41: { "speaker": "", "dialogue": "Is it the way your eyes glimmer brightly, the way your pupils looks like a slitted cat's? How it looks like you have pointed ears buried in the mess of your hair? Or maybe even the glimpse of tiny fangs in your mouth? It might be any of them, really.", "goto": 42 },
		42: { "speaker": "", "dialogue": "You wonder if the witch will like what she sees.", "end": true },
		
		#apprentice
		50: { "speaker": "", "dialogue": "Despite everything, its still you. The same auburn hair, the same scar over one eye, the same intense gaze few have been able to handle. ", "goto": 51 },
		51: { "speaker": "", "dialogue": "There are changes though, striking ones. Your eyes glow a soft purple in the mirror as you watch yourself, a smokey colour that matches the enchanted sheen of the piercings on your nipples. Most striking of all is the Blaschko's lines on your body, now made visible thanks to the newly awakened magic in your veins. You look [i]good[/i] with them on - it's a nice feeling.", "goto": 52 },
		52: { "speaker": "", "dialogue": "Now - to prove to the witch you truly are meeting her as an equal.", "end": true },
		
		# Undefined
		60: { "speaker": "", "dialogue": "You squint at yourself in the mirror. It's you, sure, but... Something is off. You've heard that can happen sometimes - people looking at their true reflection, or at themselves post amputation finding them unable to quite connect the person in the mirror with the person they are.", "goto": 61 },
		61: { "speaker": "", "dialogue": "The issue is figuring out what's different about you, though - is it your eyes? Your hair? The way you hold yourself? It gnaws at you like a rat at the foundations, making you avert your gaze.", "goto": 62 },
		62: { "speaker": "", "dialogue": "One thing's for sure; you aren't the same woman that came in here. You're changed, fundamentally and irreversibly by the magic that's seeped into this place - but exactly the final form of that is truly anybody's guess.", "end": true },			
	},

	"pestle":{
		0: {"checkSaveVariable": { "keyToCheck": "plant_guide_read", "wantedValue": "true", "goto_false": 1, "goto_true": 3 }},	
		#		
		1: { "speaker": "", "dialogue": "The mixture the mortar and pestle was used on has been left streaked on the worn stone. Some sort of healing tincure, perhaps? You know witches kept their freedoms by posing as Salvekeepers; medicinal folks that could treat pains both simple and complex.", "goto": 2 },
		2: { "speaker": "", "dialogue": "Before today, you would have called witches crooks, as any good Divine's Chosen would. The fact you're alive and breathing now makes you hesitate.", "end": true },
		
		3: { "speaker": "", "dialogue": "Armed with new knowledge, you're able to look at the remnants left on this pestle with more scrutiny. The blue colour of it - that'd be Dewberry, wouldn't it? The plant apparently has quite the powerful disinfectant effect. The strong cinnamon and citrus scent of it as well seems to be attributed to Dragonclaw - if your wound was caused by a Poison Drake, that was certainly explain its addition.", "goto": 4 },
		4: { "speaker": "", "dialogue": "How interesting!", "end": true },					
	},		

	"plantWindow":{
		1: { "speaker": "none", "dialogue": "This stained glass window matches the two in the bedroom. It displays a seedling, freshly renewed from the rain falling from above. You wonder how you can water a plant here...", "goto": 2 },
		2: { "speaker": "none", "dialogue": "The craftsmanship is inpeccable - and not worth the time to break.", "end": true } 
		},
	
	"toilet":{
		1: { "speaker": "", "dialogue": "This place has plumbing? Damn. Witches live better than you expected them to - this one does, anyway.", "end": true },		
	},
	
	"towel":{
		1: { "speaker": "", "dialogue": "An exceptionally large, fluffy towel. It's currently still damp, with a few miscellaneous scuffs of blood and dirt on it.", "goto": 2 },
		2: { "speaker": "none", "dialogue": "Given the state of yourself, you're pretty sure it's your own.", "end": true }		
	},				

	"VanityRight":{
		0: {"checkSaveVariable": { "keyToCheck": "plant_guide_read", "wantedValue": "true", "goto_false": 1, "goto_true": 20 }},	
		# havent read book
		1: { "speaker": "", "dialogue": "The plant on this side of the vanity looks like some sort of fern, the ends of it coloured a vibrant orange. It curls towards the light coming from the stained glass window.", "end": true },		
		20: { "speaker": "", "dialogue": "Furnace fern – the appearance of the plant is too striking to mistake it as anything else. It makes sense to find it here; the humid environment, low light of the bathroom indeed seems to have it growing quite happily. Not to mention a quick rub of its fronds between the fingers would see to poor smells.",
		"checkSaveVariable": { "keyToCheck": "bathroom_furnaceFern", "wantedValue": "true", "goto_false": 21, "goto_true": 24 }},	
		#have read book, have not aquired frond
		21: { "speaker": "", "dialogue": "Having some on you could be quite useful.", 
		"choice": {"c1": {"choice": "Take a frond.", "goto": 23 }, "c2": { "choice": "Leave it.", "goto": 22 } } },	
		22: { "speaker": "", "dialogue": "You'd rather not carry this around right now.", "end": true },
		23: { "speaker": "", "dialogue": "The baby frond you select - no larger than your finger - snaps off easily in your hand. The call of warmth - or plain arson - now sits neatly in your hands. You suspect one of these calls is better listened to than the other.", 
		"setSaveVariable": ["bathroom_furnaceFern", true],
		"end": true },
		24: { "speaker": "", "dialogue": "You don't have any further use for it right now.", "end": true },											
	},		
	
	"VanityLeft":{
		#pre-clothing
		0: {"checkSaveVariable": { "keyToCheck": "knight_clothed", "wantedValue": "true", "goto_false": 1, "goto_true": 20 }},		
		1: { "speaker": "", "dialogue": "The sunny yellow flowers on this side of the vanity are quite beautiful. Still, they’re not the focus of your attention as you rummage. ", "goto": 2 },
		2: { "speaker": "", "dialogue": "Your attention is drawn to the white cloth slung over the drawer. Shaking it out, you see it to be a plain poet’s shirt, made of a white linen that feels crisp, yet soft in the hands. To say you’d be adequately dressed to your standards wearing this would be an understatement. It’s not long enough to cover your ass, and the neckline would dip drastically between your cleavage.", "goto": 3 },
 		3: { "speaker": "", "dialogue": "Then again, anything less than your full set of armour wouldn’t feel like enough after all your years marching under the Divine’s banner – and for the circumstances you’ve found yourself in, it feels like a blessedly normal thing to wear.", "choice": {"c1": {"choice": "Put on the poet's shirt.", "goto": 5 }, "c2": { "choice": "Put the shirt back.", "goto": 4 } } },
 		4: { "speaker": "", "dialogue": "You put the shirt back where you found it. There must be other options… Right?", "end": true },
 		5: { "speaker": "", "dialogue": "Making up your mind, you pull the shirt on. The linen is as comfortable worn as it was in your hands, and the cuffs button around your wrists snug, yet comfortable. It’s no suit of armour, but even just some nominal pressure against your body soothes a part of you.", 
		"setSaveVariable": ["knight_clothing", SaveData_CurrentGame.Clothing.POET_SHIRT], 
		"checkSaveVariable": { "keyToCheck": "bedroom_testedTheDoor", "wantedValue": "true", "goto_false": 6, "goto_true": 7 }},
 		6: { "speaker": "", "dialogue": "As you run your hands down the fabric, you hear a crackling fizz from the other room. Wonder what that was about?", "end": true },
 		7: { "speaker": "", "dialogue": "As you run your hands down the fabric, you hear a crackling fizz from the other room. The door! Even if this would not pass as clothing in any sort of polite company, it’s clearly enough for the current circumstances. That’s… Something, at least.", "end": true },		
		#post-clothing
 		20: { "speaker": "", "dialogue": "The bright yellow flowers here fill you with determination.", "goto": 21 },
 		21: { "speaker": "", "dialogue": "…To continue to figure out what the fuck is going on, here.", "end": true },		
  				
	},		
		
		
}

 
