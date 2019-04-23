/datum/job/submap/blueriver_researcher
	title = "Researcher"
	supervisors = "the Captain"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/bearcat/captain
	supervisors = "your bottom line"
	info = "Your ship has landed on a planet to investigate an anomaly. \
	However, after the expedition team decided to explore the near-by cavern, you haven't heard from them in a while.\
	Food supply is getting low, power is getting low, and you've heard some weird noises outside."

/datum/job/submap/blueriver_engineer
	title = "Ship Engineer"
	supervisors = "the Captain"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/bearcat/crew
	info = "Your ship has landed on a planet to investigate an anomaly. \
	However, after the expedition team decided to explore the near-by cavern, you haven't heard from them in a while.\
	Food supply is getting low, power is getting low, and you've heard some weird noises outside."

#define BLUERIVER_OUTFIT_JOB_NAME(job_name) ("Expedition Team - Job - " + job_name)

/decl/hierarchy/outfit/job/blueriver
	hierarchy_type = /decl/hierarchy/outfit/job/blueriver
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	r_pocket = /obj/item/device/radio
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/blueriver/crew
	name = BLUERIVER_OUTFIT_JOB_NAME("Researcher")
	id_type = /obj/item/weapon/card/id/bearcat
	uniform = /obj/item/clothing/under/syndicate/tacticool
	shoes = /obj/item/clothing/shoes/swat

/decl/hierarchy/outfit/job/blueriver/captain
	name = BLUERIVER_OUTFIT_JOB_NAME("Engineer")
	uniform = /obj/item/clothing/under/syndicate/tacticool
	shoes = /obj/item/clothing/shoes/swat
	id_type = /obj/item/weapon/card/id/bearcat


#undef BLUERIVER_OUTFIT_JOB_NAME

/obj/effect/submap_landmark/spawnpoint/researcher
	name = "researcher"

/obj/effect/submap_landmark/spawnpoint/engineer
	name = "engineer"
