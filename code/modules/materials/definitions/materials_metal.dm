/* IMPORTANT NOTES:
- Melting points temperatures are in Kelvin




*/
/material/uranium
	name = MATERIAL_URANIUM
	lore_text = "A highly radioactive metal. Commonly used as fuel in fission reactors."
	mechanics_text = "Uranium ingots are used as fuel in some forms of portable generator."
	stack_type = /obj/item/stack/material/uranium
	radioactivity = 12
	icon_base = "stone"
	door_icon_base = "stone"
	table_icon_base = "stone"
	icon_reinf = "reinf_stone"
	icon_colour = "#007a00"
	weight = 22
	stack_origin_tech = list(TECH_MATERIAL = 5)
	chem_products = list(
				/datum/reagent/uranium = 20
				)
	construction_difficulty = 2
	sale_price = 2

/material/gold
	name = MATERIAL_GOLD
	lore_text = "A heavy, soft, ductile metal. Once considered valuable enough to back entire currencies, now predominantly used in corrosion-resistant electronics."
	stack_type = /obj/item/stack/material/gold
	icon_colour = "#ffcc33"
	weight = 20
	hardness = 25
	melting_point = 1337
	integrity = 100
	stack_origin_tech = list(TECH_MATERIAL = 4)
	sheet_singular_name = "ingot"
	sheet_plural_name = "ingots"
	chem_products = list(
				/datum/reagent/gold = 20
				)
	construction_difficulty = 1
	ore_smelts_to = MATERIAL_GOLD
	ore_result_amount = 5
	ore_name = "native gold"
	ore_spread_chance = 10
	ore_scan_icon = "mineral_uncommon"
	xarch_ages = list(
		"thousand" = 999,
		"million" = 999,
		"billion" = 4,
		"billion_lower" = 3
		)
	ore_icon_overlay = "nugget"
	sale_price = 3
	conductivity = 44
	reflectivity = 0.3

/material/gold/bronze //placeholder for ashtrays
	name = MATERIAL_BRONZE
	lore_text = "An alloy of copper and tin."
	icon_colour = "#edd12f"
	stack_type = /obj/item/stack/material/bronze
	construction_difficulty = 1
	ore_smelts_to = null
	ore_compresses_to = null
	sale_price = null
	conductivity = 8
	melting_point = 1340
	hardness = 25
	alloy_materials = list(MATERIAL_COPPER = 1250, MATERIAL_TIN = 125) // Not a forgotten 0; Bronze is ~10% tin.
	alloy_product = TRUE
	sale_price = 1
	weight = 9
	reflectivity = 0.2

/material/copper
	name = MATERIAL_COPPER
	icon_colour = "#b87333"
	weight = 9
	hardness = 30
	conductivity = 59
	melting_point = 1380
	stack_type = /obj/item/stack/material/copper
	stack_origin_tech = list(TECH_MATERIAL = 2)
	sheet_singular_name = "ingot"
	sheet_plural_name = "ingots"
	chem_products = list(
		/datum/reagent/copper = 12,
		/datum/reagent/silver = 8
		)
	construction_difficulty = 1
	ore_smelts_to = MATERIAL_COPPER
	ore_result_amount = 5
	ore_spread_chance = 10
	ore_name = "malachite"
	ore_scan_icon = "mineral_common"
	ore_icon_overlay = "shiny"
	sale_price = 1
	reflectivity = 0.46

/material/silver
	name = MATERIAL_SILVER
	lore_text = "A soft, white, lustrous transition metal. Has many and varied industrial uses in electronics, solar panels and mirrors."
	stack_type = /obj/item/stack/material/silver
	icon_colour = "#d1e6e3"
	weight = 11
	hardness = 40
	conductivity = 63
	melting_point = 1261
	stack_origin_tech = list(TECH_MATERIAL = 3)
	sheet_singular_name = "ingot"
	sheet_plural_name = "ingots"
	chem_products = list(
				/datum/reagent/silver = 20
				)
	construction_difficulty = 1
	ore_smelts_to = MATERIAL_SILVER
	ore_result_amount = 5
	ore_spread_chance = 10
	ore_name = "native silver"
	ore_scan_icon = "mineral_uncommon"
	ore_icon_overlay = "shiny"
	sale_price = 2
	reflectivity = 0.15

