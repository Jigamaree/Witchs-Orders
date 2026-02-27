extends Node

class_name sleepyroomConvos

static var sleepyroom_Convos_Dict = {
	"Prologue": {
		1: { "speaker": "", "dialogue": "You wake. That is the only thing normal about your current circumstances.", "goto": 2 },
		2: { "speaker": "", "dialogue": "The battle- your fellow men- Too many, too much, too [b]powerful-[/b] Your heart pounds like a warhorse, fractured memories crashing over your mind too fast to piece together.", "goto": 3 },
		3: { "speaker": "", "dialogue": "This isn’t the Daybreak Plains –  why are you [i]here?![/i] Your squadron needs you. The Divine needs you! Your hands fly on instinct to where your sword should be-", "goto": 4 },
		4: { "speaker": "MC", "dialogue": "Argh!", "goto": 5 },
		5: { "speaker": "", "dialogue": "That, apparently, was a bad idea.", "goto": 6 },
		6: { "speaker": "", "dialogue": "The pain of that movement though is enough to shock you out of the panic gripping your body cold – you take the opportunity to force a few intentionally slow breaths through your lungs. [i]Focus, solider.[/i] You start with the simple facts to ground yourself, like you were taught.", "goto": 7 },
		7: { "speaker": "", "dialogue": "You are Alessia Venefican, of the Divine’s Chosen. The God-King Himself had just called on you and your sqaudron, as they had countless time before. The Saevii army loomed on the Daybreak Plains. You were to dispatch them.", "goto": 71 },
		71: { "speaker": "", "dialogue": "This wasn't an out of the blue command from Him; the Saevii have been a growing threat for years now. You've even come to blows with their scimitars before, and the sheer number of men sighted for this encroaching battle threated to be of more weight than the Divine had claimed....", "goto": 72 },
		72: { "speaker": "", "dialogue": "Hersay thoughts. You had answered Him - of course you answered. There is no questioning the Divine, only being the enactment of His word.", "goto": 8 },				
		8: { "speaker": "", "dialogue": "You and the other Chosen had arrived. Had charged.", "goto": 81 },
		81: { "speaker": "", "dialogue": "You…", "goto": 9 },		
		9: { "speaker": "", "dialogue": "You…?", "goto": 10 },
		10: { "speaker": "", "dialogue": "You don’t remember anything more than that. Not concrete, anyway. There’s flashes of things, sure – you remember the rush of battle in your ears, the singing of steel in your hands more desperate than before. A roar. Pain. Darkness.", "goto": 11 },
		11: { "speaker": "", "dialogue": "Your fingers drift up to your chest, touching to bandages you don’t remember putting on and recoiling from an aching wound you don’t remember getting. 
		(The ache seems to retreat pretty quickly - moving around a bit more, you find it to be completely managable now you know it to be there.)", "goto": 12 },		
		12: { "speaker": "", "dialogue": "You remember a woman standing over your battered body, eyes shining like wildfire.", "goto": 13 },
		13: { "speaker": "", "dialogue": "Wherever you are now, you need to get out of here – better yet, figure out what on earth happened. Your eyes are drawn to a note sitting on the desk – the dark ink looks intentional. No better place to start than there, you suppose. ",
		"setSaveVariable": ["bedroom_prologuePlayed", true], "end": true },		
	},
	
	"Bed": {
		1: { "speaker": "none", "dialogue": "The sheets for this bed are worn in the way only well loved fabric can be - soft to the touch, but the linen hasn't quite yet thinned.", "goto": 2 },
		2: { "speaker": "none", "dialogue": "There's a scent clinging to the blankets - vanilla and cedar, along with a touch of petrichor.", "goto": 3 },
		3: { "speaker": "none", "dialogue": "It's a surprisingly comforting smell. You try not to dwell on that.", "end": true } ,	
		},

	"GingerBaby": {
		0: {"checkSaveVariable": { "keyToCheck": "plant_guide_read", "wantedValue": "true", "goto_false": 1, "goto_true": 2 }},
		1: { "speaker": "", "dialogue": "This plant is the spitting image of the larger potted plant across the room. The leaves closest to you are just a touch warm from the light filtering in the window.", "end": true},
		2: { "speaker": "", "dialogue": "This appears to be not just a Buttermilk Ginger plant, but a propagation of the other larger plant in the room. Shit - you know this plant would sell for hundreds of gold. The knowledge? Thousands, probably. Something tells you that money isn't the point of this plant's existence.", "end": true},		
		}, 
			
	"GingerAdult": {
		0: {"checkSaveVariable": { "keyToCheck": "plant_guide_read", "wantedValue": "true", "goto_false": 1, "goto_true": 2 }},		
		1: { "speaker": "", "dialogue": "This plant seems to be growing quite happily in its pot, its large, leafy fronds as long as your forearm. The strange, pinecone-like blooms are flushed a deep pink, darker at the base. You swear you recognise the creamy scent of them, but you just can't put your finger on it.", "end": true},
		2: { "speaker": "", "dialogue": "The guidebook in your hands tells you this is Buttermilk Ginger - [i]that's[/i] how you knew the smell! The heady memories of a night loose in the city flash back to your mind; before you'd pledged yourself to the Divine, you hadn't been above seeking a bit of fun in the Capital between postings.", "goto": 3 },
		3: { "speaker": "", "dialogue": "You still remember the woman's face from that night - a cat-like smile as the handsome stranger spoke about the little vial of Buttermilk nectar like it was liquid gold. You hadn't believed her at first - but that was before she'd thrown you on your back and sworn to show you otherwise.", "goto": 4 },		
		4: { "speaker": "", "dialogue": " With that sap slicking her fingers she'd worked you open, everywhere it touched soon aching like you'd been wanting to come for weeks. The minx had done the job so thoroughly you'd sobbed when she finally fucked you, making a mess of your thighs, her thighs and the bed when you'd finally came. ", "goto": 5 },
		5: { "speaker": "", "dialogue": "She didn't stop for another three rounds.", "goto": 6 },						
		6: { "speaker": "", "dialogue": "Just recalling it all is enough to make your thighs clench - the celibacy you'd sworn yourself to in Their Holiness' service had always been something you'd told yourself was worth the loss. Now, in a bedroom with such easy access to the slick, you're not so sure.",  "end": true},	
		}, 
	
	"Note": {
		0: {"checkSaveVariable": { "keyToCheck": "bedroom_noteRead", "wantedValue": "true", "goto_false": 1, "goto_true": 20 }},	
		#note not read
		1: { "speaker": "", "dialogue": "The note is written in an elegant cursive - indicative of one that's more than familiar holding a pen. With no small amount of trepidation on your part, you read off the note in your hands, quickly realising this person's tone matches the extravagance of their writing.", "goto": 2 },
		2: { "speaker": "Witch_hide", "dialogue": "Greetings, my knight,
				We will meet in person soon - while I wished to be here in person to make the task of waking and acclimating that much easier, the needs of the day call to me.", 
				"completelyCentered": true, "inSlantyText": true, "goto": 3 },
		3: { "speaker": "Witch_hide", "dialogue": "While you have no reason to trust me, I hope that your current state of being - alive, well, and wounds tended to - speaks to the nature of my interest in you. Nothing matters to me more than your wellbeing; you will find, once dressed, that none will stop you leaving.", 
		"completelyCentered": true, "inSlantyText": true, "goto": 4 },
		4: { "speaker": "Witch_hide", "dialogue": "You are free to not believe that of me, of course; I am more than aware that your training denotes me a monster unrivaled by any other. While I cannot undo years of senseless propaganda, I have no ill will towards you.", 
		"completelyCentered": true, "inSlantyText": true, "goto": 50 },
		50: { "speaker": "Witch_hide", "dialogue": "Quite the contrary.", 
		"completelyCentered": true, "inSlantyText": true, "goto": 5 },		
		5: { "speaker": "Witch_hide", "dialogue": "I have requests of you; think the completion of these your thanks to me for the saving of your life. Should you complete these, I will be happy to escort you back to polite society - given you still wish that for yourself by then, of course.", 
		"completelyCentered": true, "inSlantyText": true, "goto": 6 },
		6: { "speaker": "Witch_hide", "dialogue": "Please complete the following five tasks:", 
		"completelyCentered": true, "inSlantyText": true, "goto": 7 },
		7: { "speaker": "Witch_hide", "dialogue": "- Feed yourself
		- Feed Ignus
		- Tend to the pit
		", "completelyCentered": true, "inSlantyText": true, "goto": 8 },
		8: { "speaker": "Witch_hide", "dialogue": "- Organise the potions in the study
		- Add the last ingredients to the cauldron", 
		"completelyCentered": true, "inSlantyText": true, "goto": 9 },
		9: { "speaker": "Witch_hide", "dialogue": "Once you have finished these tasks, wait for me by the fire; I'll be happy to answer any questions that remain.
			I look forward to meeting you face to face properly, dearest.", 
			"completelyCentered": true, "inSlantyText": true, "goto": 10 },
		10: { "speaker": "", "dialogue": "The note is signed by no name.", 
		"setSaveVariable": ["bedroom_noteRead", true], "goto": 11 },
		11: { "speaker": "MC", "dialogue": "What the fuck.", "goto": 12 },
		12: { "speaker": "", "dialogue": "The gall of this woman! If you hadn't known her to be a witch before now, she had left no doubt in your mind. To pick you up off the ground like a discarded pet, then demand these tasks of you? It's ridiculous!", "goto": 13 },
		13: { "speaker": "", "dialogue": "...And yet you can't deny a part of you is intrigued. She wouldn't have brought home somebody with \"your training\" if she didn't think she could handle you at your most dangerous. 
		More concerning is the implication you wouldn't want to leave... What on the Divine's good earth?", "goto": 14 },
		14: { "speaker": "", "dialogue": "You shouldn't be considering this as much as you are - but if things were fine, you wouldn't even be here, right?
		If there's a time to trust in the unusual and even dangerous, this may be the time.", "goto": 15 },
		15: { "speaker": "", "dialogue": "...Still strange she didn't sign by a name, you msue. You wonder if you can find that.", "goto": 16 },
		16: { "speaker": "", "dialogue": "(You can view your current task progression by pausing the game.)", "completelyCentered": true, "inSlantyText": true, "end": true },
	
		
		#note read		
		20: { "speaker": "", "dialogue": "The witch's note sits here, reminding you of your tasks.", "goto": 21},	
		21: { "speaker": "Witch_hide", "dialogue": "- Feed yourself
		- Feed Ignus
		- Tend to the pit
		", "completelyCentered": true, "inSlantyText": true,  "goto": 22 },
		22: { "speaker": "Witch_hide", "dialogue": "- Organise the potions in the study
		- Add the last ingredients to the cauldron", 
		"completelyCentered": true, "inSlantyText": true, "end": true },
		
				
		}, ###
	
	"SidetableLeft": {
		0: {"checkSaveVariable": { "keyToCheck": "plant_guide_read", "wantedValue": "true", "goto_false": 1, "goto_true": 10 }},	
		1: { "speaker": "", "dialogue": "The side table on this side has a few more dents and scrapes than your own - still carefully polished and tended to, but wearing the signs of more frequent use.", "goto": 2},
		2: { "speaker": "", "dialogue": "The pot plant on the with bubbled leaves makes your nose wrinkle. You remember, in your infinite wisdom as a child, eating some of the bright green pearls. The dreams you'd had were as vivid as waking - and the scolding you'd gotten about poisoning yourself had made you never touch them again.", "goto": 3 },				
		3: { "speaker": "", "dialogue": "You attempt to get in the drawer, but a light zap like static bolts up your arm. Seems like somebody didn't want you going through these particular personal belongings.", "end": true },
		
		10: { "speaker": "", "dialogue": "A String-of-Dreams sits on the sidetable - you'd never known this was what the plant actually looked like. You'd believed the Capital's salvekeepers at their word when they'd said the plant was poisonous and never thought much more of it - why would you?", "goto": 11 },		
		11: { "speaker": "", "dialogue": "Considering you now remember eating it yourself, you suspect they had other reasons to suppress its use. But... Why?", "end": true}				
		}, 	
	
	"SidetableRight": {
		0: {"checkSaveVariable": { "keyToCheck": "bedroom_waterDrunk", "wantedValue": "true", "goto_false": 1, "goto_true": 3 }},			
		1: { "speaker": "", "dialogue": "The sidetable speaks of a fine, if rustic craftsmanship; a fine oiled wood and- 
		
		holy fucking shit a glass of water.", "setSaveVariable": ["bedroom_waterDrunk", true], "goto": 2},
		2: { "speaker": "", "dialogue": "You pour and throw back probably one of the most satisfying glasses of water in your entire life. It's so satisfying in fact you finish the entire jug. Even if you don't know your way about your current circumstances, at least that's one less problem to deal with.", "end": true },		
		3: { "speaker": "", "dialogue": "The sidetable is a steady wooden sort, plain in design but very functional. It's also been barely used - there's nothing but a few dust bunnies tucked into the corners of the drawers.", "end": true },		
		}, 
			
	"Sword": {
		0: {"checkSaveVariable": { "keyToCheck": "sword_interracted", "wantedValue": "true", "goto_false": 1, "goto_true": 30 }},		 	
		1: { "speaker": "MC", "dialogue": "Valiance!", "goto": 2 },
		2: { "speaker": "", "dialogue": "You fall forward, cradling the hilt of the sword – [i]your[/i] precious sword - in your hands. Not that you could call it one anymore in the state it’s in now – the blade is shattered into pottery like shards, catching the light from the window.", "goto": 3 },
		3: { "speaker": "", "dialogue": "The memory suddenly comes to you – bringing Valiance down on scaled hide, right behind the neck. It should have pierced the hide clean through – instead you felt the metal shock, fall to pieces like cheap glass. Pain burned through your body like lightning soon after.", "goto": 4 },
		4: { "speaker": "", "dialogue": "Blessed steel shouldn’t break like this. The Divine Himself imbues it, the holy blessing from His hands making it one of the strongest materials known to man – you’ve cut through solid marble like butter, before. This should of been easy.", "goto": 5 },
		5: { "speaker": "", "dialogue": "The discoloration on the metal is worrying too; it’s tarnished like a cheap mirror, blackening at its edges. You’ve spent too much time polishing its length and sharpening its blade to believe for a second that flaking darkness is due to neglect.", "goto": 6 },
		6: { "speaker": "", "dialogue": "You search your memories for anything more about the [i]why[/i] of what caused this, but come up short. It appears you’ll have to figure this out both alone and unarmed.", 
		"setSaveVariable": ["sword_interracted", true], "end": true },
		30: { "speaker": "", "dialogue": "The pieces of your most faithful companion lay shattered. What is a knight without her sword? The hollow part of your chest can't find an answer.", "end": true },
		},

### TODO: Writing		
	"ToyChest": {
			0: {"checkSaveVariable": { "keyToCheck": "bedroom_openedToyChest", "wantedValue": "true", "goto_false": 1, "goto_true": 66 }},		
			##intro
			1: { "speaker": "", "dialogue": "The chest in front of the bed is a heavy thing - made of a solid dark oak, with a plain but striking gold metal edging along its corners. There's a lock on the front of it - on reflex you jingle the lid, just in case it was left open.", 
			"setSaveVariable": ["bedroom_openedToyChest", true], "goto": 2 },
			2: { "speaker": "", "dialogue": "Turns out, it was.
			Suddenly much more curious you nudge open the box - what you're presented with is largely mundane. This seems to be a storage box for winter blankets; considering you're warm enough to be walking around as you are, it's not quite the weather to be dragging out these chunky woolen things.", "goto": 3 },
			3: { "speaker": "", "dialogue": "The exception, however, are the three dildos lying on top.", "goto": 4 },
			4: { "speaker": "", "dialogue": "The first is a soft green-to-blue ombre dildo that looks like a vine covered branch. The colour reminds you distinctly of of the dryads she would see while traveling, in those few moments before the braying horses and clanging steel would make them disappear from view. It's the smallest of the bunch, but looks like it would fit comfortably in your hand.", "goto": 5 },
			5: { "speaker": "", "dialogue": "The second has clearly been sculpted to look like a tongue, with a colour fading from purple at the 'gums', to red, to a vibrant yellow at the end. The base has a snout and (blunt) teeth sculpted onto it - between that and the implied rough texture on the tongue itself, this appears to be modeled on a manticore.", "goto": 6 },
			6: { "speaker": "", "dialogue": "The final dildo is a thick black toy with heavy ridges. The flared head alone looks intimidating - and that's before you take in the length of the thing. It's the size of your forearm! You'd need to work up to that one if you took it - and the little vial of lube next to it you know won't be enough.", "goto": 7 },
			
			66: { "speaker": "", "dialogue": "The chest of blankets is just how you left it, the three dildos and little vial of lube resting just inside its mouth as tempting as they were when you first saw them. They'd be so fun to use....", "goto": 7 },
			
			7: { "speaker": "", "dialogue": "...Not that you [i]should[/i]. These are clearly the witch's personal toys.
			But the chest was unlocked, and it would be a good way to blow off some steam given your circumstances - what's the worst that could happen, anyway?",  		
			"choice": {
				"c1": {"choice": "Dryad's dildo.", "goto": 100 }, 
				"c2": { "choice": "Manticore dildo.", "goto": 200 }, 
				"c3": { "choice": "Massive ridged dildo.", "goto": 300 }, 
				"c4": { "choice": "Step away.", "goto": 999 }, 
				} 
			}, 

			100: { "speaker": "", "dialogue": "You pick up the blue-green dildo, turning it over in your hand.", 
			"checkSaveVariable": { 
				"keyToCheck": "imp_dildo_fucked_first", 
				"wantedValue": "true", 
				"goto_false": 102, 
				"goto_true": 101 }},
					
			101: { "speaker": "", "dialogue": "It's nothing at all to fall back into bed, fucking it back into you with all the ease of your younger self. However the experience is.... hollow. 
			You need something bigger.", "choice": {
				"c2": { "choice": "Manticore dildo.", "goto": 200 }, 
				"c3": { "choice": "Massive ridged dildo.", "goto": 300 }, 
				"c4": { "choice": "Leave", "goto": 111 }, 
				} 
			}, 
			
			102: { "speaker": "", "dialogue": "You were right - this dildo [i]is[/i] a nice handful! Your fingers trace along the shaft of it as you take it back to the bed, tracing along the shaft of it in anticipation. Your fingers creep down to your cunt, rubbing easy circles against the quickly sensitising flesh.",  
			"setSaveVariable": ["imp_dildo_fucked_first", true], "goto": 103 },
			103: { "speaker": "", "dialogue": "It's just so.... Exciting. It's a curious thing to realise that even with your given situation you can't keep your hands off yourself - was the celibacy oath you took that flimsy? All the beautiful men and women in the world, and your spirit is broken by a dildo and just a little bit of stress.", "goto": 104 },
			104: { "speaker": "", "dialogue": "...Oh, but it's a [i]good[/i] dildo. You nestle the head of it to your cunt, gasp as you realise it's sliding in with next to no effort at all. Fuck, but this is what you needed. You throw your head back with a little shuddery groan, shifting your hips into the feeling of being finally filled.", "goto": 105 },
			105: { "speaker": "", "dialogue": "Your hands move on an instinct you've never lost, as if they've been waiting but for a moment to help you come undone again. Slow drags at first to fuck you open, to render the aching walls of your cunt slick, stretched and pliable. A change of angle here and there, dragging the head here and there until- [i]Oh.[/i] You clench with a whimper, that first wave of pleasure sparking up from your cunt.", "goto": 106 },
			106: { "speaker": "", "dialogue": "You strike it again and again, following the drag of electricity over and over again. Soon enough you're pounding into your body with a fever, chasing the feeling of those sparks clashing into each other, into the pleasure you're chasing rising into a fever pitch that you can't escape. You fuck yourself, over and over and over until-", "goto": 107 },
			107: { "speaker": "", "dialogue": "-You come, crying out into your palm as the pleasure falls into you, radiating out wave after wave of [i]pleasurepleasurepleasure[/i]. You don't stop fucking yourself all the way through, whimpering as each new strike into your core triggers a whole new wave of contractions. By the time you're finished you're winded, flopping back onto the bed and panting as you recover the scattered thoughts through your mind.", "goto": 108 },
			108: { "speaker": "", "dialogue": "...But even with the dildo still stretching you full your eyes drift to the chest, down at the end of the bed. You could go for another round, right? And while this one feels nice, you can already feel yourself craving something a bit [b]bigger[/b].", "choice": {
				"c2": { "choice": "Manticore dildo.", "goto": 200 }, 
				"c3": { "choice": "Third dildo.", "goto": 300 }, 
				"c4": { "choice": "Stop now?", "goto": 111 }, 
				} 
			}, 
			111: { "speaker": "", "dialogue": "....But do you [i]really[/i] want to?", 
			"choice": {
				"c2": { "choice": "Manticore dildo.", "goto": 200 }, 
				"c3": { "choice": "Massive ridged dildo.", "goto": 300 }, 
				"c4": { "choice": "I do, actually.", "goto": 120 }, 
				} 
			}, 					
			 120: { "speaker": "", "dialogue": "No, you do actually want to stop now. You quickly rinse off the dildo in the sink, before placing it back with its bretheran.
			Still, the temptation remains...", "end": true },
		
			200: { "speaker": "", "dialogue": "You pick up the larger manticore dildo, turning it over in your hand. While the broad tongue looks a little challenging, you know you can take it. Just have to take it slow and warm up, right? This time you do take the lube with you, moving back to the bed with it in one hand and the dildo in the other.", "goto": 201 },
			201: { "speaker": "", "dialogue": "The illicit excitement you have to fuck yourself in this moment makes stretching yourself open feel all the better; you bite your lip as you work in one finger, two, three. That isn't enough to satisfy you though - not as you look at the dildo lying on the sheets beside you. Just the idea of that thing inside you makes your fingers clench in need; you didn't realise how much you craved the stretch until now.", "goto": 202 },
			202: { "speaker": "", "dialogue": "Divine help you - you've missed sex, sure. But there's a particular sort of pleasure that comes with self pleasure that you've missed just as much - and your body is all too eager to help you catch up on lost time.", "goto": 203 },
			203: { "speaker": "", "dialogue": "This dildo you know you'll actually need the lube - you run it over the broad form until it feels nice and slick in your hands. You're thankful you did, too - you bite your lip as the broad tip of the 'tongue' presses up against the flutter of your hole. Already you're imagining it inside you, the stretch of it against your walls, the feeling of that broad, flat surface dragging against your G-spot.", "goto": 204 },
			204: { "speaker": "", "dialogue": "It doesn't take all that much pressure to get the first part inside - from there you're insatiable, rocking it into you over and over again. Deeper and deeper, grunting as you feel it stroke deeper and deeper. The weight, the width, the slickness of all is addictive in a way you don't have words for.", "goto": 205 },
			205: { "speaker": "", "dialogue": "But do you have to have words for it? You're not sure you do. You just have to rock this thing deeper and deeper inside of you, fucking yourself in broader and broader strokes until you feel the moulded nose kiss up against your cunt. Being able to fit the broad length of it inside you though doesn't slow you down though - if anything? It only drives you want up even higher.", "goto": 206 },
			206: { "speaker": "", "dialogue": "Thrust after thrust, the rough surface of the moulded tongue dragging compounding shocks out of the sensitive walls clenching down around it. It's too easy to lose yourself to this gorgeous pleasure, to the thrill of fucking yourself in a way you shouldn't be. And oh - the thought of being a display of pleasure like that? That's what finally tips you over the edge.", "goto": 207 },
			207: { "speaker": "", "dialogue": "Orgasm rips through you mercilessly; your thighs clenching hard around your hands as your rock against the base of the dildo, chasing each clench, each pulse of pleasure as it breaks over you. It stretches on exquisitely - past the point where usually it'd stop, past the point where usually you'd pull away your hands. You hands continue to move, your hips continue to pump until you collapse back, boneless and breathless.", "goto": 208 },
			208: { "speaker": "", "dialogue": "...And yet, it's not enough. In your afterglow you clench around the toy and it feels just a bit too small, not quite satisfying enough. Your eyes drift back to the toybox.", "goto": 209 },
			
			209: { "speaker": "Witch_hide", "dialogue": "%wsYou know what will satisfy you, don't you?%we", 
			"completelyCentered": true, "choice": {
				"c1": { "choice": "That huge black dildo", "goto": 666 },
				"c2": { "choice": "The largest dildo", "goto": 666 }, 
				"c3": { "choice": "That thick, ridged dildo.", "goto": 666 }, 
				"c4": { "choice": "Leave", "goto": 222 }, 
				} 
			},

			222: { "speaker": "Witch_hide", "dialogue": "%wsWe both know you don't mean that, do you?%we", "completelyCentered": true, "choice": {
				"c1": { "choice": "The last dildo", "goto": 666 },
				"c2": { "choice": "Take the last dildo", "goto": 666 }, 
				"c3": { "choice": "You need the last dildo", "goto": 666 }, 
				"c4": { "choice": "You do want to leave, you swear!", "goto": 223 }, 
				} 
			},

			223: { "speaker": "Witch_hide", "dialogue": "%wsOh, you silly, stubborn thing.%we", "completelyCentered": true, "goto": 224 },
			224: { "speaker": "Witch_hide", "dialogue": "%wsDo you think you can lie about your needs, fucked full as you are?%we", "completelyCentered": true, "goto": 225 },
			225: { "speaker": "Witch_hide", "dialogue": "%wsYou know you need it. Give in.%we", "completelyCentered": true, "choice": {
				"c1": { "choice": "Get the dildo", "goto": 666 },
				"c2": { "choice": "Get the dildo", "goto": 666 },
				"c3": { "choice": "Get the dildo", "goto": 666 },
				"c4": { "choice": "Resist", "goto": 226 }, 
				} 
			},
			
			226: { "speaker": "Witch_hide", "dialogue": "%wsYou don't want to.%we", "completelyCentered": true, "goto": 227 },
			227: { "speaker": "Witch_hide", "dialogue": "%wsFuck yourself for me, toy.%we",  "completelyCentered": true, "goto": 228 },
			228: { "speaker": "Witch_hide", "dialogue": "%wsYou cannot deny yourself forever.%we",   "completelyCentered": true,
			"choice": {
				"c1": { "choice": "Get the dildo", "goto": 666 },
				"c2": { "choice": "Get the dildo", "goto": 666 },
				"c3": { "choice": "Get the dildo", "goto": 666 },
				"c4": { "choice": "Resist", "goto": 229 }, 
				} 
			},
				
			229: { "speaker": "", "dialogue": "You hold out just a bit longer... But you feel your hands shake, your eyes dart to the chest. You need it.
			It's only a matter of time before you give in.", "choice": {
				"c1": { "choice": "Get the dildo", "goto": 666 },
				"c2": { "choice": "Get the dildo", "goto": 666 },
				"c3": { "choice": "Get the dildo", "goto": 666 },
				"c4": { "choice": "Resist", "goto": 229 }, 
				} 
			},

			300: { "speaker": "", "dialogue": "You pick up the third cock, holding it in your hands. The weight of it is indescribable - intimidating, were you not spurred on by both arousal and no small amount of curiousity.", 
			"checkSaveVariable": { 
				"keyToCheck": "stretched", 
				"wantedValue": "true", 
				"goto_false": 301, 
				"goto_true": 310 }},
			301: { "speaker": "", "dialogue": "However, even with a more than generous spurt of lube and a long, intensive fingering session, you can't quite open yourself up wide enough to take the cock.", "goto": 302 },
			302: { "speaker": "", "dialogue": "If you really want to commit to this level of degeneracy, you suspect you're going to have to fuck yourself open with something else, first...", "choice": {
				"c1": {"choice": "Dryad's dildo.", "goto": 100 }, 
				"c2": { "choice": "Manticore dildo.", "goto": 200 }, 
				"c4": { "choice": "Come back later.", "goto": 999 }, 
				} 
			}, 
											
			310: { "speaker": "", "dialogue": "Divine help you - you know you should have resisted. But it just feels so [i]good[/i] to finally indulge in pleasure like this again. You feel greedy, high on it - an addict with their soberity broken, seeing just how far they can fall.", "goto": 668 },
			
			666: { "speaker": "", "dialogue": "It feels like you're drunk, high on the pleasures of your body and the way it stretches and takes cock. Even as you stumble to the chest to retrieve the last dildo, you can't keep your hands off yourself. Fingers circling at your entrance, fucking into the slick gaping hole of your cunt. Divine help you, you're so [i]empty[/i].", "goto": 667 },
			667: { "speaker": "", "dialogue": "One of the last rational thoughts you have is that your God-King cannot help you now.", "goto": 668 },
			
			
			668: { "speaker": "", "dialogue": "You can't get this into you in just any old position; to even begin pushing this monster into your guts you know you need to ride it. Like a woman possessed, you slide on the floor, slicking the cock with all the lube you can manage. Dizzily, you realise that on your knees this thing reaches to your belly button. You know, logically, that you won't be able to fit that inside you - but it's not logic ruling your brain right now. No - it's something far more depraved than that.", "goto": 669 },
			669: { "speaker": "", "dialogue": "Just pressing the head against your cunt is enough to make you whimper - and even fucked out as you are it still takes no small amount of rocking to get your hole to relent, to open to the all-consuming force of this absolute monster of a cock against your hole. And when it starts pressing through? You can't help but whimper as you feel the flare of the head rock against each new inch.", "goto": 670 },
			670: { "speaker": "", "dialogue": "It's so much. It's almost too much - but you can't move yourself away, can't bring yourself to do anything more than rock yourself down over and over again to force yourself open irrevocably. Inch after addictive inch - you can't keep your hands off your clit either, when it's this good. Not to mention the more you touch yourself, the more slick you become, the more turned on you become.", "goto": 671 },
			671: { "speaker": "", "dialogue": "It's been a long time since you've hit your cervix, fucking something or somebody - the natural limit to these sort of excursions.... You whimper as you realise that despite the size of this cock, despite the physical impossibility of it all that this dildo is only punching deeper and deeper. ", "goto": 672 },
			672: { "speaker": "", "dialogue": "It presses through. You gasp out as the massive cock pierces you through, deeper than anything before it. 
			...And suddenly you realise you're not alone.", "playEnding": SaveData_EndingTracker.EndingEnum.MARKED_HEELED }, 			
		
			999: { "speaker": "", "dialogue": "You step away - that is probably for the best.", "end": true },						
		}, 			
	
	"WindowFire": {
		1: { "speaker": "", "dialogue": "This is one of two stained glass windows in the room - this one appears to depict a swirling flame being nursed to life, something bright burning at its core.", "goto": 2 },
		2: { "speaker": "none", "dialogue": "The glass work is beautiful - and you can tell at just a glace will be too difficult to smash through, were you to try and escape out it.", "end": true },
		}, 
		
	"WindowCrow": {
		1: { "speaker": "none", "dialogue": "One of two stained glass windows in the room, this one depicts a crow nestled among branches. A sly look in its eye glints the same as a key grasped between its talons.", "goto": 2 },
		2: { "speaker": "none", "dialogue": "You know the textured glass and heavy lead edging will be too difficult to break.", "end": true } ,		
		},
		
	"lockedDoor": {
		0: {"checkSaveVariable": { "keyToCheck": "bedroom_testedTheDoor", "wantedValue": "true", "goto_false": 1, "goto_true": 7 }},
		#first time		
		1: { "speaker": "none", "dialogue": "The door is made of sturdy wood, with a decorative brass handle. As you walk up, red threads of magic flicker to life, before racing along a complex arcane swirl on the door.", "goto": 2 },
		2: { "speaker": "MC", "emote": "eep", "dialogue": " Witchcraft!", "goto": 3 },
		3: { "speaker": "none", "dialogue": "You hesitate briefly before trying to open the door - no luck. The door doesn't budge an inch; you'd honestly think it jammed if the sigil didn't flare with the attempt.", "goto": 4 },
		4: { "speaker": "none", "dialogue": "Just as you let go, a thought thunders through your mind like a premonition.", "goto": 5 },		
		5: { "speaker": "none", "dialogue": "%wsTo exit, you must be of more than what you are.%ws", "completelyCentered": true, "goto": 6 },			
		6: { "speaker": "MC", "emote": "exasperated", "dialogue": "...Is this door really telling me to get dressed?", 
		"setSaveVariable": ["bedroom_testedTheDoor", true], "end": true },
		#second time
		7: { "speaker": "none", "dialogue": "%wsTo exit, you must be of more than what you are.%ws", "completelyCentered": true, "checkSaveVariable": { "keyToCheck": "bedroom_testedTheDoorTwice", "wantedValue": "true", "goto_false": 8, "goto_true": 9 } },
		8: { "speaker": "MC", "emote": "exasperated", "dialogue": "The fact this door can tell me what to do is really getting on my nerves.", 
		"setSaveVariable": ["bedroom_testedTheDoorTwice", true], "end": true }, 
		9: { "speaker": "MC", "dialogue": "I don't need to play these games.", 
		"choice": {"c1": {"choice": "Take a breath.", "goto": 10 }, "c2": { "choice": "Kick in the door", "goto": 12 } } }, 	
		10: { "speaker": "", "dialogue": "Maybe it's not a good idea to go kicking in enchanted doors. You take a few moments to steady yourself - closed eyes, counting to three on each inhale and exhale.", "goto": 11 },
		11: { "speaker": "", "dialogue": "This witch may be playing games with you - but there's no reason to lose your cool.", "end": true },		
		12: { "speaker": "", "dialogue": "You've trained for this exact moment. Steadying yourself, you kick the door open.", "fadeToBlack":true, "playEnding": "Captured" },											
	},
				
	"ChestOfDrawers":{
		0: {"checkSaveVariable": { "keyToCheck": "knight_clothed", "wantedValue": "true", "goto_false": 100, "goto_true": 1 }},
		# knight is clothed		
		1: { "speaker": "", "dialogue": "A chest of drawers is a fine place to look for clothes, and these drawers are filled with a fantastic array of swirling robes and pants.", 		
		"checkSaveVariable": 
			{ "keyToCheck": "knight_clothing", 
			"wantedValue": 5, 
			"goto_false": 20, 
			"goto_true": 50 } },
			
		50: { "speaker": "", "dialogue": "Of course you already knew that, considering what you're wearing right now. 
		You can't get even [i]more[/i] dressed than this!", "end": true },	
			
		20: { "speaker": "", "dialogue": "...Hey wait a second. Where the fuck did these come from?!", "goto": 21 },
		21: { "speaker": "", "dialogue": "Your eyes don't decieve you - these drawers are now completely filled with clothing! Come to thinking of it though, these clothes clearly don't look like they're for you - they're made for somebody a bit taller, a bit slimmer. If they were hidden from you before you probably shouldn't touch them now.... But it [i]would[/i] be actual clothing for you to wear, instead of this.", "choice": {
				"c1": {"choice": "Change your clothes.", "goto": 40 }, 
				"c2": { "choice": "Leave these be.", "goto": 30 }, 
				} 
			},
		# leave with no concerquence	
		30: { "speaker": "", "dialogue": "... Actually, no. This was probably hidden from you for a reason. You leave the clothes alone.", "end": true },
		
		#imp +1, stolen clothes
		40: { "speaker": "", "dialogue": "You rummage through the drawers, with a pleased little smile tickling your face. She's hiding the good clothes from you? Well, maybe she should of hidden these better!", "goto": 41 },
		41: { "speaker": "", "dialogue": "The robe you eventually settle on doesn't come together all the way in the front, but does give you a bit more decency than your previous excuse of an outfit. You smooth down the silk, enjoying the feeling of it against your hands.", "goto": 42 },
		42: { "speaker": "", "dialogue": "Now that you're dressed [i]decently[/i] you can think about your next move - and maybe if you see the witch, give her a piece of your mind about these Divine-damned wardrobe options.",
			"setSaveVariable": ["knight_clothing", SaveData_CurrentGame.Clothing.STOLEN_ROBES], "end": true },
		
		# knight isnt clothed
		100: { "speaker": "", "dialogue": "A chest of drawers is a fine place to look for clothes - however, for some Divine-damned reason this woman doesn't seem to own any.", "goto": 1000 },
		1000: { "speaker": "", "dialogue": "Well, almost none. As you quickly make your way through drawer after drawer, you eventually find three sets of.... Well, you'd call them clothes, but in actuality they're sets of underwear, ones that make your cheeks flush just looking at them. Divine's breath, you haven't looked at anything like this since you swore yourself to celibacy for the God-King!", "goto": 101 },
		
		101: { "speaker": "", "dialogue": "The first is the skimpiest set in terms of actual fabric to cover yourself with, consisting of nothing but a set of panties and a bra just slightly too large for your chest. While largely white, there are irregular black spots patterned onto it, not unlike a cow.", "goto": 102 },
		102: { "speaker": "", "dialogue": "The second is a long sleeved, hooded crop top and panties - the sleeves have embroidered paw pads on the sides of the sleeves, while the hood sports a pair of cat ears. It is all made out of a delightfully soft auburn velvet, in a shade remarkably similar to your hair colour. The panties have a hole on the back - you realise with a flush its to fit the plug of a long, fluffy tail. 
		Maybe you can just... Not put that in?", "goto": 103 },
		103: { "speaker": "", "dialogue": "The final set is a striking black leotard - somehow the shiny black latex has the structure to both push up your tits as well as plunge right down to your midriff. A pair of handless gloves - armwarmers? - and shiny leggings complete the look.", "goto": 104 },
		104: { "speaker": "", "dialogue": "They're all decidedly perverted options, especially if you were to leave the house wearing them.... But they [i]are clothes[/i], and they don't look uncomfortable to wear unwitnessed.
		(A quiet part of you comments as well that you don't exactly hate the designs of these, either. You pointedly ignore those comments.)", 
			"choice": {
				"c1": {"choice": "Wear the cow bikini.", "goto": 200 }, 
				"c2": { "choice": "Wear the fluffy auburn set.", "goto": 300 }, 
				"c3": { "choice": "Wear the shiny leotard.", "goto": 400 }, 
				"c4": { "choice": "Mix and match a piece from each outfit", "goto": 111 }, 				
				"c5": { "choice": "Step away.", "goto": 999 }, 
				} 
			},
		# haha nice try scrub
			111: { "speaker": "", "dialogue": "Surely there's a way to wear a mix of these so you don't end up looking like somebody's walking wet dream. Even if that idea does have its appeal...", "goto": 112 },
			112: { "speaker": "", "dialogue": "The moment, however, you try to grab more than one item of clothing, you feel some unseen force wrench away your hands. Fear immediately grips you, cold and frightful - what is this damned witch going to do to you, now she can control you? Puppet you? Curse you?", "goto": 113 },	
			113: { "speaker": "", "dialogue": "...No, the magic merely just makes you drop the assortment of clothes you're holding. Seems as if this is an all or nothing situation - and any puppetry in this situation is entirely in your hands.", "choice": {
				"c1": {"choice": "Wear the cow bikini.", "goto": 200 }, 
				"c2": { "choice": "Wear the fluffy auburn set.", "goto": 300 }, 
				"c3": { "choice": "Wear the shiny leotard.", "goto": 400 }, 		
				"c5": { "choice": "Step away.", "goto": 999 }, 
				} 
			},						
			 	
			# bikiki - cow
			200: { "speaker": "", "dialogue": "There's a simplicity about the bikini that seems the most logical here - no fluff, no squeaky fabrics or anything extra. You could almost fool yourself into thinking this was a completely untoward set of underwear if it wasn't for the pattern, which is just fine by you. The underwear goes on easily, settling on your hips like the set was made for you. ", "goto": 201 },
			201: { "speaker": "", "dialogue": "The bra, as expected, fits a little less well. You'd known even before you put it on that the cups were a couple of sizes too big at least - you've never been particularly blessed in that department, nor has it been much of a problem until now. You spend some time poking and shifting them, seeing if there's a way you can tighten the straps or re-hook the back to make it sit better on your body.", "goto": 202 },
			202: { "speaker": "", "dialogue": "...You're not sure when that, however, turned into groping yourself. ", "goto": 203 },
			203: { "speaker": "", "dialogue": "Somewhere between pulling up the cup and tugging down the bra your fingers had spread between, thumbs stroking and playing over a nipple that'd only become more sensitive at your fingertips. Its a logical realisation - and yet you can't will yourself to pull your fingers away. You tell your left hand to pull away and the right will squeeze nice and tight - you try to yank your right away and the brush of your left hands fingers over the peak of your chest makes your brain swim just a bit.", "goto": 204 },
			204: { "speaker": "", "dialogue": "It's easy to lose time like that, to the rhythm of it all - it doesn't *feel* like you're the one touching yourself so rhythmically, leaving your brain to simmer down to nothing more than the thrum of pleasure the action brings forward. Squeeze, release, squeeze, release...", "goto": 205 },
			205: { "speaker": "", "dialogue": "...", "goto": 206 },
			206: { "speaker": "", "dialogue": "Eventually, some part of your mind is able to break out of the hypnotic stupor you'd found yourself in - you [i]do[/i] have things to do right now. What stops you immediately though is - well. Yourself.", "goto": 207 },
			207: { "speaker": "", "dialogue": "No longer does the bra of the outfit hang loose on your body - instead you not only fill the fabric, but strain it too! You go to touch them again, not quite believing what you see- then stop yourself. No. You're already lost too much time 'investigating' your own chest. Better to move on and figure out exactly what's going on here - and maybe the witch can put your chest back to normal when she returns.", "goto": 208 },
			208: { "speaker": "", "dialogue": "(You tell yourself that. You know that's a lie - you've always wondered what it would be like to has nice, plush tits. Maybe you could just consider this a benefit of the whole experience, when you're done...)", 
			"setSaveVariable": ["knight_clothing", SaveData_CurrentGame.Clothing.COW_BIKINI], "end": true },		
			
			# fluffy set - pet			
			300: { "speaker": "", "dialogue": "The soft auburn fabric feels just as good sliding over your legs as it does in your hands, the panties sitting nice and snug against your form. The little crop top fits easily over your head as well; you're thankful you're not thoroughly endowered, considering the bra built into it is hardly the most supportive thing.", "goto": 301 },
			301: { "speaker": "", "dialogue": "With all that on you turn to go, hoping that you don't [i]have[/i] to put the tail plug in - just to find yourself turned back around and facing the tail once more. Okay. Alright. This thing will have to go in your ass. You're thankful for the little bottle of lube there - it's been a long time since you've opened yourself up. ", "goto": 302 },
			302: { "speaker": "", "dialogue": "It's a thought you reminisce on as move back onto the bed, propping yourself up on the headboard with the tail and lube. Before you'd been a Divine's Chosen, you'd never been shy about sex. Hell, you eventually had a contact for each city you made it to, a familiar face to keep your bed warm while you traveled.", "goto": 303 },
			303: { "speaker": "", "dialogue": "You hadn't opened yourself up since those times - usually this would count as a violation of the celibacy oath you'd taken becoming one of the God-King's chosen fighters. But this [i]wasn't[/i] about sex, right? This was about getting out of this room in something that even came close to resembling normal people's clothes.", "goto": 304 },
			304: { "speaker": "", "dialogue": "Never mind that your fingers were circling your ass indulgently, gently, dipping inside with a care that only comes from a wealth of experience being gleefully used again. But why wouldn't you take it slow? It is necessary to take your time with these things - to slowly curl your finger over and over until your muscles relaxed, to slick up the second to add next.", "goto": 305 },
			305: { "speaker": "", "dialogue": "The third finger added allowed you to scissor your hole open properly, grunt in pleasure at the feeling of clenching against something and the promise of things to come. Hell - you're tempted to add one more, maybe even the thumb - it's been so long since you've been able to enjoy these simple pleasures. ", "goto": 306 },
			306: { "speaker": "", "dialogue": "But no- you'll be a good girl for now. You're not going to let yourself take advantage of this situation to chase this near forgotten pleasure... [s]Even if it would be quite satisfying to do.[/s] Taking the metal plug, you take care to slick it up well, avoiding the soft fur of the tail where it joins on the end. ", "goto": 307 },
			307: { "speaker": "", "dialogue": "Well stretched as you are, the plug settles into you easily. Even better is the weight of the metal - not only does it not drag and catch, the hefty weight of it makes it impossible to forget it's there. Not that you mind- on the contrary you groan in pleasure as you feel it settle.", "goto": 308 },
			308: { "speaker": "", "dialogue": "And if you fuck it into yourself a few times, that's just making sure you've followed instructions, right? You need to know it's comfortable in there with enough lube, that it won't dry up or fall out.", "goto": 309 },
			309: { "speaker": "", "dialogue": "The pleasure sparking up your spine and the sympathetic clench of your cunt while you check is just coincidental - a silly consequence of the cute little clothing set that you've chosen to don.", 
			"setSaveVariable": ["knight_clothing", SaveData_CurrentGame.Clothing.BUTTPLUG],  "goto": 310 },
			310: { "speaker": "", "dialogue": "...Definitely.
			Of course.", "end": true },	
			
			# leotard - imp
			400: { "speaker": "", "dialogue": "The leotard is easier to put on than you expect - you expected to need some sort of lubrication (or sheer brute force) to tug the clothing over your athletic form. Instead it feels as if some sort of magic is easing the way - stretching when it needs to stretch, sliding when it needs to slide.", "goto": 401 },
			401: { "speaker": "", "dialogue": "You bite your lip as you drag it over your chest, the fabric suddenly clinging tight to the skin there. Immediately you can see how well they define the swell of your chest - and that deep cleavage? You though you'd mind terribly, having all your midriff exposed like this.", "goto": 402 },
			402: { "speaker": "", "dialogue": "You don't, though.... 
			Actually, it's kind of hot.", "goto": 403 },
			403: { "speaker": "", "dialogue": "You drift to the bathroom as you change, seeking out the mirror as you pull on the arm warmers. They make your well toned forearms look even more shapely; you grin in pleasure as you drag your fingers over the muscle definition they bring out.", "goto": 404 },
			404: { "speaker": "", "dialogue": "The shiny leggings feel just as good - you can't help but lean over at the waist to do so, giving yourself a mischievous grin through the mirror. Ass in the air, body shining as you wear something sexier than being naked? It makes you hum in delight.", "goto": 405 },
			405: { "speaker": "", "dialogue": "Even when you have all the clothing on you can't stop touching yourself, can't stop looking at yourself. If somebody else was here looking at you, would they feel the same? Would they see the wild glint in your eye and the latex-slick curves of your form and not be able to think of anything but sex as well?", "goto": 406 },
			406: { "speaker": "", "dialogue": "You hope so - hope they wouldn't be able to stop themselves from touching. Hope that they'd press you against the wall and kiss you breathless, press a knee between your thigh just in hope to see you rut against it. Maybe they'd even press a finger or two into your mouth, fuck into it nice and slow; drag the digits through your lips until they're bruised just from the foreplay. And then maybe- [i]maybe-[/i]", "goto": 407 },
			407: { "speaker": "", "dialogue": "You startle yourself out of your own thoughts - shit, what were you doing again? You look to the mirror, shocked at the woman that stares back. Wild hair, half pulled out of its ponytail, a half open mouth spilling drool onto their own cleavage. And those eyes - distant, hungry, just a little manic. It's hard to believe they're yours, and you blink away until the sanity seems to return to them.", "goto": 408 },
			408: { "speaker": "", "dialogue": "You're dressed, at least. That's something. 
			You ignore the slick feeling of your cunt against itself as you move back to the bedroom, ready to tackle what else this place has in store for you.",  
			"setSaveVariable": ["knight_clothing", SaveData_CurrentGame.Clothing.SLUTTY_OUTFIT], "end": true },		
	
		999: { "speaker": "", "dialogue": "You step away. You're not sure any of this is worth putting on.", "end": true },						
		},					

	"ishouldreadthenote": {
		1: { "speaker": "MC", "dialogue": "I should read that note.", "end": true } ,	
		},
}
