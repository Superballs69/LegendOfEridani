/********
Synthetic
********/

/datum/job/cyborg
	total_positions = 3
	spawn_positions = 3
	supervisors = "your laws"
	minimal_player_age = 3

/datum/job/ai
	minimal_player_age = 7

/*******
Civilian
*******/

/datum/job/assistant
	title = "Crewman"
	department = "Civilian"
	department_flag = CIV
	total_positions = 12
	spawn_positions = 12
	supervisors = "the Executive Officer"
	selection_color = "#515151"
	economic_power = 6
	alt_titles = list(
		"General Technician",
		"Technical Assistant")
	outfit_type = /decl/hierarchy/outfit/job/eclipse/crewman
	required_education = EDUCATION_TIER_NONE

/datum/job/merchant
	title = "Merchant"
	department = "Civilian"
	department_flag = CIV
	total_positions = 2
	spawn_positions = 2
	availablity_chance = 30
	supervisors = "the invisible hand of the market"
	selection_color = "#515151"
	ideal_character_age = 30
	minimal_player_age = 0
	create_record = 0
	outfit_type = /decl/hierarchy/outfit/job/eclipse/merchant
	latejoin_at_spawnpoints = 1
	access = list(access_merchant)
	announced = FALSE
	min_skill = list(   SKILL_FINANCE = SKILL_ADEPT,
	                    SKILL_PILOT	  = SKILL_BASIC)
	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	skill_points = 24

/datum/job/stowaway
	title = "Stowaway"
	department = "Civilian"
	department_flag = CIV
	total_positions = 1
	spawn_positions = 1
	availablity_chance = 20
	supervisors = "yourself"
	selection_color = "#515151"
	ideal_character_age = 30
	minimal_player_age = 0
	create_record = 0
	account_allowed = 0
	outfit_type = /decl/hierarchy/outfit/job/eclipse/stowaway
	latejoin_at_spawnpoints = 1
	announced = FALSE