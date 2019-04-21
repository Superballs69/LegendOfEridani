//Makes sure we don't get any merchant antags as a balance concern. Can also be used for future Torch specific antag restrictions.
/datum/antagonist/changeling
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/merchant, /datum/job/captain, /datum/job/hop)

/datum/antagonist/godcultist
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/chaplain, /datum/job/merchant, /datum/job/captain, /datum/job/hop, /datum/job/hos)

/datum/antagonist/cultist
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/chaplain, /datum/job/psychiatrist, /datum/job/merchant, /datum/job/captain, /datum/job/hop, /datum/job/hos)

/datum/antagonist/loyalists
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/merchant)

/datum/antagonist/revolutionary
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/merchant)

/datum/antagonist/traitor
	blacklisted_jobs = list(/datum/job/merchant, /datum/job/captain, /datum/job/hop)

/datum/antagonist/ert
	var/sic //Second-In-Command
	leader_welcome_text = "As leader of the Emergency Response Team, you are part of the FCA's Federal Disaster Intervention Squad, and are there with the intention of restoring normal operation to the vessel or the safe evacuation of crew and passengers. You should, to this effect, aid the Captain or ranking Head of Staff aboard in their endeavours to achieve this."

/datum/antagonist/ert/equip(var/mob/living/carbon/human/player)

	if(!..())
		return 0

	var/decl/hierarchy/outfit/ert_outfit = outfit_by_type((player.mind == leader) ? /decl/hierarchy/outfit/job/eclipse/ert/leader : /decl/hierarchy/outfit/job/eclipse/ert)
	ert_outfit.equip(player)

	return 1
