//Job Outfits

/*
ECLIPSE OUTFITS
These outfits will spawn with some gear.
*/

/decl/hierarchy/outfit/job/eclipse
	name = OUTFIT_JOB_NAME("Eclipse Outfit")
	hierarchy_type = /decl/hierarchy/outfit/job/eclipse
	uniform = /obj/item/clothing/under/color/grey
	l_ear = /obj/item/device/radio/headset
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store

//Command Outfits
/decl/hierarchy/outfit/job/eclipse/command
	name = OUTFIT_JOB_NAME("Eclipse Command Outfit")
	hierarchy_type = /decl/hierarchy/outfit/job/eclipse/command
	l_ear = /obj/item/device/radio/headset/headset_com

/decl/hierarchy/outfit/job/eclipse/command/captain
	name = OUTFIT_JOB_NAME("Captain")
	head = /obj/item/clothing/head/caphat
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/rank/captain
	l_ear = /obj/item/device/radio/headset/heads/captain
	shoes = /obj/item/clothing/shoes/brown
	id_type = /obj/item/weapon/card/id/eclipse/gold
	pda_type = /obj/item/modular_computer/pda/captain
	backpack_contents = list(/obj/item/weapon/storage/box/ids = 1)

/decl/hierarchy/outfit/job/eclipse/command/captain/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack] = /obj/item/weapon/storage/backpack/captain
	backpack_overrides[/decl/backpack_outfit/satchel] = /obj/item/weapon/storage/backpack/satchel/cap
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/weapon/storage/backpack/messenger/com

/decl/hierarchy/outfit/job/eclipse/command/fdi
	name = OUTFIT_JOB_NAME("ICE Agent")
	l_ear = /obj/item/device/radio/headset/heads/captain
	uniform = /obj/item/clothing/under/fdi
	shoes = /obj/item/clothing/shoes/dutyboots
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	id_type = /obj/item/weapon/card/id/eclipse/fdi
	pda_type = /obj/item/modular_computer/pda/forensics
	r_hand = /obj/item/weapon/gun/projectile/fiveseven

/decl/hierarchy/outfit/job/eclipse/command/hop
	name = OUTFIT_JOB_NAME("Head of Personnel")
	uniform = /obj/item/clothing/under/rank/head_of_personnel
	l_ear = /obj/item/device/radio/headset/heads/hop
	shoes = /obj/item/clothing/shoes/brown
	id_type = /obj/item/weapon/card/id/eclipse/silver
	pda_type = /obj/item/modular_computer/pda/heads/hop
	backpack_contents = list(/obj/item/weapon/storage/box/ids = 1)

/decl/hierarchy/outfit/job/eclipse/command/rd
	name = OUTFIT_JOB_NAME("Research Director")
	l_ear = /obj/item/device/radio/headset/heads/rd
	uniform = /obj/item/clothing/under/rank/research_director
	shoes = /obj/item/clothing/shoes/brown
	l_hand = /obj/item/weapon/clipboard
	id_type = /obj/item/weapon/card/id/eclipse/silver/research
	pda_type = /obj/item/modular_computer/pda/heads/rd

/decl/hierarchy/outfit/job/eclipse/command/cmo
	name = OUTFIT_JOB_NAME("Chief Medical Officer")
	l_ear  =/obj/item/device/radio/headset/heads/cmo
	uniform = /obj/item/clothing/under/rank/chief_medical_officer
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/cmo
	shoes = /obj/item/clothing/shoes/brown
	l_hand = /obj/item/weapon/storage/firstaid/adv
	r_pocket = /obj/item/device/flashlight/pen
	id_type = /obj/item/weapon/card/id/eclipse/silver/medical
	pda_type = /obj/item/modular_computer/pda/heads/cmo

/decl/hierarchy/outfit/job/eclipse/command/cmo/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/eclipse/command/ce
	name = OUTFIT_JOB_NAME("Chief Engineer")
	head = /obj/item/clothing/head/hardhat/white
	uniform = /obj/item/clothing/under/rank/chief_engineer
	l_ear = /obj/item/device/radio/headset/heads/ce
	gloves = /obj/item/clothing/gloves/thick
	id_type = /obj/item/weapon/card/id/eclipse/silver/engineering
	pda_type = /obj/item/modular_computer/pda/heads/ce
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/eclipse/command/ce/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/eclipse/command/cos
	name = OUTFIT_JOB_NAME("Chief of Security")
	l_ear = /obj/item/device/radio/headset/heads/cos
	uniform = /obj/item/clothing/under/rank/head_of_security/tactical
	id_type = /obj/item/weapon/card/id/eclipse/silver/security
	pda_type = /obj/item/modular_computer/pda/heads/hos
	backpack_contents = list(/obj/item/weapon/handcuffs = 1)

