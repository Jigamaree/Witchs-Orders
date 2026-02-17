extends Node

class_name bathroomConvos

static var convos_Dict = {
	
	#2 lane 
	"bandages":{
		1: { "speaker": "", "dialogue": "[Bandage dialogue goes here.]", "end": true },		
	},
	
	#1 lane
	"bath":{
		1: { "speaker": "", "dialogue": "[Bath dialogue goes here.]", "end": true },		
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
		1: { "speaker": "", "dialogue": "[Toilet humour goes here.]", "end": true },		
	},
	
	#1 lane
	"towel":{
		1: { "speaker": "", "dialogue": "[Towel dialogue goes here.]", "end": true },		
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

 
