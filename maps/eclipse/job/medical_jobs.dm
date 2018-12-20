/datum/job/senior_doctor
	title = "Surgeon"
	department = "Medical"
	department_flag = MED
	minimal_player_age = 2
	ideal_character_age = 45
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Medical Officer"
	selection_color = "#013d3b"
	economic_power = 8
	alt_titles = list(
		"Trauma Surgeon")
	outfit_type = /decl/hierarchy/outfit/job/medical/doctor/surgeon
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_ADEPT,
	                    SKILL_ANATOMY     = SKILL_EXPERT,
	                    SKILL_CHEMISTRY   = SKILL_BASIC,
	                    SKILL_VIROLOGY    = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX,
	                    SKILL_VIROLOGY    = SKILL_MAX)
	skill_points = 32

	access = list(access_medical, access_morgue, access_virology, access_maint_tunnels, access_emergency_storage,
			            access_crematorium, access_chemistry, access_surgery,
			            access_medical_equip, access_solgov_crew, access_senmed)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)
	required_education = EDUCATION_TIER_MEDSCHOOL

/datum/job/doctor
	title = "Physician"
	department = "Medical"
	department_flag = MED
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Chief Medical Officer"
	economic_power = 7
	ideal_character_age = 40
	minimal_player_age = 0
	alt_titles = list(
		"Emergency Physician" = /decl/hierarchy/outfit/job/medical/doctor/emergency_physician)
	outfit_type = /decl/hierarchy/outfit/job/medical/doctor
	min_skill = list(   SKILL_EVA     = SKILL_BASIC,
	                    SKILL_MEDICAL = SKILL_BASIC,
	                    SKILL_ANATOMY = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX,
	                    SKILL_VIROLOGY    = SKILL_MAX)

	access = list(access_medical, access_morgue, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_eva, access_surgery, access_medical_equip, access_solgov_crew, access_hangar)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)
	skill_points = 26
	required_education = EDUCATION_TIER_TRADE

/datum/job/paramedic
	title = "Paramedic"
	department = "Medical"
	department_flag = MED
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Medical Officer and Medical Personnel"
	selection_color = "#013d3b"
	ideal_character_age = 20
	alt_titles = list(
		"Search and Rescue",
		"Emergency Medical Technician")
	outfit_type = /decl/hierarchy/outfit/job/eclipse/medical/paramedic
	skill_points = 4
	no_skill_buffs = TRUE

	min_skill = list(   SKILL_EVA     = SKILL_ADEPT,
	                    SKILL_HAULING = SKILL_ADEPT,
	                    SKILL_MEDICAL = SKILL_EXPERT,
	                    SKILL_ANATOMY = SKILL_ADEPT)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX,
	                    SKILL_VIROLOGY    = SKILL_MAX)

	access = list(access_medical, access_morgue, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_surgery, access_medical_equip, access_solgov_crew)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)
	required_education = EDUCATION_TIER_BASIC

/datum/job/paramedic/get_description_blurb()
	return "You are a Paramedic. You are the first-responders to retrieving any wounded crewmembers, including the Pathfinder team."

/datum/job/medical_trainee
	title = "Medical Resident"
	department = "Medical"
	department_flag = MED
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Chief Medical Officer and Medical Personnel"
	selection_color = "#013d3b"
	ideal_character_age = 20
	alt_titles = list(
		"Medical Technician",
		"Nurse")
	outfit_type = /decl/hierarchy/outfit/job/eclipse/medical/resident
	skill_points = 4
	no_skill_buffs = TRUE

	min_skill = list(   SKILL_EVA     = SKILL_ADEPT,
	                    SKILL_HAULING = SKILL_ADEPT,
	                    SKILL_MEDICAL = SKILL_EXPERT,
	                    SKILL_ANATOMY = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX,
	                    SKILL_VIROLOGY    = SKILL_MAX)

	access = list(access_medical, access_morgue, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_surgery, access_medical_equip, access_solgov_crew)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)
	required_education = EDUCATION_TIER_BASIC

/datum/job/medical_trainee/get_description_blurb()
	return "You are a Corpsman Trainee. You are learning how to treat and recover wounded crew from the more experienced medical personnel aboard. You are subordinate to the rest of the medical team."

/datum/job/labtech
	title = "Lab Technician"
	department = "Medical"
	department_flag = MED
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Chief Medical Officer, and Medical Personnel"
	selection_color = "#013d3b"
	economic_power = 4
	ideal_character_age = 30
	minimal_player_age = 0
	alt_titles = list(
		"Virologist" = /decl/hierarchy/outfit/job/eclipse/medical/labtech/virologist,
		"Pharmaceutical Technician",
		"Chemist" = /decl/hierarchy/outfit/job/eclipse/medical/labtech/chemist)
	outfit_type = /decl/hierarchy/outfit/job/eclipse/medical/labtech
	min_skill = list(   SKILL_MEDICAL   = SKILL_BASIC,
	                    SKILL_CHEMISTRY = SKILL_ADEPT)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 26

	access = list(access_medical, access_maint_tunnels, access_emergency_storage, access_medical_equip, access_solgov_crew, access_chemistry)
	minimal_access = list()
	required_education = EDUCATION_TIER_BACHELOR

/datum/job/biomech
	title = "Biomechanical Engineer"
	department = "Medical"
	department_flag = MED
	minimal_player_age = 0
	ideal_character_age = 45
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief Medical Officer and the Corporate Liaison"
	selection_color = "#013d3b"
	economic_power = 6
	alt_titles = list()
	outfit_type = /decl/hierarchy/outfit/job/eclipse/medical/biomech
	min_skill = list(   SKILL_ANATOMY		= SKILL_ADEPT,
		                SKILL_MEDICAL       = SKILL_ADEPT,
	                    SKILL_DEVICES		= SKILL_ADEPT)

	max_skill = list(   SKILL_MEDICAL     	= SKILL_MAX,
	                    SKILL_ANATOMY    	= SKILL_MAX,
	                    SKILL_DEVICES       = SKILL_MAX,
	                    SKILL_COMPUTER      = SKILL_MAX,
	                    SKILL_CONSTRUCTION 	= SKILL_EXPERT,
	                    SKILL_ELECTRICAL 	= SKILL_EXPERT)
	skill_points = 24
	access = list(access_robotics, access_robotics_engineering, access_tech_storage, access_morgue, access_medical, access_robotics_engineering, access_solgov_crew)
	minimal_access = list()
	required_education = EDUCATION_TIER_MEDSCHOOL
/datum/job/biomech/get_description_blurb()
	return "You are the Biomechanical Engineer. You are responsible for repairing, upgrading and handling all bio-synthetic crew (like FBPs) on board. You are also responsible for placing brains into MMI’s and anything involving augments. You answer to the Chief Medical Officer and the Corporate Liaison."

/datum/job/psychiatrist
	title = "Counselor"
	department = "Medical"
	department_flag = MED
	total_positions = 1
	spawn_positions = 1
	ideal_character_age = 40
	economic_power = 5
	minimal_player_age = 0
	supervisors = "the Chief Medical Officer"
	alt_titles = list(
		"Psychiatrist"
		)
	outfit_type = /decl/hierarchy/outfit/job/medical/psychiatrist
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX)

	access = list(access_medical, access_morgue, access_chapel_office, access_crematorium, access_psychiatrist, access_solgov_crew)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)
	required_education = EDUCATION_TIER_BASIC