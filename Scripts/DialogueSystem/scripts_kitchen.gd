extends Node

class_name kicthenConvos

static var convos_Dict = {					
	"Book": {
		1: { "speaker": "", "dialogue": "The recipe book on the counter seems to be handwritten - it’s turned to a page noting a dandelion summer salad with vinegar and herbs. While the ingredient note it serves one, the large bowl next to you implies that the recipe is likely being scaled up..", "end": true},
		}, 
					
	"BubbleSink": {
		1: { "speaker": "", "dialogue": "The sink still has a thick layer of bubbles in it, though the water itself is now barely tepid.", "end": true},
		}, 
					
	"ButterAndSpices": {
		0: { "checkSaveVariable": { "keyToCheck": "knight_fed", "wantedValue": "true", "goto_false": 2, "goto_true": 1 }},
		#just description
		1: { "speaker": "", "dialogue": "A collection of spices, herbs and other seasoning accoutrements are sprawled across the counter here. You’re well travelled under the Radiance’s banner, but even you fail to name all the spices presented to you.", "end": true},
		#oh hey, its butter		
		2: { "speaker": "", "dialogue": "A collection of spices, herbs and other seasoning accoutrements are sprawled across the counter here. You’re well travelled under the Radiance’s banner, but even you fail to name all the spices presented to you.", "goto": 3},		
		3: { "speaker": "", "dialogue": "None of these will make a fitting meal on their own, though the butter looks decadently creamy in a way that already makes your mouth water.", "end": true},		
		
		}, 
					
	"CuttingBoard": {
		1: { "speaker": "", "dialogue": "A cutting board and knife sit ready for food preparations. You consider taking the knife for protection - and then think about the massive hound outside the door. Not to mention what magics the witch herself is capable of... You’re not sure this would go how you would want it to.", "end": true},
		}, 
					
	"Dishes": {
		1: { "speaker": "", "dialogue": "Some dishes sit on the drying rack, still shiny from their rinse. Beats rummaging around in cupboards to find things, you suppose.", "end": true},
		}, 
					
	"Mixer": {
		1: { "speaker": "", "dialogue": "This strange contraption on the bench looks perfect for mixing food - at least, you suspect that’s its function, considering the spray of flour across the counter. Glowing threads on its body light up as you look it over, betraying some sort of arcane mechanism for power.", "goto": 2 },
		2: { "speaker": "", "dialogue": "Any other days this would be grounds for arrest, considering magical artifact posession has been illegal since the Arcane Purges no matter what their function is. For some reason, you have bigger things on your mind right now.", "end": true },
		}, 
					
	"Oven": {
		0: { "checkSaveVariable": { "keyToCheck": "knight_fed", "wantedValue": "true", "goto_false": 2, "goto_true": 1 }},
		1: { "speaker": "", "dialogue": "The wood-fire oven is a decent size, and looks both well used and well taken care of. The scent of fresh bread wafts from it, though you have little interest in that now.", "end": true},
		2: { "speaker": "", "dialogue": "You half expected a witch’s oven to be some glowing, hell fire laden thing scarred with runes and blood. After all, where else was a witch supposed to roast her victims alive, those same ones led astray by her hypnotic beauty and awful power?", "goto": 3},
		3: { "speaker": "", "dialogue": "Turns out this witch has as much use for a normal, non-evil oven as anybody else. Not only that, but this one has a loaf of bread cooling on the rack inside! You'd always been scolded for eating bread hot out of the oven - something about affecting the crumb structure, not that you ever noticed.", "goto": 4 },	
		4: { "speaker": "", "dialogue": "Seems as good a choice as any.",
				"choice": {
						"c1": { "choice": "Look around some more", "goto": 5 },
						"c2": { "choice": "Slice yourself some bread", "goto": 10 },
				}
		},
		
		5: { "speaker": "", "dialogue": "You consider having some bread - but in a place like this, surely there's other things to eat?", "end": true },
		
		10: { "speaker": "", "dialogue": "You take the bread over to the cutting board - much as biting into a hunk of bread would be satisfying, you're not some [i]animal[/i]. However, as you cut a couple of thick slices off one end, your eyes drift to the butter dish on the other side of the room. Nothing stopping you having it plain, but...", 
		"choice": {
					"c1": { "choice": "Add some butter", "goto": 30 },
					"c2": { "choice": "Butter, cheese, a glass of milk too...", "goto": 40 },					
					"c3": { "choice": "Nope, just plain bread", "goto": 20 },
					}
			},			
			
		# plain bread - reasonable!
		20: { "speaker": "", "dialogue": "No - you don't need anything else on here. Fresh bread is delicious on its own, anyway. You don't regret the choice as you start eating, either; the bread is soft and filling, with a specific tang to it that spoke of sourdough yeast. Once done, you pop the partially cut break back into the oven for safe keeping.", 
		"setSaveVariable": ["knight_eaten_item", SaveData_CurrentGame.Eaten_Item.BREAD],  "goto": 21 },
		21: { "speaker": "", "dialogue": "That's one order, down.", "end": true },
		
		#have the butter
		30: { "speaker": "", "dialogue": "What is bread but a vessel to get butter into your mouth, anyway? You sidestep over to the assortment of spices, picking up the butter tray and bringing it back to the cutting board..", "goto": 31 },
		31: { "speaker": "", "dialogue": "A generous swipe over the top of the couple of pieces you’ve sliced off and oh. That first taste is heaven. The second, too. The rich, creamy taste leaves you closing your eyes in pleasure, enjoying the sensation.", "goto": 32 },
		32: { "speaker": "", "dialogue": "You…. May have spaced out a little, after that.", "goto": 33 },
		33: { "speaker": "", "dialogue": "You were very hungry, sure - more than you expected to be when eating. Still, there’s something a little bit disconcerting about coming to some undetermined amount of time later, still chasing the taste of something rich on your lips.", "goto": 34 },
		34: { "speaker": "", "dialogue": "At least that’s a chore down, at least.", 
		"setSaveVariable": ["knight_eaten_item", SaveData_CurrentGame.Eaten_Item.BUTTER], "end": true },
		
		#full dining experience - desperate milkings game over
		40: { "speaker": "", "dialogue": "Might as well make a feast of it, or at least as much of a feast as you can given the limited selections here. You grab a plate, quickly constructing yourself a buttered cheese sandwich.", "goto": 41 },
		41: { "speaker": "", "dialogue": "It's [i]delicious[/i] - certianly decadantly rich in a way you wouldn't usually go for. But right now? Oh, it's just absolutely what you felt like.", "goto": 42 },
		42: { "speaker": "", "dialogue": "You don't even really notice how much you eat, but you do feel yourself growing lazy, sated by a good meal.
		...And finding another, more pressing issue come to the forefront.", "playEnding": SaveData_EndingTracker.EndingEnum.DESPERATE_MILKINGS},
		
		}, ###
		
	"Plant": {
		1: { "speaker": "", "dialogue": "A rather lush vine grows over the sink. Clearly it doesn't want for water, given it's position.", "end": true},
		}, 
	
	"noTentacleFood": {
		1: { "speaker": "", "dialogue": "The door is hefty - more so than any other one in the house. A slight cool breeze is coming up from under the door - the chain on the door is a paltry thing, and mainly seems to be there for show. Either that, or to make you think twice before going down.", "goto": 2 },
		2: { "speaker": "", "dialogue": "You unlatch the door, lost in thought. This seems too intense to be just a mere cellar - this must be 'The Pit' you're suppposed to be tending to. Maybe you should find whatever you’re supposed to feed this thing before you make your way beyond this door - though scoping out the area is never a bad idea...", "setSaveVariable": ["thePit_warned", true],  "end": true },		
		}, 	
		
	"RisingBread": {
		1: { "speaker": "", "dialogue": "There’s a loaf of bread rising underneath this tea towel - unfortunately you can tell this one isn’t ready to cook just yet.", 
		"checkSaveVariable": { "keyToCheck": "knight_fed", "wantedValue": "true", "goto_false": 2, "goto_true": 3 }},
		2: { "speaker": "", "dialogue": "You could wait - but frankly, you're a bit too hungry for that, especially since the smell of baked bread is already on the air", "end": true },
		3: { "speaker": "", "dialogue": "You've had some [i]shocker[/i] meals, between other soliders claiming cooking duty and ruining fresh supplies, depressingly stale rations and tavern meals stretching a gold twice as far as it should. At least if you're stuck here, you're stuck with a woman that can cook. ", "end": true },
		}, 				
					
}
