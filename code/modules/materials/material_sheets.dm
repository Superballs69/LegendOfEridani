// Stacked resources. They use a material datum for a lot of inherited values.
/obj/item/stack/material
	force = 5.0
	throwforce = 5
	w_class = ITEM_SIZE_LARGE
	throw_speed = 3
	throw_range = 3
	max_amount = 60
	center_of_mass = null
	randpixel = 3

	var/default_type = MATERIAL_STEEL
	var/material/material
	var/perunit = SHEET_MATERIAL_AMOUNT
	var/apply_colour //temp pending icon rewrite

/obj/item/stack/material/New(var/loc, var/amount, var/_material)
	if(_material)
		default_type = _material
	if(!default_type)
		default_type = MATERIAL_STEEL
	..()

/obj/item/stack/material/Initialize()
	. = ..()
	material = SSmaterials.get_material_by_name("[default_type]")
	if(!material)
		return INITIALIZE_HINT_QDEL

	recipes = material.get_recipes()
	stacktype = material.stack_type
	if(islist(material.stack_origin_tech))
		origin_tech = material.stack_origin_tech.Copy()

	if(apply_colour)
		color = material.icon_colour

	if(material.conductive)
		obj_flags |= OBJ_FLAG_CONDUCTIBLE
	else
		obj_flags &= (~OBJ_FLAG_CONDUCTIBLE)

	update_strings()

/obj/item/stack/material/get_codex_value()
	return (material && !material.hidden_from_codex) ? "[lowertext(material.display_name)] (material)" : ..()

/obj/item/stack/material/proc/set_amount(var/_amount)
	amount = max(1, min(_amount, max_amount))
	update_strings()

/obj/item/stack/material/get_material()
	return material

/obj/item/stack/material/proc/update_strings()
	// Update from material datum.
	singular_name = material.sheet_singular_name

	matter = material.get_matter()
	for(var/mat in matter)
		matter[mat] *= amount

	if(amount>1)
		SetName("[material.use_name] [material.sheet_plural_name]")
		desc = "A stack of [material.use_name] [material.sheet_plural_name]."
		gender = PLURAL
	else
		SetName("[material.use_name] [material.sheet_singular_name]")
		desc = "A [material.sheet_singular_name] of [material.use_name]."
		gender = NEUTER

/obj/item/stack/material/use(var/used)
	. = ..()
	update_strings()
	return

/obj/item/stack/material/transfer_to(obj/item/stack/S, var/tamount=null, var/type_verified)
	var/obj/item/stack/material/M = S
	if(!istype(M) || material.name != M.material.name)
		return 0
	var/transfer = ..(S,tamount,1)
	if(src) update_strings()
	if(M) M.update_strings()
	return transfer

/obj/item/stack/material/attack_self(var/mob/user)
	if(!material.build_windows(user, src))
		..()

/obj/item/stack/material/attackby(var/obj/item/W, var/mob/user)
	if(isCoil(W))
		material.build_wired_product(user, W, src)
		return
	else if(istype(W, /obj/item/stack/rods))
		material.build_rod_product(user, W, src)
		return
	return ..()

/obj/item/stack/material/iron
	name = "iron"
	icon_state = "sheet-silver"
	default_type = MATERIAL_IRON
	apply_colour = 1

/obj/item/stack/material/sandstone
	name = "sandstone brick"
	icon_state = "sheet-sandstone"
	default_type = MATERIAL_SANDSTONE

/obj/item/stack/material/marble
	name = "marble brick"
	icon_state = "sheet-marble"
	default_type = MATERIAL_MARBLE

/obj/item/stack/material/marble/ten
	amount = 10

/obj/item/stack/material/marble/fifty
	amount = 50

/obj/item/stack/material/diamond
	name = "diamond"
	icon_state = "sheet-diamond"
	default_type = MATERIAL_DIAMOND

/obj/item/stack/material/diamond/ten
	amount = 10

/obj/item/stack/material/uranium
	name = "uranium"
	icon_state = "sheet-uranium"
	default_type = MATERIAL_URANIUM

/obj/item/stack/material/uranium/ten
	amount = 10

/obj/item/stack/material/phoron
	name = "solid phoron"
	icon_state = "sheet-phoron"
	default_type = MATERIAL_PHORON

/obj/item/stack/material/phoron/ten
	amount = 10

/obj/item/stack/material/phoron/fifty
	amount = 50

/obj/item/stack/material/plastic
	name = "plastic"
	icon_state = "sheet-plastic"
	default_type = MATERIAL_PLASTIC

/obj/item/stack/material/plastic/ten
	amount = 10

/obj/item/stack/material/plastic/fifty
	amount = 50

/obj/item/stack/material/gold
	name = "gold"
	icon_state = "sheet-gold"
	default_type = MATERIAL_GOLD

/obj/item/stack/material/gold/ten
	amount = 10

/obj/item/stack/material/silver
	name = "silver"
	icon_state = "sheet-silver"
	default_type = MATERIAL_SILVER

/obj/item/stack/material/silver/ten
	amount = 10

