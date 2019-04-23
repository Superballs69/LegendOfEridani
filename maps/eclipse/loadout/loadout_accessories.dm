/*
/datum/gear/accessory/tags
	display_name = "dog tags"
	path = /obj/item/clothing/accessory/badge/solgov/tags

/datum/gear/accessory/ec_patch
	display_name = "Expeditionary Corps patch"
	path = /obj/item/clothing/accessory/solgov/ec_patch
	description = "A shoulder patch representing the Expeditionary Corps."
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/accessory/torch_patch
	display_name = "Torch mission patch"
	path = /obj/item/clothing/accessory/solgov/torch_patch
	description = "A shoulder patch representing the SEV Torch and its mission. Given to all the oddjobs pulled from various branches to work on the Torch."

/datum/gear/accessory/pilot_pin
	display_name = "pilot's qualification pin"
	path = /obj/item/clothing/accessory/solgov/speciality/pilot
	allowed_roles = list(/datum/job/captain, /datum/job/hop, /datum/job/pathfinder, /datum/job/pathfinder_pilot)

/datum/gear/accessory/fleetpatch
	display_name = "fleet patch"
	path = /obj/item/clothing/accessory/solgov/fleet_patch
	flags = GEAR_HAS_TYPE_SELECTION
*/

/datum/gear/accessory/armband_security
	allowed_roles = SECURITY_ROLES

/datum/gear/accessory/armband_cargo
	allowed_roles = SUPPLY_ROLES

/datum/gear/accessory/armband_medical
	allowed_roles = MEDICAL_ROLES

/datum/gear/accessory/armband_emt
	allowed_roles = list(/datum/job/doctor, /datum/job/paramedic)

/datum/gear/accessory/armband_engineering
	allowed_roles = ENGINEERING_ROLES

/datum/gear/accessory/armband_hydro
	allowed_roles = list(/datum/job/rd, /datum/job/scientist, /datum/job/scientist_assistant, /datum/job/assistant)

/datum/gear/accessory/armband_nt

/datum/gear/accessory/ntaward

/datum/gear/accessory/tie

/datum/gear/accessory/tie_color

/datum/gear/accessory/tunics
	allowed_roles = list(/datum/job/roboticist, /datum/job/scientist, /datum/job/scientist_assistant, /datum/job/rd, /datum/job/labtech, /datum/job/doctor, /datum/job/senior_doctor,
						/datum/job/cmo)

/datum/gear/accessory/stethoscope
	allowed_roles = STERILE_ROLES

/datum/gear/storage/brown_vest
	allowed_roles = list(/datum/job/chief_engineer, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/qm, /datum/job/cargo_tech,
						/datum/job/mining, /datum/job/janitor, /datum/job/scientist_assistant, /datum/job/merchant, /datum/job/pathfinder_pilot)

/datum/gear/storage/black_vest
	allowed_roles = list(/datum/job/hos, /datum/job/warden, /datum/job/iaa, /datum/job/tiger, /datum/job/isec, /datum/job/merchant, /datum/job/fdi)

/datum/gear/storage/white_vest
	allowed_roles = list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/paramedic, /datum/job/roboticist, /datum/job/merchant, /datum/job/labtech, /datum/job/pathfinder_specialist)

/datum/gear/storage/brown_drop_pouches
	allowed_roles = list(/datum/job/chief_engineer, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/qm, /datum/job/cargo_tech,
						/datum/job/mining, /datum/job/janitor, /datum/job/scientist_assistant, /datum/job/merchant, /datum/job/pathfinder_specialist)

/datum/gear/storage/black_drop_pouches
	allowed_roles = list(/datum/job/hos, /datum/job/warden, /datum/job/iaa, /datum/job/tiger, /datum/job/isec, /datum/job/merchant)

/datum/gear/storage/white_drop_pouches
	allowed_roles = list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/paramedic, /datum/job/roboticist, /datum/job/merchant, /datum/job/labtech, /datum/job/pathfinder_specialist)

/datum/gear/tactical/holster
	allowed_roles = ARMED_ROLES

/datum/gear/tactical/armor_deco
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/press_tag
	display_name = "Press tag"
	path = /obj/item/clothing/accessory/armor/tag/press
	allowed_roles = list(/datum/job/assistant)

/datum/gear/clothing/hawaii

/datum/gear/clothing/scarf

/datum/gear/clothing/flannel
	allowed_roles = SEMIFORMAL_ROLES

/datum/gear/clothing/vest

/datum/gear/clothing/suspenders

/datum/gear/clothing/wcoat

/datum/gear/clothing/zhongshan

/datum/gear/clothing/dashiki

/datum/gear/clothing/thawb

/datum/gear/clothing/sherwani

/datum/gear/clothing/qipao

/datum/gear/clothing/sweater

/datum/gear/clothing/tangzhuang

/datum/gear/accessory/bowtie

/datum/gear/accessory/ftupin

/*********************
 tactical accessories
*********************/
/datum/gear/tactical/armor_pouches
	display_name = "black armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches
	cost = 2
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/armor_pouches/misc
	display_name = "miscellaneous armor pouches selection"
	path = /obj/item/clothing/accessory/storage/pouches

/datum/gear/tactical/armor_pouches/misc/New()
	..()
	var/pouches = list()
	pouches["green armor pouches"] = /obj/item/clothing/accessory/storage/pouches/green
	pouches["tan armor pouches"] = /obj/item/clothing/accessory/storage/pouches/tan
	gear_tweaks += new/datum/gear_tweak/path(pouches)

/datum/gear/tactical/large_pouches
	display_name = "black large armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches/large
	cost = 5
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/large_pouches/misc
	display_name = "miscellaneous large armor pouches selection"
	path = /obj/item/clothing/accessory/storage/pouches

/datum/gear/tactical/large_pouches/misc/New()
	..()
	var/pouches = list()
	pouches["green large armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/green
	pouches["tan large armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/tan
	gear_tweaks += new/datum/gear_tweak/path(pouches)

/datum/gear/tactical/knife
	display_name = "tactical knife"
	path = /obj/item/weapon/material/hatchet/tacknife
	cost = 3
	allowed_roles = ARMED_ROLES

/datum/gear/tactical/switchblade
	display_name = "tactical switchblade"
	path = /obj/item/weapon/material/pocketknife/auto
	cost = 4
	allowed_roles = ARMED_ROLES

/datum/gear/tactical/ifak
	display_name = "tactical individual first aid kit"
	path = /obj/item/weapon/storage/firstaid/ifak/police
	cost = 5
	allowed_roles = ARMORED_ROLES