/var/global/list/alloy_processor_recipes
/var/global/list/alloy_processor_categories

/proc/populate_processor_recipes()

	//Create global autolathe recipe list if it hasn't been made already.
	alloy_processor_recipes = list()
	alloy_processor_categories = list()
	for(var/R in typesof(/datum/alloy_processor/recipe)-/datum/alloy_processor/recipe)
		var/datum/alloy_processor/recipe/recipe = new R
		alloy_processor_recipes += recipe
		alloy_processor_categories |= recipe.category

		var/obj/item/I = new recipe.path
		if(I.matter && !recipe.resources) //This can be overidden in the datums.
			recipe.resources = list()
			for(var/material in I.matter)
				recipe.resources[material] = I.matter[material]
		qdel(I)

/datum/alloy_processor/recipe
	var/name = "object"
	var/path
	var/list/resources
	var/hidden
	var/category
	var/power_use = 0
	var/is_stack

// Raw category, if the player wants to get their sheet back.

/datum/alloy_processor/recipe/metal
	name = "steel sheets"
	path = /obj/item/stack/material/steel
	category = "Source"
	is_stack = 1
	resources = list(MATERIAL_STEEL = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/tin
	name = "tin sheets"
	path = /obj/item/stack/material/tin
	category = "Source"
	is_stack = 1
	resources = list(MATERIAL_TIN = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/zinc
	name = "zinc sheets"
	path = /obj/item/stack/material/zinc
	category = "Source"
	is_stack = 1
	resources = list(MATERIAL_ZINC = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/copper
	name = "copper sheets"
	path = /obj/item/stack/material/copper
	category = "Source"
	is_stack = 1
	resources = list(MATERIAL_COPPER = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/aluminium
	name = "aluminium sheets"
	path = /obj/item/stack/material/aluminium
	category = "Source"
	is_stack = 1
	resources = list(MATERIAL_ALUMINIUM = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/glass
	name = "glass sheets"
	path = /obj/item/stack/material/glass
	category = "Source"
	is_stack = 1
	resources = list(MATERIAL_GLASS = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/gold
	name = "gold sheets"
	path = /obj/item/stack/material/gold
	category = "Source"
	is_stack = 1
	resources = list(MATERIAL_GOLD = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/lead
	name = "lead sheets"
	path = /obj/item/stack/material/lead
	category = "Source"
	is_stack = 1
	resources = list(MATERIAL_LEAD = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/silver
	name = "silver sheets"
	path = /obj/item/stack/material/silver
	category = "Source"
	is_stack = 1
	resources = list(MATERIAL_SILVER = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/phoron
	name = "phoron sheets"
	path = /obj/item/stack/material/phoron
	category = "Source"
	is_stack = 1
	resources = list(MATERIAL_PHORON = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/uranium
	name = "uranium sheets"
	path = /obj/item/stack/material/uranium
	category = "Source"
	is_stack = 1
	resources = list(MATERIAL_URANIUM = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/diamond
	name = "diamond sheets"
	path = /obj/item/stack/material/diamond
	category = "Source"
	is_stack = 1
	resources = list(MATERIAL_DIAMOND = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/tungsten
	name = "tungsten sheets"
	path = /obj/item/stack/material/tungsten
	category = "Source"
	is_stack = 1
	resources = list(MATERIAL_TUNGSTEN = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/niobium
	name = "niobium sheets"
	path = /obj/item/stack/material/niobium
	category = "Source"
	is_stack = 1
	resources = list(MATERIAL_NIOBIUM = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/titanium
	name = "glass sheets"
	path = /obj/item/stack/material/titanium
	category = "Source"
	is_stack = 1
	resources = list(MATERIAL_TITANIUM = SHEET_MATERIAL_AMOUNT)

// Alloyed materials that are re-used are placed here

/datum/alloy_processor/recipe/brass_source
	name = "brass sheets"
	path = /obj/item/stack/material/brass
	category = "Source Alloy"
	is_stack = 1
	resources = list(MATERIAL_BRASS = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/bronze_source
	name = "bronze sheets"
	path = /obj/item/stack/material/bronze
	category = "Source Alloy"
	is_stack = 1
	resources = list(MATERIAL_BRONZE = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/plasteel_source
	name = "plasteel sheets"
	path = /obj/item/stack/material/plasteel
	category = "Source Alloy"
	is_stack = 1
	resources = list(MATERIAL_PLASTEEL = SHEET_MATERIAL_AMOUNT)

// Basic Alloys is arbitrary, but should mostly consist of relatively normal alloys + plasteel and OCP.

/datum/alloy_processor/recipe/rglass
	name = "reinforced glass sheets"
	path = /obj/item/stack/material/glass/reinforced
	category = "Basic Alloying"
	is_stack = 1
	resources = list(MATERIAL_GLASS = (SHEET_MATERIAL_AMOUNT/2), MATERIAL_STEEL = (SHEET_MATERIAL_AMOUNT/2))

/datum/alloy_processor/recipe/brass
	name = "glass sheets alloying"
	path = /obj/item/stack/material/brass
	category = "Basic Alloying"
	is_stack = 1
	resources = list(MATERIAL_BRASS = SHEET_MATERIAL_AMOUNT)

/datum/alloy_processor/recipe/alubronze
	name = "aluminium-bronze sheets alloying"
	path = /obj/item/stack/material/alubronze
	category = "Basic Alloying"
	is_stack = 1
	resources = list(MATERIAL_BRONZE = (SHEET_MATERIAL_AMOUNT/0.8), MATERIAL_ALUMINIUM = (SHEET_MATERIAL_AMOUNT/4))

/datum/alloy_processor/recipe/bronze
	name = "bronze sheets alloying"
	path = /obj/item/stack/material/bronze
	category = "Basic Alloying"
	is_stack = 1
	resources = list(MATERIAL_COPPER = (SHEET_MATERIAL_AMOUNT/1.6), MATERIAL_TIN = (SHEET_MATERIAL_AMOUNT/16))

/datum/alloy_processor/recipe/lsa
	name = "leaded steel sheets alloying"
	path = /obj/item/stack/material/lsa
	category = "Basic Alloying"
	is_stack = 1
	resources = list(MATERIAL_STEEL = (SHEET_MATERIAL_AMOUNT), MATERIAL_LEAD = (SHEET_MATERIAL_AMOUNT/1.6))

/datum/alloy_processor/recipe/plasteel
	name = "plasteel sheets alloying"
	path = /obj/item/stack/material/plasteel
	category = "Basic Alloying"
	is_stack = 1
	resources = list(MATERIAL_STEEL = (SHEET_MATERIAL_AMOUNT/0.8), MATERIAL_PLATINUM = (SHEET_MATERIAL_AMOUNT/1.6))

/datum/alloy_processor/recipe/ocp
	name = MATERIAL_OSMIUM_CARBIDE_PLASTEEL
	path = /obj/item/stack/material/ocp
	category = "Basic Alloying"
	is_stack = 1
	resources = list(MATERIAL_PLASTEEL = (SHEET_MATERIAL_AMOUNT/0.25), MATERIAL_OSMIUM = (SHEET_MATERIAL_AMOUNT/0.5))

/* Advanced Alloys are any alloys that will be available to make only in the R&D lab.
The trick here is that since the alloy processor doesn't have anything extra to add when hacked, we disable that feature, mark the Processor in the Mat. Lab as "hacked" in the variables,
and add more 'advanced' materials as "hacked only" items. Until we can get more code knowledge or an actually competent coder, this will do.
I'm a disappointment to IT Engineers everywhere.
*/

/datum/alloy_processor/recipe/plastinium
	name = "plastinium sheets alloying"
	path = /obj/item/stack/material/plastinium
	hidden = 1
	category = "Advanced Alloying"
	is_stack = 1
	resources = list(MATERIAL_ALUMINIUM = (SHEET_MATERIAL_AMOUNT/1.6), MATERIAL_PLATINUM = (SHEET_MATERIAL_AMOUNT/0.8),MATERIAL_STEEL = (SHEET_MATERIAL_AMOUNT/0.625))

/datum/alloy_processor/recipe/titasteel
	name = "titanium steel sheets alloying"
	path = /obj/item/stack/material/titasteel
	hidden = 1
	category = "Advanced Alloying"
	is_stack = 1
	resources = list(MATERIAL_TITANIUM = (SHEET_MATERIAL_AMOUNT/1.6),MATERIAL_STEEL = (SHEET_MATERIAL_AMOUNT/0.625))

/datum/alloy_processor/recipe/rtsl
	name = "reinforced titanium-steel sheets alloying"
	path = /obj/item/stack/material/rtsl
	hidden = 1
	category = "Advanced Alloying"
	is_stack = 1
	resources = list(MATERIAL_TITANIUM = (SHEET_MATERIAL_AMOUNT/1.6), MATERIAL_LEAD = (SHEET_MATERIAL_AMOUNT/0.8),MATERIAL_STEEL = (SHEET_MATERIAL_AMOUNT/0.625))

/datum/alloy_processor/recipe/tungsteel
	name = "tungsteel sheets alloying"
	path = /obj/item/stack/material/tungsteel
	hidden = 1
	category = "Advanced Alloying"
	is_stack = 1
	resources = list(MATERIAL_ALUMINIUM = (SHEET_MATERIAL_AMOUNT/1.6),MATERIAL_STEEL = (SHEET_MATERIAL_AMOUNT/0.625))

/datum/alloy_processor/recipe/psteel
	name = "pyrrhic steel sheets alloying"
	path = /obj/item/stack/material/psteel
	hidden = 1
	category = "Advanced Alloying"
	is_stack = 1
	resources = list(MATERIAL_TUNGSTEN = (SHEET_MATERIAL_AMOUNT/0.8), MATERIAL_NIOBIUM = (SHEET_MATERIAL_AMOUNT/0.8),MATERIAL_STEEL = (SHEET_MATERIAL_AMOUNT/0.8))