/decl/hierarchy/outfit/job/eclipse/command/cos/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/eclipse/command/cl
	name = OUTFIT_JOB_NAME("Corporate Liaison")
	l_ear = /obj/item/device/radio/headset/heads/torchntcommand
	uniform = /obj/item/clothing/under/suit_jacket/corp
	shoes = /obj/item/clothing/shoes/laceup
	id_type = /obj/item/weapon/card/id/eclipse/liaison
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher
	backpack_contents = list(/obj/item/clothing/accessory/badge/nanotrasen = 1)

decl/hierarchy/outfit/job/eclipse/command/cl/union
	name = OUTFIT_JOB_NAME("Union Representative")
	l_pocket = /obj/item/clothing/mask/smokable/cigarette/cigar/cohiba
	r_pocket = /obj/item/weapon/flame/lighter/zippo

//Engineering Outfits
/decl/hierarchy/outfit/job/eclipse/engineering
	hierarchy_type = /decl/hierarchy/outfit/job/eclipse/engineering
	l_ear = /obj/item/device/radio/headset/headset_eng
	pda_slot = slot_l_store
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/eclipse/engineering/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/eclipse/engineering/senior_engineer
	name = OUTFIT_JOB_NAME("Senior Engineer")
	head = /obj/item/clothing/head/hardhat/white
	uniform = /obj/item/clothing/under/rank/engineer
	r_pocket = /obj/item/device/t_scanner
	id_type = /obj/item/weapon/card/id/eclipse/engineering/senior
	pda_type = /obj/item/modular_computer/pda/engineering

/decl/hierarchy/outfit/job/eclipse/engineering/engineer
	name = OUTFIT_JOB_NAME("Ship Engineer")
	head = /obj/item/clothing/head/hardhat
	uniform = /obj/item/clothing/under/rank/engineer
	r_pocket = /obj/item/device/t_scanner
	id_type = /obj/item/weapon/card/id/eclipse/engineering
	pda_type = /obj/item/modular_computer/pda/engineering

/decl/hierarchy/outfit/job/eclipse/engineering/engineer_apprentice
	name = OUTFIT_JOB_NAME("Engineering Apprentice")
	uniform = /obj/item/clothing/under/rank/engineer
	shoes = /obj/item/clothing/shoes/workboots
	id_type = /obj/item/weapon/card/id/eclipse/engineering/apprentice
	pda_type = /obj/item/modular_computer/pda/engineering

/decl/hierarchy/outfit/job/eclipse/engineering/roboticist
	name = OUTFIT_JOB_NAME("Roboticist")
	uniform = /obj/item/clothing/under/rank/scientist
	shoes = /obj/item/clothing/shoes/black
	belt = /obj/item/weapon/storage/belt/utility/full
	id_type = /obj/item/weapon/card/id/eclipse/engineering/roboticist
	pda_slot = slot_r_store
	pda_type = /obj/item/modular_computer/pda/roboticist
	l_ear = /obj/item/device/radio/headset/torchroboticist

//Security Outfits
/decl/hierarchy/outfit/job/eclipse/security
	hierarchy_type = /decl/hierarchy/outfit/job/eclipse/security
	l_ear = /obj/item/device/radio/headset/headset_sec
	shoes = /obj/item/clothing/shoes/dutyboots
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/eclipse/security/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/eclipse/security/warden
	name = OUTFIT_JOB_NAME("Warden")
	uniform = /obj/item/clothing/under/rank/warden/tactical
	l_pocket = /obj/item/device/flash
	id_type = /obj/item/weapon/card/id/eclipse/security/warden
	pda_type = /obj/item/modular_computer/pda/security

/decl/hierarchy/outfit/job/eclipse/security/isec_contractor
	name = OUTFIT_JOB_NAME("ISEC Contractor")
	uniform = /obj/item/clothing/under/isec
	l_ear = /obj/item/device/radio/headset/headset_sec/alt
	mask = /obj/item/clothing/mask/bandana
	l_pocket = /obj/item/device/flash
	id_type = /obj/item/weapon/card/id/eclipse/security/isec
	pda_type = /obj/item/modular_computer/pda/security

/decl/hierarchy/outfit/job/eclipse/security/isec_contractor/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack] = /obj/item/weapon/storage/backpack/security
	backpack_overrides[/decl/backpack_outfit/satchel] = /obj/item/weapon/storage/backpack/satchel/sec
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/weapon/storage/backpack/messenger/sec