/material/steel
	name = MATERIAL_STEEL
	lore_text = "A strong, flexible alloy of iron and carbon. Probably the single most fundamentally useful and ubiquitous substance in human space."
	stack_type = /obj/item/stack/material/steel
	integrity = 150
	melting_point = 1800
	brute_armor = 5
	hardness = 75
	weight = 8
	icon_base = "solid"
	icon_reinf = "reinf_over"
	icon_colour = "#666666"
	hitsound = 'sound/weapons/smash.ogg'
	chem_products = list(
				/datum/reagent/iron = 15,
				/datum/reagent/carbon = 5
				)
	alloy_materials = list(MATERIAL_HEMATITE = 1875, MATERIAL_GRAPHENE = 275)
	alloy_product = TRUE
	sale_price = 1
	ore_smelts_to = MATERIAL_STEEL
	reflectivity = 3

/material/steel/holographic
	name = "holo" + MATERIAL_STEEL
	display_name = MATERIAL_STEEL
	stack_type = null
	shard_type = SHARD_NONE
	conductive = 0
	alloy_materials = null
	alloy_product = FALSE
	sale_price = null
	hidden_from_codex = TRUE

/material/plasteel
	name = MATERIAL_PLASTEEL
	lore_text = "When regular high-tensile steel isn't tough enough to get the job done, the smart consumer turns to frankly absurd alloys of steel and an extremely hard platinum metal, osmium."
	stack_type = /obj/item/stack/material/plasteel
	integrity = 400
	melting_point = 2500 // Lowered from 6000, to add new heat-resistant materials instead.
	icon_base = "solid"
	icon_reinf = "reinf_over"
	icon_colour = "#777777"
	explosion_resistance = 25
	brute_armor = 6
	burn_armor = 10
	hardness = 80
	weight = 19
	reflectivity = 2
	conductivity = 13
	stack_origin_tech = list(TECH_MATERIAL = 2)
	hitsound = 'sound/weapons/smash.ogg'
	construction_difficulty = 1
	alloy_materials = list(MATERIAL_STEEL = 2500, MATERIAL_PLATINUM = 1250)
	alloy_product = TRUE
	sale_price = 2
	ore_smelts_to = MATERIAL_PLASTEEL

/material/plasteel/titanium
	name = MATERIAL_TITANIUM
	lore_text = "A light, strong, corrosion-resistant metal. Perfect for cladding high-velocity ballistic supply pods."
	brute_armor = 10
	burn_armor = 8
	integrity = 200
	melting_point = 2000
	hardness = 85
	weight = 5
	conductivity = 2.38
	stack_type = null
	icon_base = "metal"
	reflectivity = 2.6
	door_icon_base = "metal"
	icon_colour = "#d1e6e3"
	icon_reinf = "reinf_metal"
	construction_difficulty = 1
	alloy_materials = null
	alloy_product = FALSE

/material/plasteel/ocp
	name = MATERIAL_OSMIUM_CARBIDE_PLASTEEL
	stack_type = /obj/item/stack/material/ocp
	integrity = 200
	melting_point = 3000
	hardness = 70
	icon_base = "solid"
	icon_reinf = "reinf_over"
	icon_colour = "#9bc6f2"
	brute_armor = 4
	burn_armor = 20
	weight = 17
	stack_origin_tech = list(TECH_MATERIAL = 3)
	alloy_materials = list(MATERIAL_PLASTEEL = 7500, MATERIAL_OSMIUM = 3750)
	construction_difficulty = 2
	alloy_product = TRUE
	sale_price = 3
	reflectivity = 2

/material/osmium
	name = MATERIAL_OSMIUM
	lore_text = "An extremely hard form of platinum."
	stack_type = /obj/item/stack/material/osmium
	icon_colour = "#9999ff"
	stack_origin_tech = list(TECH_MATERIAL = 5)
	sheet_singular_name = "ingot"
	sheet_plural_name = "ingots"
	construction_difficulty = 1
	sale_price = 3
	melting_point = 2000
	conductivity = 9
	hardness = 60
	weight = 15
	reflectivity = 0.5
	ore_smelts_to = MATERIAL_OSMIUM

/material/tritium
	name = MATERIAL_TRITIUM
	lore_text = "A radioactive isotope of hydrogen. Useful as a fusion reactor fuel material."
	mechanics_text = "Tritium is useable as a fuel in some forms of portable generator. It can also be converted into a fuel rod suitable for a R-UST fusion plant injector by clicking a stack on a fuel compressor. It fuses hotter than deuterium but is correspondingly more unstable."
	stack_type = /obj/item/stack/material/tritium
	icon_colour = "#777777"
	stack_origin_tech = list(TECH_MATERIAL = 5)
	sheet_singular_name = "ingot"
	sheet_plural_name = "ingots"
	is_fusion_fuel = 1
	construction_difficulty = 2

