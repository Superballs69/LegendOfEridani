/datum/job/pathfinder_commander
	title = "Pathfinder Commander"
	department = "Exploration"
	department_flag = EXP
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer and the Executive Officer"
	selection_color = "#68099e"
	minimal_player_age = 1
	economic_power = 7
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/eclipse/exploration/pathfinder_commander
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_ADEPT,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX,
	                    SKILL_COMBAT      = SKILL_EXPERT,
	                    SKILL_WEAPONS     = SKILL_EXPERT)
	skill_points = 22

	access = list(access_pathfinder, access_explorer, access_eva, access_maint_tunnels, access_bridge, access_emergency_storage, access_tech_storage, access_guppy_helm, access_solgov_crew, access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_cent_creed)

	software_on_spawn = list(/datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)
	required_education = EDUCATION_TIER_BACHELOR

/datum/job/pathfinder/get_description_blurb()
	return "You are the Pathfinder Commander. Your duty is to organize and lead the expeditions to away sites, carrying out the Arcturus-Project's Primary Mission. You command the Pathfinders. You make sure that expedition has the supplies and personnel it needs. You can pilot Charon if nobody else provides a pilot. Once on the away mission, your duty is to ensure that anything of scientific interest is brought back to the ship and passed to the relevant research lab."

/datum/job/pathfinder_pilot
	title = "Pathfinder Pilot"
	supervisors = "the Pathfinder"
	department = "Exploration"
	department_flag = EXP

	total_positions = 1
	spawn_positions = 1
	selection_color = "#68099e"
	economic_power = 10
	minimal_player_age = 0
	ideal_character_age = 25
	outfit_type = /decl/hierarchy/outfit/job/eclipse/exploration/pathfinder_pilot

	access = list(access_mining_office,
						access_mining_station, access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy,
						access_hangar, access_guppy_helm, access_mining, access_pilot, access_solgov_crew, access_eva, access_explorer)
	min_skill = list(	SKILL_EVA   = SKILL_BASIC,
						SKILL_PILOT = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	required_education = EDUCATION_TIER_BASIC

/datum/job/pathfinder_explorer
	title = "Pathfinder"
	department = "Exploration"
	department_flag = EXP
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Captain, the Head of Personnel and the Pathfinder Commander"
	selection_color = "#68099e"
	ideal_character_age = 20
	outfit_type = /decl/hierarchy/outfit/job/eclipse/exploration/pathfinder_explorer
	min_skill = list(   SKILL_EVA = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX,
	                    SKILL_COMBAT      = SKILL_EXPERT,
	                    SKILL_WEAPONS     = SKILL_EXPERT)

	access = list(access_explorer, access_maint_tunnels, access_eva, access_emergency_storage, access_guppy_helm, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar, access_cent_creed)

	software_on_spawn = list(/datum/computer_file/program/deck_management)
	required_education = EDUCATION_TIER_BASIC

/datum/job/explorer/get_description_blurb()
	return "You are Pathfinder. Your duty is to go on expeditions to away sites. The Pathfinder Commander is your team leader. You are to look for anything of economic or scientific interest to the SCG - mineral deposits, alien flora/fauna, artifacts. You will also likely encounter hazardous environments, aggressive wildlife or malfunctioning defense systems, so tread carefully."