//Valuable resource, cargo can sell it.
/obj/item/stack/material/platinum
	name = "platinum"
	icon_state = "sheet-adamantine"
	default_type = MATERIAL_PLATINUM

/obj/item/stack/material/platinum/ten
	amount = 10

//Extremely valuable to Research.
/obj/item/stack/material/mhydrogen
	name = "metallic hydrogen"
	icon_state = "sheet-mythril"
	default_type = MATERIAL_HYDROGEN

/obj/item/stack/material/mhydrogen/ten
	amount = 10

//Fuel for MRSPACMAN generator.
/obj/item/stack/material/tritium
	name = "tritium"
	icon_state = "sheet-silver"
	default_type = MATERIAL_TRITIUM
	apply_colour = 1

/obj/item/stack/material/tritium/ten
	amount = 10

/obj/item/stack/material/tritium/fifty
	amount = 50

/obj/item/stack/material/osmium
	name = "osmium"
	icon_state = "sheet-silver"
	default_type = MATERIAL_OSMIUM
	apply_colour = 1

/obj/item/stack/material/osmium/ten
	amount = 10

/obj/item/stack/material/ocp
	name = "osmium-carbide plasteel"
	icon_state = "sheet-plasteel"
	item_state = "sheet-metal"
	default_type = MATERIAL_OSMIUM_CARBIDE_PLASTEEL
	apply_colour = 1

/obj/item/stack/material/ocp/ten
	amount = 10

/obj/item/stack/material/ocp/fifty
	amount = 50

// Fusion fuel.
/obj/item/stack/material/deuterium
	name = "deuterium"
	icon_state = "sheet-silver"
	default_type = MATERIAL_DEUTERIUM
	apply_colour = 1

/obj/item/stack/material/deuterium/fifty
	amount = 50

/obj/item/stack/material/steel
	name = "steel"
	icon_state = "sheet-metal"
	default_type = MATERIAL_STEEL

/obj/item/stack/material/steel/ten
	amount = 10

/obj/item/stack/material/steel/fifty
	amount = 50

/obj/item/stack/material/plasteel
	name = "plasteel"
	icon_state = "sheet-plasteel"
	item_state = "sheet-metal"
	default_type = MATERIAL_PLASTEEL

/obj/item/stack/material/plasteel/ten
	amount = 10

/obj/item/stack/material/plasteel/fifty
	amount = 50

/obj/item/stack/material/wood
	name = "wooden plank"
	icon_state = "sheet-wood"
	default_type = MATERIAL_WOOD

/obj/item/stack/material/wood/ten
	amount = 10

/obj/item/stack/material/wood/fifty
	amount = 50

/obj/item/stack/material/cloth
	name = "cloth"
	icon_state = "sheet-cloth"
	default_type = MATERIAL_CLOTH

/obj/item/stack/material/cardboard
	name = "cardboard"
	icon_state = "sheet-card"
	default_type = MATERIAL_CARDBOARD

/obj/item/stack/material/cardboard/ten
	amount = 10

/obj/item/stack/material/cardboard/fifty
	amount = 50

/obj/item/stack/material/leather
	name = "leather"
	desc = "The by-product of mob grinding."
	icon_state = "sheet-leather"
	default_type = MATERIAL_LEATHER

/obj/item/stack/material/glass
	name = "glass"
	icon_state = "sheet-glass"
	default_type = MATERIAL_GLASS

/obj/item/stack/material/glass/ten
	amount = 10

/obj/item/stack/material/glass/fifty
	amount = 50

/obj/item/stack/material/glass/reinforced
	name = "reinforced glass"
	icon_state = "sheet-rglass"
	default_type = MATERIAL_REINFORCED_GLASS

/obj/item/stack/material/glass/reinforced/ten
	amount = 10

/obj/item/stack/material/glass/reinforced/fifty
	amount = 50

/obj/item/stack/material/glass/phoronglass
	name = "borosilicate glass"
	desc = "This sheet is special platinum-glass alloy designed to withstand large temperatures."
	singular_name = "borosilicate glass sheet"
	icon_state = "sheet-phoronglass"
	default_type = MATERIAL_PHORON_GLASS

/obj/item/stack/material/glass/phoronrglass
	name = "reinforced borosilicate glass"
	desc = "This sheet is special platinum-glass alloy designed to withstand large temperatures. It is reinforced with few rods."
	singular_name = "reinforced borosilicate glass sheet"
	icon_state = "sheet-phoronrglass"
	default_type = MATERIAL_REINFORCED_PHORON_GLASS

/obj/item/stack/material/glass/phoronrglass/ten
	amount = 10

/obj/item/stack/material/aliumium
	name = "aliumium chunks"
	icon_state = "sheet-torn"
	default_type = MATERIAL_ALIUMIUM
	apply_colour = TRUE

/obj/item/stack/material/aliumium/ten
	amount = 10

/obj/item/stack/material/generic
	icon_state = "sheet-silver"

/obj/item/stack/material/generic/Initialize()
	. = ..()
	if(material) color = material.icon_colour