/material/deuterium
	name = MATERIAL_DEUTERIUM
	lore_text = "One of the two stable isotopes of hydrogen; also known as heavy hydrogen. Useful as a chemically synthesised fusion reactor fuel material."
	mechanics_text = "Deuterium can be converted into a fuel rod suitable for a R-UST fusion plant injector by clicking a stack on a fuel compressor. It is the most 'basic' fusion fuel."
	stack_type = /obj/item/stack/material/deuterium
	icon_colour = "#999999"
	stack_origin_tech = list(TECH_MATERIAL = 3)
	sheet_singular_name = "ingot"
	sheet_plural_name = "ingots"
	is_fusion_fuel = 1
	construction_difficulty = 2

/material/mhydrogen
	name = MATERIAL_HYDROGEN
	lore_text = "When hydrogen is exposed to extremely high pressures and temperatures, such as at the core of gas giants like Jupiter, it can take on metallic properties and - more importantly - acts as a room temperature superconductor. Achieving solid metallic hydrogen at room temperature, though, has proven to be rather tricky."
	display_name = "metallic hydrogen"
	stack_type = /obj/item/stack/material/mhydrogen
	icon_colour = "#e6c5de"
	stack_origin_tech = list(TECH_MATERIAL = 6, TECH_POWER = 6, TECH_MAGNET = 5)
	is_fusion_fuel = 1
	chem_products = list(
				/datum/reagent/hydrazine = 20
				)
	construction_difficulty = 2
	ore_smelts_to = MATERIAL_TRITIUM
	ore_compresses_to = MATERIAL_HYDROGEN
	ore_name = "raw hydrogen"
	ore_scan_icon = "mineral_rare"
	ore_icon_overlay = "gems"
	sale_price = 5

/material/platinum
	name = MATERIAL_PLATINUM
	lore_text = "A very dense, unreactive, precious metal. Has many industrial uses, particularly as a catalyst."
	stack_type = /obj/item/stack/material/platinum
	icon_colour = "#9999ff"
	weight = 21
	stack_origin_tech = list(TECH_MATERIAL = 2)
	sheet_singular_name = "ingot"
	sheet_plural_name = "ingots"
	construction_difficulty = 1
	ore_smelts_to = MATERIAL_PLATINUM
	ore_compresses_to = MATERIAL_OSMIUM
	ore_result_amount = 5
	ore_spread_chance = 10
	ore_name = "raw platinum"
	ore_scan_icon = "mineral_rare"
	ore_icon_overlay = "shiny"
	sale_price = 5
	conductivity = 9
	melting_point = 2000
	hardness = 43
	reflectivity = 2.1

/material/iron
	name = MATERIAL_IRON
	lore_text = "A ubiquitous, very common metal. The epitaph of stars and the primary ingredient in Earth's core."
	stack_type = /obj/item/stack/material/iron
	icon_colour = "#5c5454"
	weight = 4
	reflectivity = 3.2
	sheet_singular_name = "ingot"
	sheet_plural_name = "ingots"
	hitsound = 'sound/weapons/smash.ogg'
	chem_products = list(
				/datum/reagent/iron = 20
				)
	sale_price = 1

//New materials
/material/tin
	name = MATERIAL_TIN
	lore_text = "A light metal, with many simpler applications, or used to create bronze."
	stack_type = /obj/item/stack/material/tin
	icon_colour = "#5c5454"
	weight = 7
	sheet_singular_name = "sheet"
	sheet_plural_name = "sheets"
	hitsound = 'sound/weapons/smash.ogg'
	sale_price = 1
	conductivity = 9
	melting_point = 500
	hardness = 18
	reflectivity = 2.1

/material/zinc
	name = MATERIAL_ZINC
	lore_text = "A metal known for its anti-corrosion applications."
	stack_type = /obj/item/stack/material/zinc
	icon_colour = "#5c5454"
	weight = 7
	sheet_singular_name = "sheet"
	sheet_plural_name = "sheets"
	hitsound = 'sound/weapons/smash.ogg'
	sale_price = 1
	conductivity = 17
	melting_point = 700
	hardness = 25
	reflectivity = 1.5

/material/lead
	name = MATERIAL_LEAD
	lore_text = "A dense metal, used to block radiations."
	stack_type = /obj/item/stack/material/lead
	icon_colour = "#5c5454"
	weight = 14
	sheet_singular_name = "sheet"
	sheet_plural_name = "sheets"
	hitsound = 'sound/weapons/smash.ogg'
	sale_price = 1
	conductivity = 5
	melting_point = 600
	hardness = 15
	reflectivity = 1.13

