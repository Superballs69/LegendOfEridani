/datum/species/tajara/dahaz_khanar
	name = SPECIES_DAHAZ_KHANAR
	name_plural = SPECIES_DAHAZ_KHANAR

	genders = list(MALE, FEMALE, PLURAL)

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/tail, /datum/unarmed_attack/claws, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/bite/venom)
	slowdown = -0.3
	brute_mod = 1
	burn_mod =  1
	flash_mod = 1.2
	description = "Placeholder."

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_TAJARA_NAJD,
			CULTURE_TAJARA_ZHADJA,
			CULTURE_HUMAN_ALESIAN,
			CULTURE_HUMAN_SVETSLANDIAN,
			CULTURE_HUMAN_MAYWORTHIAN
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_NAJD,
			HOME_SYSTEM_ZHADJA,
			HOME_SYSTEM_ALESIA,
			HOME_SYSTEM_SVETSLAND,
			HOME_SYSTEM_MAYWORTH,

		)
	)

	default_cultural_info = list(TAG_FACTION = FACTION_TAJARA_WSZ)