/decl/hierarchy/outfit/job/eclipse/security/tiger_contractor
	name = OUTFIT_JOB_NAME("TIGER Contractor")
	uniform = /obj/item/clothing/under/tiger
	l_ear = /obj/item/device/radio/headset/headset_sec/alt
	mask = /obj/item/clothing/mask/bandana
	l_pocket = /obj/item/device/flash
	id_type = /obj/item/weapon/card/id/eclipse/security/tiger
	pda_type = /obj/item/modular_computer/pda/security

/decl/hierarchy/outfit/job/eclipse/security/tiger_contractor/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack] = /obj/item/weapon/storage/backpack/security
	backpack_overrides[/decl/backpack_outfit/satchel] = /obj/item/weapon/storage/backpack/satchel/sec
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/weapon/storage/backpack/messenger/sec

/decl/hierarchy/outfit/job/eclipse/security/iaa
	name = OUTFIT_JOB_NAME("Internal Affairs Agent")
	l_ear = /obj/item/device/radio/headset/ia
	uniform = /obj/item/clothing/under/rank/internalaffairs
	suit = /obj/item/clothing/suit/storage/toggle/suit/black
	shoes = /obj/item/clothing/shoes/brown
	glasses = /obj/item/clothing/glasses/sunglasses/big
	l_hand = /obj/item/weapon/storage/briefcase
	id_type = /obj/item/weapon/card/id/eclipse/security/iaa
	pda_type = /obj/item/modular_computer/pda/forensics

//Medical Outfits
/decl/hierarchy/outfit/job/eclipse/medical
	hierarchy_type = /decl/hierarchy/outfit/job/eclipse/medical
	l_ear = /obj/item/device/radio/headset/headset_med
	pda_type = /obj/item/modular_computer/pda/medical
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/eclipse/medical/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/eclipse/medical/senior_doctor
	name = OUTFIT_JOB_NAME("Surgeon")
	uniform = /obj/item/clothing/under/rank/orderly
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	l_hand = /obj/item/weapon/storage/firstaid/adv
	r_pocket = /obj/item/device/flashlight/pen
	id_type = /obj/item/weapon/card/id/eclipse/medical/senior

/decl/hierarchy/outfit/job/eclipse/medical/doctor
	name = OUTFIT_JOB_NAME("Physician")
	uniform = /obj/item/clothing/under/rank/orderly
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	l_hand = /obj/item/weapon/storage/firstaid/adv
	r_pocket = /obj/item/device/flashlight/pen
	id_type = /obj/item/weapon/card/id/eclipse/medical

/decl/hierarchy/outfit/job/eclipse/medical/paramedic
	name = OUTFIT_JOB_NAME("Paramedic")
	uniform = /obj/item/clothing/under/rank/medical/paramedic
	suit = /obj/item/clothing/suit/storage/toggle/fr_jacket
	shoes = /obj/item/clothing/shoes/jackboots
	l_hand = /obj/item/weapon/storage/firstaid/adv
	belt = /obj/item/weapon/storage/belt/medical/emt
	id_type = /obj/item/weapon/card/id/eclipse/medical/paramedic
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/eclipse/medical/resident
	name = OUTFIT_JOB_NAME("Medical Resident")
	uniform = /obj/item/clothing/under/rank/medical
	l_hand = /obj/item/weapon/storage/firstaid
	r_pocket = /obj/item/device/flashlight/pen
	id_type = /obj/item/weapon/card/id/eclipse/medical/resident

/decl/hierarchy/outfit/job/eclipse/medical/biomech
	name = OUTFIT_JOB_NAME("Biomechanical Engineer")
	uniform = /obj/item/clothing/under/rank/medical/scrubs/black
	shoes = /obj/item/clothing/shoes/black
	l_ear = /obj/item/device/radio/headset/torchroboticist
	id_type = /obj/item/weapon/card/id/eclipse/medical/biomech
	pda_type = /obj/item/modular_computer/pda/roboticist

/decl/hierarchy/outfit/job/eclipse/medical/labtech
	name = OUTFIT_JOB_NAME("Lab Technician")
	uniform = /obj/item/clothing/under/rank/medical
	shoes = /obj/item/clothing/shoes/white
	id_type = /obj/item/weapon/card/id/eclipse/medical/labtech

/decl/hierarchy/outfit/job/eclipse/medical/labtech/virologist
	name = OUTFIT_JOB_NAME("Virologist")
	uniform = /obj/item/clothing/under/rank/virologist

