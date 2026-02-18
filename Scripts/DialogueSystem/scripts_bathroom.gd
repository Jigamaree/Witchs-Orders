extends Node

class_name bathroomConvos

static var convos_Dict = {
	
	#2 lane 
	"bandages":{
		1: { "speaker": "", "dialogue": "[Bandage dialogue goes here.]", "end": true },		
	},
	
	#1 lane
	"bath":{
		1: { "speaker": "", "dialogue": "This bath is god-damn [i]huge[/i].", "goto": 2 },
		2: { "speaker": "", "dialogue": "You don't know the last time you saw one this big - at a noble's house, perhaps? It was certainly a luxury too rich for your blood, even as one of the Divine's chosen.",  "goto": 3 },
		3: { "speaker": "", "dialogue": "This one however seems to be... Moving? No- [i]self-cleaning[/i]. You watch for a few moments as the murky water swirls, streaks of dirt and blood streaked under the soapy surface. It's almost hypnotic, and it's that thought that makes you tear your eyes away.",  "goto": 4 },
		4: { "speaker": "", "dialogue": "You have better things to do than lose time to this.", "end": true },								
	},
	
	#complex
	"mirror":{
		1: { "speaker": "", "dialogue": "[Mirror dialogue goes here.]", "end": true },		
	},	
	
	#2 lane
	"pestle":{
		1: { "speaker": "", "dialogue": "[Pestle dialogue goes here.]", "end": true },		
	},		
	
	#1 lane
	"plantWindow":{
		1: { "speaker": "none", "dialogue": "This stained glass window matches the two in the bedroom. It displays a seedling, freshly renewed from the rain falling from above.", "goto": 2 },
		2: { "speaker": "none", "dialogue": "The craftsmanship is inpeccable - and not worth the time to break.", "end": true } 
		},
	
	#1 lane
	"toilet":{
		1: { "speaker": "", "dialogue": "This place has plumbing? Damn. Witches live better than you expected them to - this one does, anyway.", "end": true },		
	},
	
	#1 lane
	"towel":{
		1: { "speaker": "", "dialogue": "An exceptionally large, fluffy towel. It's currently still damp, with a few miscellaneous scuffs of blood and dirt on it.", "end": true },		
	},				
	
	#3 lane (before taking shirt, after taking shirt, already dressed)
	"VanityLeft":{
		1: { "speaker": "", "dialogue": "[Left side of vanity dialogue goes here.]", "end": true },		
	},		
	
	#short tree (before reading book, before taking furnacefern, after taking fernace furn)
	"VanityRight":{
		1: { "speaker": "", "dialogue": "[Right side of vanity dialogue goes here.]", "end": true },		
	},		
		
		
}

 
