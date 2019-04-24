/material/proc/get_recipes()
	if(!recipes)
		generate_recipes()
	return recipes

/material/proc/create_recipe_list(base_type)
	. = list()
	for(var/recipe_type in subtypesof(base_type))
		. += new recipe_type(src)

/material/proc/generate_recipes()
	recipes = list()

	// If is_brittle() returns true, these are only good for a single strike.
	recipes += new/datum/stack_recipe/baseball_bat(src)
	recipes += new/datum/stack_recipe/ashtray(src)
	recipes += new/datum/stack_recipe/coin(src)
	recipes += new/datum/stack_recipe/spoon(src)
	recipes += new/datum/stack_recipe/ring(src)

	if(integrity>50)
		recipes += new/datum/stack_recipe/furniture/chair(src) //NOTE: the wood material has it's own special chair recipe
		recipes += new/datum/stack_recipe_list("padded [display_name] chairs", create_recipe_list(/datum/stack_recipe/furniture/chair/padded))
	if(integrity>=50)
		recipes += new/datum/stack_recipe/furniture/door(src)
		recipes += new/datum/stack_recipe/furniture/barricade(src)
		recipes += new/datum/stack_recipe/furniture/stool(src)
		recipes += new/datum/stack_recipe/furniture/bar_stool(src)
		recipes += new/datum/stack_recipe/furniture/bed(src)
		recipes += new/datum/stack_recipe/lock(src)
		recipes += new/datum/stack_recipe/railing(src)

	if(hardness>50)
		recipes += new/datum/stack_recipe/fork(src)
		recipes += new/datum/stack_recipe/knife(src)
		recipes += new/datum/stack_recipe/bell(src)
		recipes += new/datum/stack_recipe/blade(src)

/material/steel/generate_recipes()
	..()
	recipes += new/datum/stack_recipe_list("office chairs",list(
		new/datum/stack_recipe/furniture/chair/office/dark(src),
		new/datum/stack_recipe/furniture/chair/office/light(src)
		))
	recipes += new/datum/stack_recipe_list("comfy office chairs", create_recipe_list(/datum/stack_recipe/furniture/chair/office/comfy))
	recipes += new/datum/stack_recipe_list("comfy chairs", create_recipe_list(/datum/stack_recipe/furniture/chair/comfy))
	recipes += new/datum/stack_recipe_list("armchairs", create_recipe_list(/datum/stack_recipe/furniture/chair/arm))
	recipes += new/datum/stack_recipe/key(src)
	recipes += new/datum/stack_recipe/furniture/table_frame(src)
	recipes += new/datum/stack_recipe/furniture/rack(src)
	recipes += new/datum/stack_recipe/furniture/closet(src)
	recipes += new/datum/stack_recipe/furniture/canister(src)
	recipes += new/datum/stack_recipe/cannon(src)
	recipes += create_recipe_list(/datum/stack_recipe/tile/metal)
	recipes += new/datum/stack_recipe/rod(src)
	recipes += new/datum/stack_recipe/furniture/computerframe(src)
	recipes += new/datum/stack_recipe/furniture/girder(src)
	recipes += new/datum/stack_recipe/furniture/wall(src)
	recipes += new/datum/stack_recipe/furniture/machine(src)
	recipes += new/datum/stack_recipe/furniture/turret(src)
	recipes += new/datum/stack_recipe_list("airlock assemblies", create_recipe_list(/datum/stack_recipe/furniture/door_assembly))
	recipes += new/datum/stack_recipe/grenade(src)
	recipes += new/datum/stack_recipe/light(src)
	recipes += new/datum/stack_recipe/light_small(src)
	recipes += new/datum/stack_recipe/light_switch(src)
	recipes += new/datum/stack_recipe/light_switch/windowtint(src)
	recipes += new/datum/stack_recipe/apc(src)
	recipes += new/datum/stack_recipe/air_alarm(src)
	recipes += new/datum/stack_recipe/fire_alarm(src)
	recipes += new/datum/stack_recipe_list("modular computer frames", create_recipe_list(/datum/stack_recipe/computer))

/material/plasteel/generate_recipes()
	..()
	recipes += new/datum/stack_recipe/ai_core(src)
	recipes += new/datum/stack_recipe/furniture/crate(src)
	recipes += new/datum/stack_recipe/grip(src)

/material/stone/generate_recipes()
	..()
	recipes += new/datum/stack_recipe/furniture/planting_bed(src)

/material/plastic/generate_recipes()
	..()
	recipes += new/datum/stack_recipe/furniture/crate/plastic(src)
	recipes += new/datum/stack_recipe/bag(src)
	recipes += new/datum/stack_recipe/ivbag(src)
	recipes += create_recipe_list(/datum/stack_recipe/cartridge)
	recipes += create_recipe_list(/datum/stack_recipe/tile/light)
	recipes += new/datum/stack_recipe/hazard_cone(src)
	recipes += new/datum/stack_recipe/furniture/flaps(src)

/material/wood/generate_recipes()
	..()
	recipes += new/datum/stack_recipe/sandals(src)
	recipes += new/datum/stack_recipe/tile/wood(src)
	recipes += create_recipe_list(/datum/stack_recipe/furniture/chair/wood)
	recipes += new/datum/stack_recipe/crossbowframe(src)
	recipes += new/datum/stack_recipe/furniture/coffin(src)
	recipes += new/datum/stack_recipe/beehive_assembly(src)
	recipes += new/datum/stack_recipe/beehive_frame(src)
	recipes += new/datum/stack_recipe/furniture/bookcase(src)
	recipes += new/datum/stack_recipe/zipgunframe(src)
	recipes += new/datum/stack_recipe/coilgun(src)
	recipes += new/datum/stack_recipe/stick(src)
	recipes += new/datum/stack_recipe/noticeboard(src)
	recipes += new/datum/stack_recipe/firecamp(src)

/material/cardboard/generate_recipes()
	..()
	recipes += create_recipe_list(/datum/stack_recipe/box)
	recipes += new/datum/stack_recipe/cardborg_suit(src)
	recipes += new/datum/stack_recipe/cardborg_helmet(src)
	recipes += new/datum/stack_recipe_list("folders", create_recipe_list(/datum/stack_recipe/folder))