/datum/species/machine
	name = SPECIES_IPC
	name_plural = "machines"

	description = "Positronic intelligence really took off in the 26th century, and it is not uncommon to see independant, free-willed \
	robots on many human stations, particularly in fringe systems where standards are slightly lax and public opinion less relevant \
	to corporate operations. IPCs (Integrated Positronic Chassis) are a loose category of self-willed, or not, robots with a humanoid form, \
	generally self-owned after being 'born' into servitude; they are reliable and dedicated workers, albeit more than slightly \
	inhuman in outlook and perspective."
	cyborg_noun = null

	preview_icon = 'icons/mob/human_races/species/ipc/preview.dmi'

	unarmed_types = list(/datum/unarmed_attack/punch)
	rarity_value = 2
	strength = STR_VHIGH

	min_age = 0
	max_age = 130

	brute_mod = 0.8 //
	burn_mod = 0.7  //
	slowdown = 0.7

	warning_low_pressure = 20
	hazard_low_pressure = -1

	cold_level_1 = SYNTH_COLD_LEVEL_1
	cold_level_2 = SYNTH_COLD_LEVEL_2
	cold_level_3 = SYNTH_COLD_LEVEL_3

	heat_level_1 = SYNTH_HEAT_LEVEL_1		// Gives them about 25 seconds in space before taking damage
	heat_level_2 = SYNTH_HEAT_LEVEL_2
	heat_level_3 = SYNTH_HEAT_LEVEL_3

	body_temperature = null
	passive_temp_gain = 4  // This should cause IPCs to stabilize at ~80 C in a 20 C environment.

	species_flags = SPECIES_FLAG_NO_SCAN | SPECIES_FLAG_NO_PAIN | SPECIES_FLAG_NO_POISON
	spawn_flags = SPECIES_CAN_JOIN | SPECIES_IS_WHITELISTED | SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_LACE
	appearance_flags = HAS_UNDERWEAR | HAS_EYE_COLOR //IPCs can wear undies too :(

	blood_color = "#1f181f"
	flesh_color = "#575757"
	virus_immune = 1

	has_organ = list(
		BP_POSIBRAIN = /obj/item/organ/internal/posibrain,
		BP_OPTICS = /obj/item/organ/internal/eyes/optics
		)

	vision_organ = BP_OPTICS

	heat_discomfort_level = 393.15
	heat_discomfort_strings = list(
		"Your CPU temperature probes warn you that you are approaching critical heat levels!"
		)
	genders = list(NEUTER)

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_POSITRONICS,
			CULTURE_VDPR,
			CULTURE_HUMAN_ETF,
			CULTURE_HUMAN_TAUCETIAN,
			CULTURE_HUMAN_NOVORUSSIAN,
			CULTURE_HUMAN_OTHER
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_ROOT,
			HOME_SYSTEM_VALEM,
			HOME_SYSTEM_EARTH,
			HOME_SYSTEM_LUNA,
			HOME_SYSTEM_MARS,
			HOME_SYSTEM_YAMATO_PRIME,
			HOME_SYSTEM_TAU_CETI,
			HOME_SYSTEM_ALESIA_II,
			HOME_SYSTEM_ALESIA,
			HOME_SYSTEM_SVETSLAND,
			HOME_SYSTEM_MAYWORTH,
			HOME_SYSTEM_NOVOROSSIYA,
			HOME_SYSTEM_JULIUS,
			HOME_SYSTEM_NEUE_BERLIN,
			HOME_SYSTEM_OTHER
		),
		TAG_FACTION = list(
			FACTION_POSITRONICS,
			FACTION_SOL_ALLIANCE,
			FACTION_FRONTIER_FED,
			FACTION_ERIDANI_FED,
			FACTION_NANOTRASEN,
			FACTION_PAN_ASIAN_UNION,
			FACTION_SYNDICATE,
			FACTION_KDI,
			FACTION_TAUCETI,
			FACTION_OTHER
		)
	)

	default_cultural_info = list(
		TAG_CULTURE = CULTURE_POSITRONICS,
		TAG_HOMEWORLD = HOME_SYSTEM_ROOT,
		TAG_FACTION = FACTION_POSITRONICS
	)

/datum/species/machine/handle_death(var/mob/living/carbon/human/H)
	..()
	if(istype(H.wear_mask,/obj/item/clothing/mask/monitor))
		var/obj/item/clothing/mask/monitor/M = H.wear_mask
		M.monitor_state_index = "blank"
		M.update_icon()

/datum/species/machine/post_organ_rejuvenate(var/obj/item/organ/org, var/mob/living/carbon/human/H)
	var/obj/item/organ/external/E = org
	if(istype(E) && !BP_IS_ROBOTIC(E))
		E.robotize("Morpheus")

/datum/species/machine/get_blood_name()
	return "oil"

/datum/species/machine/disfigure_msg(var/mob/living/carbon/human/H)
	var/datum/gender/T = gender_datums[H.get_gender()]
	return "<span class='danger'>[T.His] monitor is completely busted!</span>\n"
