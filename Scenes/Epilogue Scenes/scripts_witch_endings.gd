extends Node

class_name witchEndings

static var endingsDict = {
	"": 
	{
		1: { "speaker": "none", "dialogue": "", "preloadConversation": "bimbo", "end": true }
	},
	
	"true_bimbo_ending":
		#specialEnding_didNothing
	{
		1: { "speaker": "none", "dialogue": "True bimbo ending!",
		"setSaveVariable": ["specialEnding_didNothing", true], 
		"preloadConversation": "BetterNotToThink", "end": true },
	},		

#acknowledge keys aren't enough to escape this
	"BetterNotToThink":
	{
		1: { "speaker": "none", "dialogue": "Bimbo ending!", "END_OF_GAME": "softEnding_bimbo" }			
	}
	
}
