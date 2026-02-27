extends Node

class_name IgnusConvos

static var convos_Dict = {
	"": {
			0: { "checkSaveConditions": [
			{ "save_key": "ignus_fucked_ate_out", 				 "goto": 400 },			
			{ "save_key": "ignus_fed", 							 "goto": 300 },
			{ "save_key": "lounge_knowIgnusTalks", 				 "goto": 200 },
			{ "save_key": "lounge_firstIgnusInteractionDone",	 "goto": 100 },	
			{ "save_key": "", 									 "goto": 1 },		
			]},
			1: { "speaker": "", "dialogue": "The sleeping creature is bigger than a horse - gives off more heat than one too. Even being this close you can feel a soft heat coming off it - there's a scent of smoke that clings to its fur, along with something darker. The tang of blood, perhaps?", "goto": 2 },
			2: { "speaker": "", "dialogue": "As you think you realise that one of the creature's eyes are open, lazily watching you.", "choice": {
						"c1": { "choice": "Back the fuck off", "goto": 10 },
						"c2": { "choice": "Tell him he's a good boy", "goto": 20 },
						"c3": { "choice": "Say hello", "goto": 40 },						
						}
				},
			10: { "speaker": "", "dialogue": "You swiftly move away from the large hellhound before you can piss the beast off. You have no interest in you, yourself, becoming Ignus' dogfood.", "goto": 4 },	

			20: { "speaker": "MC", "dialogue": "Nice dog. Niiiiice dog. I don't want to hurt you!", "goto": 21 },
			21: { "speaker": "Ignus", "dialogue": "There's no need to be demeaning, you know.", "goto": 22 },
			22: { "speaker": "MC", "dialogue": "...Oh.", "end": true },		
			
			40: { "speaker": "", "dialogue": "The hellhound gives you a wolfish grin.", "goto": 41 },
			41: { "speaker": "Ignus", "emote": "pleased", "dialogue": "Greetings.", "goto": 42 },		
			42: { "speaker": "", "dialogue": "Huh. You weren't expecting that to work.", "goto": 43 },
			
			43: { "speaker": "", "dialogue": "It seems, however, that Ignus is both capable of speech, and interest in talking to you, if the watchful red of his eyes is anything to go by.", "end": true },				
		}, ####
		
}
