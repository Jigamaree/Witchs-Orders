extends Node

class_name testConvos

static var demo_conv = {
	1: { "speaker": "A Friend", "dialogue": "This is a simple line of dialogue!", "goto": 2 },
	2: { "speaker": "A Friend", "dialogue": "Here's one that sets a condition.", "set": "some_flag", "goto": 3 },
	3: { "speaker": "A Friend", "dialogue": "Now we can check that condition and change what comes next.", "check": { "condition": "some_flag", "goto_false": 4, "goto_true": 5 } },
	4: { "speaker": "A Friend", "dialogue": "This would be if the condition were false...", "goto": 6 },
	5: { "speaker": "A Friend", "dialogue": "This would be if the condition were true...", "goto": 6 },
	6: { "speaker": "A Friend", "dialogue": "Now the big guns: choices!", "choice": {"c1": {"choice": "I like choices.", "goto": 7 }, "c2": { "choice": "Choices are scary.", "goto": 8 } } },
	7: { "speaker": "A Friend", "dialogue": "I like them too!", "goto": 9 },
	8: { "speaker": "A Friend", "dialogue": "I guess they are kind of scary.", "goto": 9 },
	9: { "speaker": "A Friend", "dialogue": "Anyway, bye now.", "end": true }
}

# An example of how you could structure multiple conversations in one dictionary by individual NPC
static var steve_convos = {
	"meeting": {
		1: { "speaker": "Steve", "dialogue": "Hi, I'm Steve, nice to meet you!", "goto": 2 },
		2: { "speaker": "Steve", "dialogue": "See you later!", "end": true } },
	"attack": {
		1: { "speaker": "Steve", "dialogue": "Sorry but it's time to fight!", "goto": 2 },
		2: { "speaker": "Steve", "dialogue": "Prepare to meet your end!", "end": true } } }
		
# An example of how you could structure multiple conversations in one dictionary by individual NPC
static var test_convo ={
		1: { "speaker": "Nameless", "dialogue": "Now we're cooking with gas.", "goto": 2 },
		2: { "speaker": "Nameless", "dialogue": "I'm sure you can tell by my face I'm delighted.", "end": true }, 
		}

		#6: { "speaker": "none", "dialogue": "Like this!", "choice": {"c1": {"choice": "I like choices.", "goto": 7 }, "c2": { "choice": "Choices are scary.", "goto": 8 } } },
		#8: { "speaker": "MC", "dialogue": "They do suck.", "goto": 9 },
		#9: { "speaker": "none", "dialogue": "Wow! Options!", "end": true } ,	
		#},				
		
		#3: { "speaker": "A Friend", "dialogue": "Now we can check that condition and change what comes next.", "check": { "condition": "some_flag", "goto_false": 4, "goto_true": 5 } },		
		
	#"testOfDrawers":{
		#1: { "speaker": "A Friend", "dialogue": "Then, [wave]instead[/wave] of a line of [color=#9aa57c]dialogue[/color] looking like [shake rate=6.0 level=6 connected=1]this[/shake]...", "goto": 2 },
		#2: { "speaker": "A Friend", "dialogue": "It %wswould%we look like %ssthis%se instead, which is much %hsquicker%he to write!", "end": true } 
		#}

		#"testOfDrawers":{
		#1: { "speaker": "A Friend", "backgroundImage": "", "dialogue": "Then, [wave]instead[/wave] of a line of [color=#9aa57c]dialogue[/color] looking like [shake rate=6.0 level=6 connected=1]this[/shake]...", "goto": 2 },
		#2: { "speaker": "A Friend", "fullImage": "", "dialogue": "It %wswould%we look like %ssthis%se instead, which is much %hsquicker%he to write!", "end": true } 
		#}
