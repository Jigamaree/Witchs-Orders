extends Node

@onready var titleLeft: Label = $LeftPage/MarginContainer/HBoxContainer/VBoxContainer/LeftPageTitle
@onready var textLeft: RichTextLabel = $LeftPage/MarginContainer/HBoxContainer/VBoxContainer/LeftPageText
@onready var arrowLeft: Button = $BackButton

@onready var titleRight: Label = $RightPage/MarginContainer/HBoxContainer/RightVBox/RightPageTitle
@onready var textRight: RichTextLabel = $RightPage/MarginContainer/HBoxContainer/RightVBox/RightPageText
@onready var arrowRight: Button =$"Forward Button"

var currPageLeft: int = 1

func _ready() -> void:
	titleLeft.text = Plant_Entries[currPageLeft]["name"]
	titleRight.text = Plant_Entries[currPageLeft+1]["name"]
	textLeft.text = Plant_Entries[currPageLeft]["text"]
	textRight.text = Plant_Entries[currPageLeft+1]["text"]	
	
func _on_back_button_pressed() -> void:
	if currPageLeft == 1:
		queue_free()
	else: 
		currPageLeft = currPageLeft-2
		refreshPages()

	arrowRight.visible = true			

func refreshPages():
	titleLeft.text = Plant_Entries[currPageLeft]["name"]
	textLeft.text = removeIndentation(Plant_Entries[currPageLeft]["text"])
	if Plant_Entries.has(currPageLeft+1):
		titleRight.text = Plant_Entries[currPageLeft+1]["name"]	
		textRight.text = removeIndentation(Plant_Entries[currPageLeft+1]["text"])	
	else:
		titleRight.text = ""
		textRight.text = ""
	textLeft.scroll_to_line(0)	
	textRight.scroll_to_line(0)					

func removeIndentation(text: String) -> String:
	return text.replace("\t", "")

func _on_forward_button_pressed() -> void:
	print(str(currPageLeft))
	currPageLeft = currPageLeft+2
	refreshPages()
	if currPageLeft == 15:
		arrowRight.visible = false	
	
	
	
	