// New mat

/obj/item/stack/material/tin
	name = "tin"
	icon_state = "sheet-tin"
	default_type = MATERIAL_TIN

/obj/item/stack/material/tin/ten
	amount = 10

/obj/item/stack/material/tin/fifty
	amount = 50

/obj/item/stack/material/lead
	name = "tin"
	icon_state = "sheet-lead"
	default_type = MATERIAL_LEAD

/obj/item/stack/material/lead/ten
	amount = 10

/obj/item/stack/material/lead/fifty
	amount = 50

/obj/item/stack/material/aluminium
	name = "aluminium"
	icon_state = "sheet-aluminium"
	default_type = MATERIAL_ALUMINIUM

/obj/item/stack/material/aluminium/ten
	amount = 10

/obj/item/stack/material/aluminium/fifty
	amount = 50

/obj/item/stack/material/zinc
	name = "zinc"
	icon_state = "sheet-zinc"
	default_type = MATERIAL_ZINC

/obj/item/stack/material/zinc/ten
	amount = 10

/obj/item/stack/material/zinc/fifty
	amount = 50

/obj/item/stack/material/tungsten
	name = "tungsten"
	icon_state = "sheet-tungsten"
	default_type = MATERIAL_TUNGSTEN

/obj/item/stack/material/tungsten/ten
	amount = 10

/obj/item/stack/material/tungsten/fifty
	amount = 50

/obj/item/stack/material/niobium
	name = "niobium"
	icon_state = "sheet-niobium"
	default_type = MATERIAL_NIOBIUM

/obj/item/stack/material/niobium/ten
	amount = 10

/obj/item/stack/material/niobium/fifty
	amount = 50

/obj/item/stack/material/brass
	name = "brass"
	icon_state = "sheet-brass"
	default_type = MATERIAL_BRASS

/obj/item/stack/material/brass/ten
	amount = 10

/obj/item/stack/material/brass/fifty
	amount = 50

/obj/item/stack/material/lsa
	name = "lead-steel alloy"
	icon_state = "sheet-lsa"
	default_type = MATERIAL_LSA

/obj/item/stack/material/lsa/ten
	amount = 10

/obj/item/stack/material/lsa/fifty
	amount = 50

/obj/item/stack/material/alubronze
	name = "aluminium-bronze"
	icon_state = "sheet-alubronze"
	default_type = MATERIAL_ALUBRONZE

/obj/item/stack/material/alubronze/ten
	amount = 10

/obj/item/stack/material/alubronze/fifty
	amount = 50

/obj/item/stack/material/plastinium
	name = "plastinium steel"
	icon_state = "sheet-plastinium"
	default_type = MATERIAL_PLASTINIUM

/obj/item/stack/material/plastinium/ten
	amount = 10

/obj/item/stack/material/plastinium/fifty
	amount = 50

/obj/item/stack/material/titasteel
	name = "titanium steel"
	icon_state = "sheet-titasteel"
	default_type = MATERIAL_TITASTEEL

/obj/item/stack/material/titasteel/ten
	amount = 10

/obj/item/stack/material/titasteel/fifty
	amount = 50

/obj/item/stack/material/psteel
	name = "pyrrhic steel"
	icon_state = "sheet-psteel"
	default_type = MATERIAL_PSTEEL

/obj/item/stack/material/psteel/ten
	amount = 10

/obj/item/stack/material/psteel/fifty
	amount = 50

/obj/item/stack/material/rtsl
	name = "reinforced titanium steel-lead"
	icon_state = "sheet-rtsl"
	default_type = MATERIAL_RTSL

/obj/item/stack/material/rtsl/ten
	amount = 10

/obj/item/stack/material/rtsl/fifty
	amount = 50

/obj/item/stack/material/tungsteel
	name = "tungsteel"
	icon_state = "sheet-tungsteel"
	default_type = MATERIAL_TUNGSTEEL

/obj/item/stack/material/tungsteel/ten
	amount = 10

/obj/item/stack/material/tungsteel/fifty
	amount = 50

/obj/item/stack/material/copper
	name = "copper"
	icon_state = "sheet-copper"
	default_type = MATERIAL_COPPER

/obj/item/stack/material/copper/ten
	amount = 10

/obj/item/stack/material/copper/fifty
	amount = 50

/obj/item/stack/material/bronze
	name = "bronze"
	icon_state = "sheet-bronze"
	default_type = MATERIAL_BRONZE

/obj/item/stack/material/bronze/ten
	amount = 10

/obj/item/stack/material/bronze/fifty
	amount = 50

/obj/item/stack/material/brass
	name = "brass"
	icon_state = "sheet-brass"
	default_type = MATERIAL_BRASS

/obj/item/stack/material/brass/ten
	amount = 10

/obj/item/stack/material/brass/fifty
	amount = 50

/obj/item/stack/material/titanium
	name = "titanium"
	icon_state = "sheet-titanium"
	default_type = MATERIAL_TITANIUM

/obj/item/stack/material/titanium
	amount = 10

/obj/item/stack/material/titanium
	amount = 50