/material/aluminium
	name = MATERIAL_ALUMINIUM
	lore_text = "A common metal, strong and flexible."
	stack_type = /obj/item/stack/material/aluminium
	icon_colour = "#5c5454"
	sheet_singular_name = "sheet"
	sheet_plural_name = "sheets"
	hitsound = 'sound/weapons/smash.ogg'
	sale_price = 1
	conductivity = 37
	melting_point = 960
	hardness = 29
	weight = 3
	reflectivity = 2.16

/material/tungsten
	name = MATERIAL_TUNGSTEN
	lore_text = "A strong metal, capable of withstanding extreme temperature by itself."
	stack_type = /obj/item/stack/material/tungsten
	icon_colour = "#5c5454"
	weight = 30
	sheet_singular_name = "sheet"
	sheet_plural_name = "sheets"
	hitsound = 'sound/weapons/smash.ogg'
	sale_price = 3
	conductivity = 9
	melting_point = 3722
	hardness = 75
	reflectivity = 4

/material/niobium
	name = MATERIAL_NIOBIUM
	lore_text = "A strong metal, capable of withstanding extreme temperature by itself."
	stack_type = /obj/item/stack/material/niobium
	icon_colour = "#5c5454"
	weight = 40
	sheet_singular_name = "sheet"
	sheet_plural_name = "sheets"
	hitsound = 'sound/weapons/smash.ogg'
	sale_price = 4
	conductivity = 2
	melting_point = 3000
	hardness = 60
	reflectivity = 1.3

//New alloys
/material/brass
	name = MATERIAL_BRASS
	stack_type = /obj/item/stack/material/brass
	icon_colour = "#5c5454"
	sheet_singular_name = "sheet"
	sheet_plural_name = "sheets"
	hitsound = 'sound/weapons/smash.ogg'
	sale_price = 1
	alloy_materials = list(MATERIAL_ZINC = 425, MATERIAL_COPPER = 1250)
	alloy_product = TRUE
	ore_smelts_to = MATERIAL_BRASS
	conductivity = 16
	melting_point = 1200
	hardness = 40
	weight = 10
	reflectivity = 2

/material/lsa // Leaded-Steel
	name = MATERIAL_LSA
	stack_type = /obj/item/stack/material/lsa
	icon_colour = "#5c5454"
	sheet_singular_name = "sheet"
	sheet_plural_name = "sheets"
	hitsound = 'sound/weapons/smash.ogg'
	sale_price = 2
	alloy_materials = list(MATERIAL_IRON = 1250, MATERIAL_LEAD = 1250, MATERIAL_GRAPHENE = 250)
	alloy_product = TRUE
	ore_smelts_to = MATERIAL_LSA
	conductivity = 8
	melting_point = 1700
	hardness = 60
	weight = 13
	reflectivity = 2

/material/alubronze
	name = MATERIAL_ALUBRONZE
	stack_type = /obj/item/stack/material/alubronze
	icon_colour = "#5c5454"
	melting_point = 1000
	sheet_singular_name = "sheet"
	sheet_plural_name = "sheets"
	hitsound = 'sound/weapons/smash.ogg'
	sale_price = 2
	alloy_materials = list(MATERIAL_ALUMINIUM = 500, MATERIAL_BRONZE = 2500)
	alloy_product = TRUE
	ore_smelts_to = MATERIAL_ALUBRONZE
	conductivity = 14
	hardness = 30
	weight = 14
	reflectivity = 3

/material/plastinium
	name = MATERIAL_PLASTINIUM
	stack_type = /obj/item/stack/material/plastinium
	icon_colour = "#5c5454"
	melting_point = 1600
	sheet_singular_name = "sheet"
	sheet_plural_name = "sheets"
	hitsound = 'sound/weapons/smash.ogg'
	sale_price = 1
	conductivity = 8
	alloy_materials = list(MATERIAL_ALUMINIUM = 1250, MATERIAL_PLATINUM = 2500, MATERIAL_GRAPHENE = 650, MATERIAL_IRON = 2500)
	hardness = 50
	weight = 18
	reflectivity = 2

/material/titasteel
	name = MATERIAL_TITASTEEL
	lore_text = "Titanium Steel, made to take quite some hit, in exchange for less resistance against heat."
	stack_type = /obj/item/stack/material/titasteel
	melting_point = 1400
	icon_colour = "#5c5454"
	sheet_singular_name = "sheet"
	sheet_plural_name = "sheets"
	hitsound = 'sound/weapons/smash.ogg'
	sale_price = 1
	conductivity = 9
	hardness = 90
	weight = 30
	reflectivity = 1
	alloy_materials = list(MATERIAL_TITANIUM = 1250, MATERIAL_GRAPHENE = 650, MATERIAL_IRON = 2500)

