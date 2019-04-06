//Eclipse ID Cards (they have to be here to make the outfits work, no way around it)

/obj/item/weapon/card/id/eclipse
	name = "identification card"
	desc = "An identification card issued to personnel aboard the EEV Eclipse."
	icon_state = "civ"
	item_state = "card-id"
	job_access_type = /datum/job/assistant

/obj/item/weapon/card/id/eclipse/silver
	desc = "A silver identification card belonging to heads of staff."
	icon_state = "civGold"
	item_state = "silver_id"
	job_access_type = /datum/job/hop

/obj/item/weapon/card/id/eclipse/gold
	desc = "A golden identification card belonging to the Captain."
	icon_state = "goldNew"
	item_state = "gold_id"
	job_access_type = /datum/job/captain

/obj/item/weapon/card/id/eclipse/captains_spare
	name = "commanding officer's spare ID"
	desc = "The skipper's spare ID."
	icon_state = "gold"
	item_state = "gold_id"
	registered_name = "Commanding Officer"
	assignment = "Commanding Officer"

/obj/item/weapon/card/id/eclipse/captains_spare/New()
	access = get_all_station_access()
	..()

/obj/item/weapon/card/id/eclipse/ice
	name = "federal agent ID card"
	desc = "A government issued ID card to federal law enforcement agents."
	icon_state = "centcomGold"
	item_state = "gold_id"

/obj/item/weapon/card/id/eclipse/ice/New()
	access = get_all_station_access()
	..()

/obj/item/weapon/card/id/eclipse/liaison
	name = "Liasion's ID Card"
	desc = "An ETF issued ID card to corporate liasions to the Arcturus-Eclipse project."
	icon_state = "corporate"
	job_access_type = /datum/job/liaison

//Medical
/obj/item/weapon/card/id/eclipse/silver/medical
	icon_state = "medGold"
	item_state = "silver_id"
	job_access_type = /datum/job/cmo

/obj/item/weapon/card/id/eclipse/medical
	icon_state = "med"
	job_access_type = /datum/job/doctor

/obj/item/weapon/card/id/eclipse/medical/senior
	job_access_type = /datum/job/senior_doctor

/obj/item/weapon/card/id/eclipse/medical/paramedic
	job_access_type = /datum/job/paramedic

/obj/item/weapon/card/id/eclipse/medical/resident
	job_access_type = /datum/job/medical_trainee

/obj/item/weapon/card/id/eclipse/medical/labtech
	job_access_type = /datum/job/labtech

/obj/item/weapon/card/id/eclipse/medical/biomech
	job_access_type = /datum/job/biomech

/obj/item/weapon/card/id/eclipse/medical/counselor
	job_access_type = /datum/job/psychiatrist

//Security
/obj/item/weapon/card/id/eclipse/silver/security
	icon_state = "secGold"
	item_state = "silver_id"
	job_access_type = /datum/job/hos

/obj/item/weapon/card/id/eclipse/security
	icon_state = "sec"
	job_access_type = /datum/job/officer

/obj/item/weapon/card/id/eclipse/security/isec
	icon_state = "sec"
	job_access_type = /datum/job/isec

/obj/item/weapon/card/id/eclipse/security/tiger
	icon_state = "sec"
	job_access_type = /datum/job/tiger

/obj/item/weapon/card/id/eclipse/security/warden
	job_access_type = /datum/job/warden

/obj/item/weapon/card/id/eclipse/security/iaa
	icon_state = "centcomNew"
	item_state = "gold_id"
	job_access_type = /datum/job/detective

//Engineering
/obj/item/weapon/card/id/eclipse/silver/engineering
	icon_state = "engGold"
	item_state = "silver_id"
	job_access_type = /datum/job/chief_engineer

/obj/item/weapon/card/id/eclipse/engineering
	job_access_type = /datum/job/engineer

/obj/item/weapon/card/id/eclipse/engineering/senior
	job_access_type = /datum/job/senior_engineer

/obj/item/weapon/card/id/eclipse/engineering/apprentice
	job_access_type = /datum/job/engineer_apprentice

/obj/item/weapon/card/id/eclipse/engineering/roboticist
	job_access_type = /datum/job/roboticist

//Supply
/obj/item/weapon/card/id/eclipse/supply
	icon_state = "cargo"
	job_access_type = /datum/job/cargo_tech

/obj/item/weapon/card/id/eclipse/supply/qm
	icon_state = "cargoGold"
	item_state = "silver_id"
	job_access_type = /datum/job/qm

/obj/item/weapon/card/id/eclipse/supply/mining
	job_access_type = /datum/job/mining


//Service
/obj/item/weapon/card/id/eclipse/service //Unused, do not use, pls -SB
	icon_state = "civ"

/obj/item/weapon/card/id/eclipse/service/janitor
	job_access_type = /datum/job/janitor

/obj/item/weapon/card/id/eclipse/service/cook
	job_access_type = /datum/job/chef

/obj/item/weapon/card/id/eclipse/service/bartender
	job_access_type = /datum/job/bartender

//Exploration
/obj/item/weapon/card/id/eclipse/exploration
	icon_state = "cyan"
	job_access_type = /datum/job/pathfinder_explorer

/obj/item/weapon/card/id/eclipse/exploration/commander
	icon_state = "cyanGold"
	job_access_type = /datum/job/pathfinder_commander

/obj/item/weapon/card/id/eclipse/exploration/pilot
	job_access_type = /datum/job/pathfinder_pilot

/obj/item/weapon/card/id/eclipse/exploration/specialist
	job_access_type = /datum/job/pathfinder_specialist

//Research
/obj/item/weapon/card/id/eclipse/silver/research
	icon_state = "sciGold"
	item_state = "silver_id"
	job_access_type = /datum/job/rd

/obj/item/weapon/card/id/eclipse/research
	icon_state = "sci"
	job_access_type = /datum/job/scientist

/obj/item/weapon/card/id/eclipse/research/senior_scientist
	job_access_type = /datum/job/senior_scientist

/obj/item/weapon/card/id/eclipse/research/assistant
	job_access_type = /datum/job/scientist_assistant

/obj/item/weapon/card/id/eclipse/research/xenolifetechnician
	job_access_type = /datum/job/xenolife_technician

//Merchant
/obj/item/weapon/card/id/eclipse/merchant
	desc = "An identification card issued to Merchants, indicating their right to sell and buy goods."
	icon_state = "trader"
	job_access_type = /datum/job/merchant

//Stowaway
/obj/item/weapon/card/id/eclipse/stowaway
	desc = "An identification card issued to personnel aboard the EEV Eclipse. Looks like the photo fell off this one."
	icon_state = "id"
	job_access_type = /datum/job/assistant

/obj/item/weapon/card/id/eclipse/stowaway/New()
	..()
	var/species = SPECIES_HUMAN
	if(prob(10))
		species = pick(SPECIES_SKRELL,SPECIES_TAJARA,SPECIES_IPC)
	var/datum/species/S = all_species[species]
	var/decl/cultural_info/culture/C = SSculture.get_culture(S.default_cultural_info[TAG_CULTURE])
	var/gender = pick(MALE,FEMALE)
	registered_name = C.get_random_name(gender)
	sex = capitalize(gender)
	age = rand(19,25)
	fingerprint_hash = md5(registered_name)
	dna_hash = md5(fingerprint_hash)
	blood_type = RANDOM_BLOOD_TYPE