static var Plant_Entries = {
	1: {
		"name": "Altharia",
		"text": "An extremely important plant to witchcraft and arcane cultivation in general, Altharia was nearly hunted to extinction during the Arcane Purges. Thanks to the work of several devoted witches the plant not only survives, but thrives in the modern day - however, it is not uncommon for witches even now to store the plant dried rather than risk having such a notorious plant in their garden.
		
		Altharia's foliage is notiably small - the bushes of the plant are usually comprised of sprigs of waxy leaves capped with either the small, delicate white flowers, or the dark red fruits. The flower is traditionally stuck to the underside of the tongue for use, however the extremely salty taste has lead most modern witches to mix the plant into potions instead. Altharia promotes ease of arcane movement; users note being both more open to recieving magical influence and input from others, as well as more easily able to manipulate arcane forces themselves. Extended use diminishes the effectiveness of this plant - with one notable exception.
		
		Altharia seems to have a natural affinity for sex and tantaric magics - despite extended use, witches that practice in these areas find Altharia to be a useful and constant companion during their spellcasting. It is encouraged, however, to not rely too heavily on the plant; while there are no adverse effects for doing so, arcane crutches are better removed sooner rather than later.",
	},
	
	2: {
		"name": "Buttermilk Ginger",
		"text": "[i]Zingiber zerumbet[/i]

		A member of the ginger family, Buttermilk Ginger boasts leafy fronds that can grow up to 1.5 meters. While the stalks, leaves and rhizomes are edible cooked, the blooms are why Buttermilk Ginger is sought after. The flower heads are scaled in appearance, initially green in colour but darkening to a vibrant pink. The mature blooms are prized for the sweet, aromatic liquid they contain. 
		
		While used occasionally as a moisturizer in low quantities, the nectar is most well known as use as a personal lubricant, with both sensitivity and stamina enhancing properties. It is a particular favorite of those who are afflicted by heats, as the lubricant will remain slick for up to 12 hours, if exposed to semi-constant friction.

		Buttermilk Ginger is notoriously difficult to propagate, leading to an intense secondary market. Even diluted Buttermilk sap can go for hundreds of gold in some aristocratic circles.",
	},
	
	3: {
		"name": "Daybright Daisy",
		"text": "[i]Undleatre Bellis[/i]

		While a member of the Daisy family, Daybright Daisies are unique in that they can photosynthesise through their petals, giving them a unique cut-flower aesthetic even while planted.",
	},
	4: {
		"name": "Dew Berry",
		"text": "A rare plant in which the berries are more useful than the flower itself, dewberry is named for the dark blue fruit the plant bears year round. The slick outside of the plant is a natural lubricant, though produced in too small a quanity to be used on its own.
		
		When used topically Dewberry is an incredibly powerful healing plant; with its slick being produced both to dissuade creatures from landing on its surface as well as to protect from disease, Dewberry has an incredible sanitising effect; the raw berry alone will help dissuade disease from most open wounds, and when mixed into tincures the effect becomes even more pronounced.
		
		However, the berries when injested do induce a significant slickening effect. All orifices will start to either create more natural lubrication (spit, slick, etc) or will start to create it in response to the Dewberry's magic. This effect can last for up to 12 days in the most arcane sensitive, leading it to be a popular choice for individuals helping monsters through heats.
		Eating too many of the berries at once can cause the user to be rendered unable to talk - though for some this is an extremely intended side effect.",
	},
	5: {
		"name": "Dragonclaw",
		"text": "A flower with a large trumpet shape and firery red to yellow colouring, Dragonclaw is a rather striking addition to any garden. The plant is known in some circles as \"Assassin's Bane\", due to its capaity to completely detox weaker poisons and greatly reduce the mortality rate of deadlier ones; its pleasant citrus-cinnamon scent also makes it a common mundane additive in other potions, in order to drown out more unpleasant ingrendiant scents.
		
		The pollen of Dragonclaw is also extremely useful in lubricants and potions. Dragonclaw induces a particularly interesting reaction in the bodies of humaniods, allowing them to stretch out many times their size. It is said that an exploring witch was able to accomodate an entire dragon's claw, thanks to treating herself with Dragonclaw pollen prior to insertion. 
		
		(It is said that the creature's cock also fitted suitably well, but 'Dragonclaw' gained a notably more widespread adoption rate for the plant. )",
	},
	6: {
		"name": "Dryad's Kiss",
		"text": "This Dahlia is named for the curious property of its petals; the blossom emerges as lavender in colour, but bruises to a bright pink when touched. It is said that this is to mimic the responsive colouration of dryads, though it is unclear which pair of lips the flower's flushing is supposed to invoke. Its blade-like leaves can grow several hands in length.

		Dryad's kiss is often used as an intensifier in potion brewing, enhancing the effect of other ingredients. It has this effect upon combustion as well, making it a popular mix-in when smoking all manner of substances. It finds particularly successful use in summoning creatures from other planes, as the relatively cheap Dahlia can make the more expensive reagents stretch further and react more completely. ",
	},
	7: {
		"name": "Dusk Dahlia",
		"text": "[i]Delusio Dahlia[/i]

		A stunning member of the Dahlia family, the Dusk Dalia can be identified by its bladed leaves and soft purple petals. It was once said that the plant would only be seen blooming at dusk - this was a tale spread by salesmen in times past to artificially inflate the price of the blossom to sell onto noblemen and royalty alike, garnering it the nickname 'Fool's Gemrose'. Ironically, the Dusk Dahlia is an incredibly easy plant to cultivate, especially in more temperate outdoor gardens.

		One particularly unique feature of the Dusk Dahlia bloom is it's bruising. Much like [i]Psilocybe[/i] mushrooms, when exposed to pressure the Dusk Dahlia will stain to a bright blue, speaking to the flower's psychoactive properties. However, the nature of these properties vary wildly with and without processing. Without processing the user will descend into a unresponsive stupor; individuals in this state are highly prone to suggestion, though require other manipulation to do much more than stare into the middle distance. 
		
		With processing, however, the flower becomes a powerful tool in the witch's arsenal, allowing for once to perceive not only the presence of magic in the air, but the movement, flow, and intensity of such magic. ",
	},
	8: {
		"name": "Furnace Fern",
		"text": "[i]Foculus Adiantum[/i]
		A hardy plant that enjoys shade, this fern is easily identifiable by its lacy fronds with fiery orange tips. The pinna is known to exhibit a mild smoldering effect when being handled excessively; this phenomena occurs to a chemical reaction initiated between the spores of the plant and skin oils. Despite this, it is particularly useful as a renewable fire starter; significant friction is required for combustion to occur, and dried fronds are chemically inert.

		Due to its useful homemaking properties, it was common as a household plant pre-Radiance occupation. It's popularity, like many other common plants, dwindled with the Arcane Purges.",
	},
	
	9: {
		"name": "Heatflush Fuchsia",
		"text": "[i]Ardorus Fuchsia[/i]
		A striking member of the fushia family, this shrub grows up to half a meter in height. The plant is easily distinguished by its blooms; the pendulous teardrop flowers have vibrant pink exterior flowers with white interior petals. The scent of them is a famed aphrodesciac, as well as having a mild intoxication effect. Accomplished witches are also known to use Heatflush as an arcane focus, allowing them to better tap into arousal for arcane purposes.
		The berries of Heatflush darken to purple when ripened; while they lose the arcane properties present in the flowers, they can be made into a delicious jam. Radiance occupation has outlawed the cultivation of Heatflush, 'bushels' of Heatflush are still regularly exchanged amongst lovers. ",
	},
	
	10: {
		"name": "Luck of the Lady",
		"text": "Secundum Hedera

		This vine is the most popular indoor vine for good reason; it has the unique property that it will never hold more that 213 leaves off its central stem at any one time. This makes it easy to prune and contain; many find it worth the mild property damage to walls and decor to keep it indoors. It is said that having a Luck of the Lady vine drapec over one's front door is exceptionally good lucky.

		While civilian and Radiance-fianced records of the plant will note it to never flower, there have been scant recordings of it flowering in the presence of the Arcane-inclined - though none have been willing to specify more about the experience. ",
	},
	
	11: {
		"name": "Lover's Drop",
		"text": "[i]Desiderium Pieris[/i]
		Lover's Drop's name is accredited to a myth dating back to antiquity, in which an alraune fell madly in love with a human. Determined to win their love, she gifted them a flower grown from her nectar each day - it is said the scent of the flowers eventually overwhelmed the human so much they walked willingly into the alraune's arms, spending the rest of eternity in their petals.

		The small, heart-shaped flowers grow in striking sprays of pink and white. While inert at low quantities, large bushes of Lover's Drop can perfume the air with deranging pollen, driving the affected to engage in vigerous sex or uffer from the pollen's affects for up to a week. Many do not survive this ordeal, dropping dead from high blood pressure leading to heart faliure and/or dehydration. It is advised anybody cultivating the plant to keep it neatly trimmed, in order to avoid tragedy. ",
	},
	12: {
		"name": "Old God's Hog",
		"text": "Phallium Anthurium

		A strange, yet alluring member of the anthurium family, Old God's Hog is notable for being the only natural sub-tropic subspecies of its genus. It is easily identified by its glossy, attractive foliage and large waxy flowers. Even dismissing their arcane properties they have been heralded as a sign of fertility since antiquity, due to its heart shaped flowers and phallic stamen. 

		The erotic nature of this plant carries over into its arcane uses. Any part of the flower can be used to evoke masculine energy, especially for the purposes for summoning rituals or transformation magic. Its most common use case, however, is its ability to increase the phallic activity when made into a salve and used topically. This can increase girth and length in those with penises, and can enhance the size and fullness of those with clitorises; some report after multiple years of use being able to achieve penetration using a clitoris treated with Old God's Hog. Regular uses of Old God's Hog are recommended to use the plant only a few times a week - overdosing on the substance can reduce the user down to a rutting, animalistic mess for hours at a time, and the increased semen load and sensitivity can be a particular addictive mix.",
	},
	13: {
		"name": "Plushdrop Fushia",
		"text": "[i]Mollis Fushia[/i]

		A vibrant member of the fushia family native to the Central Plains, Plushdrop is known for blooming year round, providing a excellent source of pollen for pollinators over the cold winter months, as well as a prized gift of Beefolk.  The flowers are slightly larger than most members of the Fushia family, with a distinct soft worn-leather feel to the petals. These petals tend to colour hot pink on the outer petals with the central petals colouring a darker purple-pink. 

		The plant gets the name Plushdrop from its main arcane affect; the pollen can induce intense drooling, flushing of the lips and relaxation of the throat muscles, and these affects intensify further when eaten. 

		While recreational use is harmless, excessive use over time or too high a concentration injected at once can make the effects permanent. Overdosing can also induce heavy slick production in those both with and without a vagina, as well as a dangerously sharp libedo increase - to the point where, if not treated, can dull the affected mind to anything except sex.",
	},
	14: {
		"name": "String of Dreams",
		"text": "[i]Somnium Rowleyanus[/i]

		A small, dense trailing plant, this succulent is immediately recognisable by its slender stem with pea-green bubbles. These tendrils can grow up to 6 inches in length; low light will give it a long sprawling appearance, while full sun will pull the tendrils into tight coils.

		It has been used as a sleep aid since antiquity, affording an easy, dreamless sleep - to most. Those sensitive to the arcane will have vivid, dreams while sleeping under the influence of String-of-Dreams, strongest when first exposed to the plant. Pre-occupation, this was used by witches to identify potential apprentices, but the Arcane Purges widely spread the myth ingesting it was fatal, leading to most seeking alternate paths.",
	},
	15: {
		"name": "Zigll's Bloom",
		"text": "[i]Novissime Dahlia[/i]
		Zigll's Bloom takes its name after a myth from antiquity, in which the great warrior Zigll the Faithful protected a Old Goddess' shrine for 40 days and 40 nights. When the Goddess appeared to ask what reward the warrior requested for holding out against hellspawn for so long, they asked to spend but a night with the Goddess they revered so much. Touched by the humble request, she took the warrior as her eternal lover; where their mixed spend first watered the earth was where Zigll's Bloom first blossomed. 

		The bloom is a dark purple in coloration, the edges of the petals growing lighter at the edges. Its rounded leaves have a waxy coating; if displayed for ornamental purposes, it's recommended to strip these, as they are prone to attracting dust in indoor environments.
		While the leaves are toxic, petals from the bloom itself can be used to help extend the length of potions brewed using it. Care should be taken, however, as too high a dosage can induce erotic hallucinations. While usually pleasurable in nature they tend to center around bondage as a central theme, which can be distressing to some.",
	},
		
	
}
