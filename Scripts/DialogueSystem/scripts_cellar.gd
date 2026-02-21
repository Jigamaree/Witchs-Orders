extends Node

class_name CellarConvos

static var convos_Dict = {
	"Boxes": {
		1: { "speaker": "none", "dialogue": "A good many wooden crates are stacked up in the back of this cellar. As you look through the contents though, you realise that most of them are empty - the few things left are hardly the makings of a meal. Oils, a few spices, a bag of salt.", "goto": 2 },
		2: { "speaker": "", "dialogue": "You'd heard that the Saevii forces had shut down the trade routes, but you'd been told the people were being fed - why would the God-King not feed his own people? But seeing the lack of supplies here.... It leaves an uncomfortable feeling twisting in your stomach.", "end": true },
		},
		
	"Cheese": {
		1: { "speaker": "none", "dialogue": "Cheese dialogue goes here.", "end": true }
		},	
		
	"EmptyShelves": {
		1: { "speaker": "none", "dialogue": "You can tell these shelves would be where more pantry staples should be. Jams, honey, maybe even some pickles or canned meals. Instead, nothing but a thin layer of dust greets you.", "goto": 2 },
		2: { "speaker": "", "dialogue": "You want to blame this on the witch being disorganised - but witches are known for their capacity to hide amongst the commonfolk. If there was food to be had, she would have just as much capacity to get it as any other civilian... The fact there's nothing here worries you.", "end": true },
		},
	
	"MeatHook": {
		1: { "speaker": "none", "dialogue": "Meat hook dialogue goes here.", "end": true }
		},
	
	"Milk": {
		1: { "speaker": "none", "dialogue": "Milk dialogue goes here.", "end": true }
		},
	
	"Sacks": {
		1: { "speaker": "none", "dialogue": "Sack dialogue goes here.", "end": true }
		},				
	
	"SeedHook": {
		1: { "speaker": "none", "dialogue": "Seed hook dialogue goes here.", "end": true }
		},	
}