/decl/hierarchy/outfit/job/eclipse/medical/labtech/virologist/New()
	..()
	BACKPACK_OVERRIDE_VIROLOGY

/decl/hierarchy/outfit/job/eclipse/medical/labtech/chemist
	name = OUTFIT_JOB_NAME("Chemist")
	uniform = /obj/item/clothing/under/rank/chemist
	shoes = /obj/item/clothing/shoes/white
	pda_type = /obj/item/modular_computer/pda/chemistry

/decl/hierarchy/outfit/job/eclipse/medical/labtech/chemist/New()
	..()
	BACKPACK_OVERRIDE_CHEMISTRY

/decl/hierarchy/outfit/job/eclipse/medical/counselor
	name = OUTFIT_JOB_NAME("Counselor")
	uniform = /obj/item/clothing/under/rank/psych/turtleneck
	shoes = /obj/item/clothing/shoes/white
	id_type = /obj/item/weapon/card/id/eclipse/medical/counselor

//Supply Outfits
/decl/hierarchy/outfit/job/eclipse/supply
	l_ear = /obj/item/device/radio/headset/headset_cargo
	hierarchy_type = /decl/hierarchy/outfit/job/eclipse/supply

/decl/hierarchy/outfit/job/eclipse/supply/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/eclipse/supply/qm
	name = OUTFIT_JOB_NAME("Quartermaster")
	l_ear = /obj/item/device/radio/headset/headset_deckofficer
	uniform = /obj/item/clothing/under/rank/cargo
	shoes = /obj/item/clothing/shoes/brown
	glasses = /obj/item/clothing/glasses/sunglasses
	l_hand = /obj/item/weapon/clipboard
	id_type = /obj/item/weapon/card/id/eclipse/supply/qm
	pda_type = /obj/item/modular_computer/pda/cargo

/decl/hierarchy/outfit/job/eclipse/supply/cargo_tech
	name = OUTFIT_JOB_NAME("Supply Technician")
	uniform = /obj/item/clothing/under/rank/cargotech
	shoes = /obj/item/clothing/shoes/black
	id_type = /obj/item/weapon/card/id/eclipse/supply
	pda_type = /obj/item/modular_computer/pda/cargo

/decl/hierarchy/outfit/job/eclipse/supply/shaft_miner
	name = OUTFIT_JOB_NAME("Prospector")
	uniform = /obj/item/clothing/under/rank/ntwork
	shoes = /obj/item/clothing/shoes/workboots
	id_type = /obj/item/weapon/card/id/eclipse/supply/mining
	pda_type = /obj/item/modular_computer/pda/cargo
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL
	l_ear = /obj/item/device/radio/headset/headset_mining

//Service Outfits
/decl/hierarchy/outfit/job/eclipse/service
	l_ear = /obj/item/device/radio/headset/headset_service
	hierarchy_type = /decl/hierarchy/outfit/job/eclipse/service

/decl/hierarchy/outfit/job/eclipse/service/janitor
	name = OUTFIT_JOB_NAME("Sanitation Technician")
	uniform = /obj/item/clothing/under/rank/janitor
	shoes = /obj/item/clothing/shoes/black
	id_type = /obj/item/weapon/card/id/eclipse/service/janitor
	pda_type = /obj/item/modular_computer/pda

/decl/hierarchy/outfit/job/eclipse/service/cook
	name = OUTFIT_JOB_NAME("Cook")
	uniform = /obj/item/clothing/under/rank/chef
	shoes = /obj/item/clothing/shoes/black
	id_type = /obj/item/weapon/card/id/eclipse/service/cook
	pda_type = /obj/item/modular_computer/pda

/decl/hierarchy/outfit/job/eclipse/service/bartender
	name = OUTFIT_JOB_NAME("Bartender")
	uniform = /obj/item/clothing/under/rank/bartender
	shoes = /obj/item/clothing/shoes/laceup
	id_type = /obj/item/weapon/card/id/eclipse/service/bartender
	pda_type = /obj/item/modular_computer/pda

//Exploration Outfits
/*
/decl/hierarchy/outfit/job/eclipse/exploration/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack]      = /obj/item/weapon/storage/backpack/explorer
	backpack_overrides[/decl/backpack_outfit/satchel]       = /obj/item/weapon/storage/backpack/satchel/explorer
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/weapon/storage/backpack/messenger/explorer
*/
/decl/hierarchy/outfit/job/eclipse/exploration/pathfinder_commander
	name = OUTFIT_JOB_NAME("Pathfinder Commander")
	uniform = /obj/item/clothing/under/rank/pathfinder
	glasses = /obj/item/clothing/glasses/sunglasses
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/eclipse/exploration/commander
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/pathfinder

