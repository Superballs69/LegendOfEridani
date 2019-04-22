/datum/species/tajaran
	name = SPECIES_TAJARA
	name_plural = "Tajaran"
	icobase = 'icons/mob/human_races/species/tajara/body.dmi'
	deform =  'icons/mob/human_races/species/tajara/deformed_body.dmi'
	preview_icon = 'icons/mob/human_races/species/tajara/preview.dmi'
	tail = "tajtail"
	tail_animation = 'icons/mob/species/tajaran/tail.dmi'
	default_h_style = "Tajaran Ears"
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/claws, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp)
	description = "No other race could stand to survive the extreme cold of the Tajaran homeworlds without extensive preparation. \
	In their more primal stages of evolution, they dwelled in caves, which led to the development of very well developed eyes capable of high-visibility in dark areas. \
	In a more modern setting, they live in villages above ground, wearing heavy furs and insulated clothing.\
	Tajarans’ sleeping habits are very strange compared humans, as they have a waking period of around 48 hours, with an average of 24 hours of sleep following it. \
	In working environments they share with other races, they typically wear light clothing and avoid wearing layers like the plague, their fur causing them to sweat heavily should they not do so.\
	On the other hand, they typically wear heavy furs in the cold of their own worlds. A Tajaran’s lifespan is typically around 120~130 years, just barely outliving humans.\
	The Dahaz-Khanar Tajara are more aggressive specimens, known to be generally stoic, and rough. K'siri are more snobbish, but generally avoid conflict with other species and other K'siri. "
	darksight_range = 8
	darksight_tint = DARKTINT_GOOD
	slowdown = -0.5
	brute_mod = 1.15
	burn_mod =  1.15
	flash_mod = 1.4
	gluttonous = GLUT_TINY
	assisted_langs = list(LANGUAGE_NABBER)
	health_hud_intensity = 1.75

	min_age = 19
	max_age = 140

	cold_level_1 = 200 //Default 260
	cold_level_2 = 140 //Default 200
	cold_level_3 = 80  //Default 120

	heat_level_1 = 330 //Default 360
	heat_level_2 = 380 //Default 400
	heat_level_3 = 800 //Default 1000

	primitive_form = "Farwa"

	spawn_flags = SPECIES_CAN_JOIN | SPECIES_IS_WHITELISTED
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	flesh_color = "#afa59e"
	base_color = "#333333"
	blood_color = "#862a51"
	organs_icon = 'icons/mob/human_races/species/tajara/organs.dmi'
	reagent_tag = IS_TAJARA

	move_trail = /obj/effect/decal/cleanable/blood/tracks/paw

	heat_discomfort_level = 292
	heat_discomfort_strings = list(
		"Your fur prickles in the heat.",
		"You feel uncomfortably warm.",
		"Your overheated skin itches."
		)
	cold_discomfort_level = 275

	sexybits_location = BP_GROIN

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_TAJARA_NAJD,
			CULTURE_TAJARA_ZHADJA
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_NAJD
		),
		TAG_FACTION = list(
			FACTION_TAJARA_NAJD,
			FACTION_SOL_ALLIANCE
		),
		TAG_RELIGION = list(
			RELIGION_OTHER,
			RELIGION_SHAMSA,
			RELIGION_ALQAM
		)
	)

/datum/species/tajaran/equip_survival_gear(var/mob/living/carbon/human/H)
	..()
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sandal(H),slot_shoes)
	H.equip_to_slot_or_del(new /obj/item/clothing/glasses/tajblind(H),slot_glasses)

/datum/species/tajara/get_bodytype(var/mob/living/carbon/human/H)
	return SPECIES_TAJARA