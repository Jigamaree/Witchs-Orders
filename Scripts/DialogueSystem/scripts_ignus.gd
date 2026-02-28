extends Node

class_name IgnusConvos

static var convos_Dict = {
	"": {
			0: { "checkSaveConditions": [
			{ "save_key": "lounge_knowIgnusTalks", 				 "goto": 50 },
			{ "save_key": "", 									 "goto": 1 },		
			]},
			1: { "speaker": "", "dialogue": "The sleeping creature is bigger than a horse - gives off more heat than one too. Even being this close you can feel a soft heat coming off it - there's a scent of smoke that clings to its fur, along with something darker. The tang of blood, perhaps?", "goto": 2 },
			2: { "speaker": "", "dialogue": "As you think you realise that one of the creature's eyes are open, lazily watching you.", "choice": {
						"c1": { "choice": "Back the fuck off", "goto": 10 },
						"c2": { "choice": "Tell him he's a good boy", "goto": 20 },
						"c3": { "choice": "Say hello", "goto": 40 },						
						}
				},
			10: { "speaker": "", "dialogue": "You swiftly move away from the large hellhound before you can piss the beast off. You have no interest in you, yourself, becoming Ignus' dinner.", "goto": 4 },	

			20: { "speaker": "MC", "dialogue": "Nice dog. Niiiiice dog. I don't want to hurt you!", "goto": 21 },
			21: { "speaker": "Ignus", "dialogue": "There's no need to be demeaning, you know.", "goto": 22 },
			22: { "speaker": "MC", "dialogue": "...Oh.", "goto": 43 },		
			
			40: { "speaker": "", "dialogue": "The hellhound gives you a wolfish grin.", "goto": 41 },
			41: { "speaker": "Ignus", "dialogue": "Greetings.", 
			"setSaveVariable": ["lounge_knowIgnusTalks", true], "goto": 42 },		
			42: { "speaker": "", "dialogue": "Huh. You weren't expecting that to work.", "goto": 43 },
			
			43: { "speaker": "", "dialogue": "It seems, however, that Ignus is both capable of speech, and interest in talking to you, if the watchful red of his eyes is anything to go by.", 			
			"setSaveVariable": ["lounge_knowIgnusTalks", true], "IgnusChoice": true },
			
			 50: { "speaker": "", "dialogue": "Ignus sits up as you approach once more. If you have questions, he seems at least nominally interested in answering them.", "IgnusChoice": true },
			
			###pet him!
			100: { "speaker": "", "dialogue": "You reach out a hand towards his head. Half of you expects him to shift away, denounce the the action as demeaning. Instead he rumbles low in his throat, pushing into the offered affection.", "goto": 101 },
			101: { "speaker": "", "dialogue": "The fur is wiry to first touch, coarse in a satisfying way. As you dig your fingers into it though you brush against the plush undercoat. 
			Oh- oh that’s exactly what you needed.", "goto": 102 },
			102: { "speaker": "", "dialogue": "Your fingers work around to the back of Ignus’ head, working into the thick fluff there. The rumble coming from the hellhound only gets louder under your ministrations, the lights of his eyes winking out once more as he luxuriates in your touch.", "goto": 103 },
			103: { "speaker": "", "dialogue": "The two of you stay like that for several minutes; you kneading into the thick fur, Ignus leaving quietly into the petting. Nothing passes between you, the silence filled by the distant birdsong outside and the sound of your joint breaths.", "goto": 104 },
			104: { "speaker": "", "dialogue": "You… can breathe easier now, actually. You’ve been running panicked since you woke up; this feels like the first point you’ve truly been able to catch your breat", "goto": 105 }, 
			105: { "speaker": "", "dialogue": "It’s nice. As you pull away, the satisfied look Ignus gives you makes you believe he enjoyed this just as much as you.", 
			"setSaveVariable": ["lounge_petIgnusOnce", true], "IgnusChoice": true },			
			
			###Are you trapped here?
			200: { "speaker": "Ignus", "dialogue": "Does this look like a life of toil and woe to you, darling?", "goto": 201 },
			201: { "speaker": "", "dialogue": "The hellhound stretched out on the large, plush pillow underneath him, yawning long and wide. His tongue lolls out of his maw; for an angle that gives you sighting of so many teeth you’ve never felt so… unthreatened.", "goto": 202 },
			202: { "speaker": "MC", "dialogue": "I suppose not. People can be trapped without being chained though.", "goto": 203 },
			203: { "speaker": "Ignus", "emote": "headtilt", "dialogue": "You’d know working under the Divine, wouldn’t you?", "goto": 204 },
			204: { "speaker": "MC", "dialogue": "Watch your tone, hound.", "goto": 205 },
			205: { "speaker": "Ignus", "dialogue": "Or what - you're going to put me in my place? Make me beg?", "goto": 206 },
			206: { "speaker": "Ignus", "emote": "pleased", "dialogue": "Try it. I'd love to see your face when you're the one begging instead.", "choice": {
								"c1": { "choice": "Don't poke the bear", "goto": 207 },
								"c2": { "choice": "Push it", "goto": 888 },
						}
			 },
			207: { "speaker": "", "dialogue": "You go to retort, the biting words hot on your tongue - but catch yourself. Maybe you shouldn’t argue with the creature that not only lives here, but is significantly more armed than you are.", "IgnusChoice": true },
			
			###why tho
			300: { "speaker": "Ignus", "dialogue": "Because she wanted to.", "goto": 301 },
			301: { "speaker": "MC", "dialogue": "Don't be a smartass and answer the question.", "goto": 302 },
			302: { "speaker": "Ignus", "dialogue": "I am. It's not my fault if you don't believe me.", "goto": 303 },
			303: { "speaker": "", "dialogue": "Ignus stretches out his paws in front of him, easy as anything. You're used to your stare being something that makes a man sweat, break under the weight of it. Ignus, however, is able to meet it easily.", "goto": 304 },
			304: { "speaker": "Ignus", "dialogue": "You want me to tell you it’s because you’re special? The chosen one? That she sees greatness in your future?", "goto": 305 },
			305: { "speaker": "Ignus", "emote": "headtilt", "dialogue": "Well you’re right - maybe.", "goto": 306 },
			306: { "speaker": "MC", "dialogue": "Stop fucking around.", "goto": 307 },
			307: { "speaker": "Ignus", "emote": "pleased", "dialogue": "Oh, you've got [i]spirit[/i], don't you?", "goto": 308 },
			308: { "speaker": "Ignus", "dialogue": "I’m not joking, you know. The lady of the house does see great things for you. You have potential. Power.", "goto": 309 },
			309: { "speaker": "Ignus", "dialogue": "But power is nothing without a worthy vessel and honed intentions. Considering your inclinations and repressions? My guess is it’s going to make you just the most marvelous sex toy.", "goto": 310 },
			310: { "speaker": "Ignus",  "emote": "pleased", "dialogue": "Maybe even my own.", "goto": 311 },
			311: { "speaker": "MC", "dialogue": "You’re a beast.", 
			"checkSaveVariable": { "keyToCheck": "ignus_fucked_ate_out", "wantedValue": "true", "goto_false": 312, "goto_true": 333 } },
			312: { "speaker": "Ignus", "dialogue": "And you don't know what you're missing out on.", "goto": 313 },
			313: { "speaker": "", "dialogue": "There's a fire in his eyes when he says that; a weight that's hungry and teasing and alive all at once. It makes you realise why so many people would fall to the temptation of demons; they have a way of getting under your skin. For now, you resist - and think on Ignus' words.", "IgnusChoice": true },
			
			333: { "speaker": "Ignus", "emote": "pleased", "dialogue": "And you adore it, don't you?", "goto": 334 },	
			334: { "speaker": "", "dialogue": "That heavy gaze pins you in place as the hellhound's tongue lolls out, making even your breath jitter to a halt in your chest. He shifts in place, and you can see the hard length of his cock against his stomach. He's tempting you - and you can't say that you're impervious.", "IgnusChoice": true },	
			
			#injured sk if you're the first injured person the witch has brought here
			400: { "speaker": "Ignus", "dialogue": "Of course not - and you won’t be the last. War will do that to a country.", "goto": 401 },
			401: { "speaker": "MC", "dialogue": "We’re not at war.", "goto": 402 },
			402: { "speaker": "Ignus", "emote": "headtilt", "dialogue": "Do you really believe that?", "checkSaveVariable": { "keyToCheck": "realise_shit_is_fucked", "wantedValue": "true", "goto_false": 403, "goto_true": 410 } },
					
			403: { "speaker": "MC", "dialogue": "Of course. I fought in a battle - if there was a war, I would have been set to the front lines of it.", "goto": 404 },
			404: { "speaker": "Ignus", "dialogue": "Is that how you got your eye scar? Being as dense as you look?", "goto": 405 },
			405: { "speaker": "MC", "dialogue": "I got it dealing to something uglier than you, hound.", "goto": 406 },
			406: { "speaker": "Ignus", "emote": "headtilt", "dialogue": "Sure you did, pup.", "goto": 407 },
			407: { "speaker": "Ignus", "dialogue": "Your 'God-King' cares about nothing except his own legacy and bloodline. If you're lucky, someday you'll learn that for yourself.", "goto": 408 },
			408: { "speaker": "", "dialogue": "You grit your teeth at the beast. You'll show him.", "IgnusChoice": true },
			
			410: { "speaker": "", "dialogue": "You go to snap back, but hesitate. Once upon a time you would have fiercely defended the regime... But that was before you had proof of how things had gone so wrong.
			The Saevii were never meant to be a threat.", "goto": 411 },
			411: { "speaker": "", "dialogue": "Sensing your hesitation, Ignus' face softens.", "goto": 412 },
			412: { "speaker": "Ignus", "emote": "serious", "dialogue": "Things have been rough for months, pup. With trade being fucked by the Saevii at the boarders, the only supplies are those coming in by sea - and the ports are siezing most of it for the Spire's use.", "goto": 413 },
			413: { "speaker": "Ignus", "emote": "serious", "dialogue": "People are starving - and the Saevii have been going after small town Salvekeepers, to boot. The only news out of the Spire on the matter has been to keep you as the Divine's Chosen close, to make sure he could save his own hide.", "goto": 414 },
			414: { "speaker": "Ignus", "dialogue": "With all that going on, you can't blame the lady for wanting to find stress relief during these times, hm?", "goto": 415 },			
			415: { "speaker": "", "dialogue": "It makes sense, but the though still sits like a weight in your stomach.", "IgnusChoice": true },			
			
			#foodLocation
			700: { "speaker": "", "dialogue": "Ignus seems to consider the question carefully, a sly smile playing against his mouth.", "goto": 701 },				
			701: { "speaker": "Ignus", "dialogue": "If you're wanting the food the Lady left for me, then that would be in the cellar.", "goto": 702 },
			702: { "speaker": "Ignus", "emote": "pleased", "dialogue": "But if you're here now, why do you have to leave? There's a perfectly acceptable way that you can feed me right here and now.", 
			"setSaveVariable": ["lounge_ignusWouldFuck", true], "goto": 703 },
			703: { "speaker": "", "dialogue": "His eyes drift down your body, drawing out a sharp spike of arousal that you didn't expect. It would feed him... But whether you want to put yourself at the hound's mercy is another thing entirely.", 
			"choice": {
						"c1": { "choice": "Tell Ignus to stand down", "goto": 704 },
						"c2": { "choice": "Let Ignus eat out", "goto": 800 },						
						}
				}, 
			704: { "speaker": "MC", "dialogue": "I'm good.", "goto": 705 },	
			705: { "speaker": "Ignus", "dialogue": "Your loss - but the offer stands, pup.", "IgnusChoice": true },			
			
			#whyCantYou?		
			500: { "speaker": "Ignus", "dialogue": "Because she asked you to feed me, not me to feed myself.", "goto": 501 },
			501: { "speaker": "MC", "dialogue": "You can clearly do it yourself.", "goto": 502 },
			502: { "speaker": "Ignus", "dialogue": "And maybe there's a reason I'm not, pup.", "goto": 503 },
			503: { "speaker": "", "dialogue": "The hellhound seems to smile to himself, a private joke you aren't in on. Seems like you're not getting more out of him than that.", "IgnusChoice": true },						
			
			800: { "speaker": "", "dialogue": "[Ignus eating out scene.]", "preloadConversation": "IgnusEatOut", "end": true},		
			
			666: { "speaker": "", "dialogue": "[Present to the hellhound; he claims you]", "playEnding": SaveData_EndingTracker.EndingEnum.IGNUS_BITCH },				
			888: { "speaker": "", "dialogue": "[Poked the bear; Ignus fucks and claims you in return]", "playEnding": SaveData_EndingTracker.EndingEnum.IGNUS_BITCH },
			
			#read potion poem
			900: { "speaker": "", "dialogue": "The hellhound considers your request - it seems for a moment he's going to give you shit, but surprisingly seems to choose otherwise.", "goto": 901 },
			901: { "speaker": "Ignus", "dialogue": "The poem isn't one to one with position. The first line of the poem gives you two positions, for example, while the second line of the poem is disregardable nonsense.", 
						"choice": {
								"c1": { "choice": "Thank Ignus for the help", "goto": 999 },
								"c2": { "choice": "Another hint?", "goto": 902 },
						}
				},			
			902: { "speaker": "Ignus", "dialogue": "The Lady is a woman of tantaric magic - for her, the start of things is about a kiss as much as it is a literal beginning. The end - well, I hope you know what a tantaric end is.",                        
			"choice": {
							"c1": { "choice": "Thank Ignus for the help", "goto": 999 },
							"c2": { "choice": "Another hint?", "goto": 903 },
						}
				},	
			903: { "speaker": "Ignus", "dialogue": "Angels are so sweet, aren't they? It would be a shame if, should one appear, some terrible demon corrupted them right afterwards. Why be next to the lovers when it could be next to the angel, instead?", 		
			"choice": {
							"c1": { "choice": "Thank Ignus for the help", "goto": 999 },
							"c2": { "choice": "Another hint?", "goto": 904 },
						}
				},	
			904: { "speaker": "Ignus", "dialogue": "Dance of the Fervored [b]One[/b] is in position four.", "goto": 905 },
			905: { "speaker": "", "dialogue": "Ignus settles down after that. It seems as if that's your final hint.", "end": true },
			
			999: { "speaker": "", "dialogue": "You leave the hellhound to his nap.", "end": true },							
		}, ####
		
}