/decl/hierarchy/outfit/job/eclipse/exploration/pathfinder_explorer
	name = OUTFIT_JOB_NAME("Pathfinder")
	uniform = /obj/item/clothing/under/rank/pathfinder
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/eclipse/exploration
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/exploration

/decl/hierarchy/outfit/job/eclipse/exploration/pathfinder_pilot
	name = OUTFIT_JOB_NAME("Pathfinder Pilot")
	uniform = /obj/item/clothing/under/rank/pathfinder
	glasses = /obj/item/clothing/glasses/sunglasses
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/eclipse/exploration/pilot
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/headset_pilot

/decl/hierarchy/outfit/job/eclipse/exploration/pathfinder_specialist
	name = OUTFIT_JOB_NAME("Pathfinder Specialist")
	uniform = /obj/item/clothing/under/rank/pathfinder
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/eclipse/exploration/specialist
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/exploration


//Research Outfits
/decl/hierarchy/outfit/job/eclipse/research
	hierarchy_type = /decl/hierarchy/outfit/job/eclipse/research
	l_ear = /obj/item/device/radio/headset/torchnanotrasen

/decl/hierarchy/outfit/job/eclipse/research/New()
	..()
	BACKPACK_OVERRIDE_RESEARCH

/decl/hierarchy/outfit/job/eclipse/research/senior_researcher
	name = OUTFIT_JOB_NAME("Senior Researcher")
	uniform = /obj/item/clothing/under/rank/scientist
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/science
	shoes = /obj/item/clothing/shoes/white
	pda_type = /obj/item/modular_computer/pda/heads/rd
	id_type = /obj/item/weapon/card/id/eclipse/research/senior_scientist

/decl/hierarchy/outfit/job/eclipse/research/scientist
	name = OUTFIT_JOB_NAME("Scientist")
	uniform = /obj/item/clothing/under/rank/scientist
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/science
	shoes = /obj/item/clothing/shoes/white
	pda_type = /obj/item/modular_computer/pda/science
	id_type = /obj/item/weapon/card/id/eclipse/research

/decl/hierarchy/outfit/job/eclipse/research/xenolife_tech
	name = OUTFIT_JOB_NAME("Xenolife Technician")
	uniform = /obj/item/clothing/under/rank/scientist
	shoes = /obj/item/clothing/shoes/white
	id_type = /obj/item/weapon/card/id/eclipse/research/xenolifetechnician
	pda_type = /obj/item/modular_computer/pda/science
	l_ear = /obj/item/device/radio/headset/torchnanotrasen

/decl/hierarchy/outfit/job/eclipse/research/assistant
	name = OUTFIT_JOB_NAME("Research Assistant")
	uniform = /obj/item/clothing/under/rank/scientist
	shoes = /obj/item/clothing/shoes/white
	pda_type = /obj/item/modular_computer/pda/science
	id_type = /obj/item/weapon/card/id/eclipse/research/assistant

/decl/hierarchy/outfit/job/eclipse/merchant
	name = OUTFIT_JOB_NAME("Merchant")
	uniform = /obj/item/clothing/under/color/black
	l_ear = null
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda
	id_type = /obj/item/weapon/card/id/eclipse/merchant

/decl/hierarchy/outfit/job/eclipse/stowaway
	name = OUTFIT_JOB_NAME("Stowaway")
	id_type = null
	pda_type = null
	l_ear = null
	l_pocket = /obj/item/weapon/wrench
	r_pocket = /obj/item/weapon/crowbar

/decl/hierarchy/outfit/job/eclipse/stowaway/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/weapon/card/id/eclipse/stowaway/ID = new(H.loc)
	H.put_in_hands(ID)

//ERT and Special
/decl/hierarchy/outfit/job/eclipse/ert
	name = OUTFIT_JOB_NAME("FDIS - Eclipse")
	uniform = /obj/item/clothing/under/gign_under
	head = /obj/item/clothing/head/beret/centcom/officer
	gloves = /obj/item/clothing/gloves/thick
	id_type = /obj/item/weapon/card/id/centcom/ERT
	pda_type = /obj/item/modular_computer/pda/ert
	l_ear = /obj/item/device/radio/headset/ert
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/eclipse/ert/leader
	name = OUTFIT_JOB_NAME("FDIS Leader - Eclipse")
	uniform = /obj/item/clothing/under/gign_under
	head = /obj/item/clothing/head/beret/centcom/captain
