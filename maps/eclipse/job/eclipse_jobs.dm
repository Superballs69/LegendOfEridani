/datum/map/eclipse
	species_to_job_whitelist = list(
		/datum/species/adherent = list(/datum/job/ai, /datum/job/cyborg, /datum/job/assistant, /datum/job/janitor, /datum/job/chef, /datum/job/bartender, /datum/job/cargo_tech,
										/datum/job/engineer_apprentice, /datum/job/roboticist, /datum/job/labtech, /datum/job/scientist_assistant, /datum/job/scientist),
		/datum/species/nabber = list(/datum/job/ai, /datum/job/cyborg, /datum/job/janitor, /datum/job/scientist_assistant, /datum/job/labtech,
									 /datum/job/roboticist, /datum/job/biomech, /datum/job/cargo_tech, /datum/job/chef, /datum/job/engineer_apprentice, /datum/job/paramedic, /datum/job/bartender),
		/datum/species/vox = list(/datum/job/ai, /datum/job/cyborg, /datum/job/merchant, /datum/job/stowaway)
	)

	allowed_jobs = list(/datum/job/captain, /datum/job/hop, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos,
						/datum/job/fdi, /datum/job/liaison,
						/datum/job/pathfinder_commander, /datum/job/pathfinder_pilot, /datum/job/pathfinder_specialist, /datum/job/pathfinder_explorer,
						/datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/engineer_apprentice,
						/datum/job/isec, /datum/job/tiger, /datum/job/warden, /datum/job/iaa,
						/datum/job/senior_doctor, /datum/job/doctor, /datum/job/paramedic, /datum/job/biomech, /datum/job/labtech, /datum/job/medical_trainee,
						/datum/job/psychiatrist,
						/datum/job/qm, /datum/job/cargo_tech, /datum/job/mining,
						/datum/job/janitor, /datum/job/chef, /datum/job/bartender,
						/datum/job/senior_scientist, /datum/job/scientist, /datum/job/scientist_assistant, /datum/job/xenolife_technician,
						/datum/job/ai, /datum/job/cyborg,
						/datum/job/assistant,
						/datum/job/merchant, /datum/job/stowaway
						)

#define HUMAN_ONLY_JOBS /datum/job/captain, /datum/job/hos, /datum/job/fdi, /datum/job/iaa
	species_to_job_blacklist = list(
		/datum/species/unathi  = list(HUMAN_ONLY_JOBS, /datum/job/liaison),
		/datum/species/skrell  = list(HUMAN_ONLY_JOBS),
		/datum/species/tajaran = list(HUMAN_ONLY_JOBS),
		/datum/species/machine = list(HUMAN_ONLY_JOBS),
		/datum/species/diona   = list(HUMAN_ONLY_JOBS, /datum/job/isec, /datum/job/tiger, /datum/job/rd, /datum/job/liaison),
		/datum/species/nabber  = list(HUMAN_ONLY_JOBS, /datum/job/isec, /datum/job/tiger, /datum/job/rd, /datum/job/liaison)
	)
#undef HUMAN_ONLY_JOBS

	access_modify_region = list(
		ACCESS_REGION_SECURITY = list(access_change_ids),
		ACCESS_REGION_MEDBAY = list(access_change_ids),
		ACCESS_REGION_RESEARCH = list(access_rd, access_change_ids),
		ACCESS_REGION_ENGINEERING = list(access_change_ids),
		ACCESS_REGION_COMMAND = list(access_change_ids),
		ACCESS_REGION_GENERAL = list(access_change_ids),
		ACCESS_REGION_SUPPLY = list(access_change_ids),
		ACCESS_REGION_NT = list(access_rd)
	)

// Some jobs for nabber grades defined here due to map-specific job datums.
/decl/cultural_info/education/nabber/New()
	LAZYADD(valid_jobs, /datum/job/scientist_assistant)
	..()

/decl/cultural_info/education/nabber/b/New()
	LAZYADD(valid_jobs, /datum/job/cargo_tech)
	..()

/decl/cultural_info/education/nabber/a/New()
	LAZYADD(valid_jobs, /datum/job/engineer_apprentice)
	..()

/decl/cultural_info/education/nabber/a/plus/New()
	LAZYADD(valid_jobs, /datum/job/paramedic)
	..()