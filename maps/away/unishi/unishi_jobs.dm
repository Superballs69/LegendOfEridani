/datum/job/submap/unishi_crew
	title = "Crew"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/unishi/crew
	supervisors = "your survival"
	info = "You remember waking up to alarms blaring in your face. Before you could react, a gush of hot air blew \
	you away, knocking you cold unconcious.  Before this happened you were a crew member \
	on this research vessel, SRV Verne, as it carried the members of the presitigous Shinkyou-to Technical Institute in \
	their pursuit of research. "

/datum/job/submap/unishi_researcher
	title = "Researcher"
	supervisors = "the crew"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/unishi/researcher
	info = "You remember waking up to alarms blaring in your face. Before you could react, a gush of hot air blew \
	you away, knocking you cold unconcious. Before this happened, you were a researcher, aboard SRV Hino-Maru."


#define UNISHI_OUTFIT_JOB_NAME(job_name) ("CTI Research Vessel - Job - " + job_name)
/decl/hierarchy/outfit/job/unishi
	hierarchy_type = /decl/hierarchy/outfit/job/unishi
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/unishi/crew
	name = UNISHI_OUTFIT_JOB_NAME("Crewman")
	r_pocket = /obj/item/device/radio
	shoes = /obj/item/clothing/shoes/black
	belt = /obj/item/weapon/storage/belt/utility/full

/decl/hierarchy/outfit/job/unishi/researcher
	name = UNISHI_OUTFIT_JOB_NAME("Researcher")
	uniform = /obj/item/clothing/under/rank/engineer
	suit = /obj/item/clothing/suit/storage/toggle/hoodie/cti
	shoes = /obj/item/clothing/shoes/black
	r_pocket = /obj/item/device/radio
	l_pocket = /obj/item/weapon/crowbar/prybar

#undef BEARCAT_OUTFIT_JOB_NAME
/obj/effect/submap_landmark/spawnpoint/unishi_crew
	name = "Crew"

/obj/effect/submap_landmark/spawnpoint/unishi_researcher
	name = "Researcher"