/material/rtsl
	name = MATERIAL_RTSL
	lore_text = "Like normal Titanium Steel, the Reinforced Titanium-Steel allow is capable of resisting strong hit, along with the capacity of absorbing huge doses of radiations."
	stack_type = /obj/item/stack/material/rtsl
	melting_point = 1500
	icon_colour = "#5c5454"
	sheet_singular_name = "sheet"
	sheet_plural_name = "sheets"
	hitsound = 'sound/weapons/smash.ogg'
	sale_price = 1
	conductivity = 8
	hardness = 98
	weight = 40
	reflectivity = 1
	alloy_materials = list(MATERIAL_TITANIUM = 1250, MATERIAL_GRAPHENE = 650, MATERIAL_IRON = 2500, MATERIAL_LEAD = 2500)

/material/tungsteel
	name = MATERIAL_TUNGSTEEL
	lore_text = "Tungsteel, made to resist extreme temperatures."
	stack_type = /obj/item/stack/material/tungsteel
	melting_point = 12000
	icon_colour = "#5c5454"
	sheet_singular_name = "sheet"
	sheet_plural_name = "sheets"
	hitsound = 'sound/weapons/smash.ogg'
	sale_price = 1
	conductivity = 7
	hardness = 75
	weight = 40
	reflectivity = 2
	alloy_materials = list(MATERIAL_TUNGSTEN = 1250, MATERIAL_GRAPHENE = 650, MATERIAL_IRON = 2500)

/material/psteel
	name = MATERIAL_PSTEEL
	lore_text = "Pyrrhic Steel, made to resist any hot stuff the universe might want to throw."
	stack_type = /obj/item/stack/material/psteel
	melting_point = 100000 // Good luck melting that.
	icon_colour = "#5c5454"
	sheet_singular_name = "sheet"
	sheet_plural_name = "sheets"
	hitsound = 'sound/weapons/smash.ogg'
	sale_price = 1
	conductivity = 8
	hardness = 99
	weight = 50
	reflectivity = 4
	alloy_materials = list(MATERIAL_NIOBIUM = 2500, MATERIAL_GRAPHENE = 2500, MATERIAL_IRON = 2500, MATERIAL_TUNGSTEN = 2500)

// Adminspawn only, do not let anyone get this.
/material/voxalloy
	name = MATERIAL_VOX
	display_name = "durable alloy"
	stack_type = null
	icon_colour = "#6c7364"
	integrity = 1200
	melting_point = 6000       // Hull plating.
	explosion_resistance = 200 // Hull plating.
	hardness = 500
	weight = 500
	construction_difficulty = 1
	hidden_from_codex = TRUE

// Likewise.
/material/voxalloy/elevatorium
	name = MATERIAL_ELEVATORIUM
	display_name = "elevator panelling"
	icon_colour = "#666666"
	construction_difficulty = 2
	hidden_from_codex = TRUE

/material/aliumium
	name = MATERIAL_ALIUMIUM
	display_name = "alien alloy"
	stack_type = null
	icon_base = "jaggy"
	door_icon_base = "metal"
	icon_reinf = "reinf_metal"
	hitsound = 'sound/weapons/smash.ogg'
	sheet_singular_name = "chunk"
	sheet_plural_name = "chunks"
	stack_type = /obj/item/stack/material/aliumium
	construction_difficulty = 2
	hidden_from_codex = TRUE

/material/aliumium/New()
	icon_base = "metal"
	icon_colour = rgb(rand(10,150),rand(10,150),rand(10,150))
	explosion_resistance = rand(25,40)
	brute_armor = rand(10,20)
	burn_armor = rand(10,20)
	hardness = rand(15,100)
	integrity = rand(200,400)
	melting_point = rand(400,10000)
	..()

/material/aliumium/place_dismantled_girder(var/turf/target, var/material/reinf_material)
	return

/material/hematite
	name = MATERIAL_HEMATITE
	stack_type = null
	icon_colour = "#aa6666"
	ore_smelts_to = MATERIAL_IRON
	ore_result_amount = 5
	ore_spread_chance = 25
	ore_scan_icon = "mineral_common"
	ore_name = "hematite"
	ore_icon_overlay = "lump"
	sale_price = 1
