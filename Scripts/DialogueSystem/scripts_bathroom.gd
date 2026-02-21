extends Node

class_name bathroomConvos

### TODO: 
# - Mirror; including all possible states
# - pestle: has read book

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
	
	#TODO: either full implementation, or just generic
	"mirror":{
		1: { "speaker": "", "dialogue": "[Mirror dialogue goes here.]", "end": true },		
	},	

	###TODO: Pestle: Plant guide read.	
	"pestle":{
		0: {"checkSaveVariable": { "keyToCheck": "plant_guide_read", "wantedValue": "true", "goto_false": 1, "goto_true": 3 }},	
		#		
		1: { "speaker": "", "dialogue": "The mixture the mortar and pestle was used on has been left streaked on the worn stone. Some sort of healing tincure, perhaps? You know witches kept their freedoms by posing as Salvekeepers; medicinal folks that could treat pains both simple and complex.", "goto": 2 },
		2: { "speaker": "", "dialogue": "Before today, you would have called witches crooks, as any good Divine's Chosen would. The fact you're alive and breathing now makes you hesitate.", "end": true },
		
		3: { "speaker": "", "dialogue": "...", "end": true },						
	},		

	"plantWindow":{
		1: { "speaker": "none", "dialogue": "This stained glass window matches the two in the bedroom. It displays a seedling, freshly renewed from the rain falling from above.", "goto": 2 },
		2: { "speaker": "none", "dialogue": "The craftsmanship is inpeccable - and not worth the time to break.", "end": true } 
		},
	
	"toilet":{
		1: { "speaker": "", "dialogue": "This place has plumbing? Damn. Witches live better than you expected them to - this one does, anyway.", "end": true },		
	},
	
	"towel":{
		1: { "speaker": "", "dialogue": "An exceptionally large, fluffy towel. It's currently still damp, with a few miscellaneous scuffs of blood and dirt on it.", "goto": 2 },
		2: { "speaker": "none", "dialogue": "Given the state of yourself, you're pretty sure it's your own.", "end": true }		
	},				

	#furnancefern 
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

 
