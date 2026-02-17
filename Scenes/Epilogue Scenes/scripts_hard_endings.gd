extends Node

class_name hardEndings

static var endingsDict = {
	"": 
	{
		1: { "speaker": "none", "dialogue": "Oops! Ending wasn't defined.", "END_OF_GAME": true }
	},
	
	#Ending 1 - Captured. Leave the witch's house. True bad end.	
	"Captured": 
	{
		1: { "speaker": "none", "dialogue": "Ending 1 - Captured.", "END_OF_GAME": "hardEnding_bad" }
	},
	
	#Ending 4 - Desperate Milkings. Hard cow end.
	"DesperateMilkings": 
	{
		1: { "speaker": "none", "dialogue": "Ending 4 - Desperate Milkings.", "END_OF_GAME": "hardEnding_cow" }
	},	
	
	#Ending 6 - Marked and Heeled. Enthralled hard end.
	"MarkedAndHeeled": 
	{
		1: { "speaker": "none", "dialogue": "Ending 6 - Marked and Heeled.", "END_OF_GAME": "hardEnding_demon" }
	},		
	
	#Ending 8 - Ignus' Bitch. Present to Ignus after letting him eat you out.
	"IgnusBitch": 
	{
		1: { "speaker": "none", "dialogue": "Ending 8 - Ignus' Bitch.", "END_OF_GAME": "hardEnding_pet" }
	},		

	#Ending 9 - Tentacle Bait. Struggle against the tentacle pit.
	"TentacleBait": 
	{
		1: { "speaker": "none", "dialogue": "Ending 9 - Tentacle Bait.", "END_OF_GAME": "hardEnding_tentacleBait" }
	},				
	
}
