/*
 * eclipse Medical
 */

/obj/structure/closet/secure_closet/CMO_eclipse
	name = "chief medical officer's locker"
	req_access = list(access_cmo)
	icon_state = "cmosecure1"
	icon_closed = "cmosecure"
	icon_locked = "cmosecure1"
	icon_opened = "cmosecureopen"
	icon_off = "cmosecureoff"

/obj/structure/closet/secure_closet/CMO_eclipse/WillContain()
	return list(
		/obj/item/clothing/suit/bio_suit/cmo,
		/obj/item/clothing/head/bio_hood/cmo,
		/obj/item/clothing/shoes/white,
		/obj/item/clothing/suit/storage/toggle/labcoat/cmo,
		/obj/item/clothing/suit/storage/toggle/labcoat/cmoalt,
		/obj/item/device/radio/headset/heads/cmo,
		/obj/item/device/radio/headset/heads/cmo/alt,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/weapon/reagent_containers/hypospray/vial,
		/obj/item/weapon/storage/fancy/vials,
		/obj/item/device/healthanalyzer,
		/obj/item/clothing/accessory/stethoscope,
		/obj/item/weapon/gun/launcher/syringe/mini,
		/obj/item/weapon/storage/box/syringegun,
		/obj/item/weapon/storage/box/syringes,
		/obj/item/device/flashlight/pen,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/device/holowarrant,
		/obj/item/weapon/storage/firstaid/adv,
		/obj/item/weapon/storage/box/armband/med,
		/obj/item/weapon/storage/belt/medical,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/medic, /obj/item/weapon/storage/backpack/satchel/med)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/med, /obj/item/weapon/storage/backpack/messenger/med)),
		RANDOM_SCRUBS
	)

/obj/structure/closet/secure_closet/medical_eclipsesenior
	name = "Surgeon's locker"
	req_access = list(access_senmed)
	icon_state = "securesenmed1"
	icon_closed = "securesenmed"
	icon_locked = "securesenmed1"
	icon_opened = "securesenmedopen"
	icon_off = "securesenmedoff"

/obj/structure/closet/secure_closet/medical_eclipsesenior/WillContain()
	return list(
		/obj/item/clothing/under/sterile,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/suit/surgicalapron,
		/obj/item/clothing/shoes/white,
		/obj/item/device/radio/headset/headset_med,
		/obj/item/device/radio/headset/headset_med/alt,
		/obj/item/taperoll/medical,
		/obj/item/weapon/storage/belt/medical,
		/obj/item/clothing/mask/surgical,
		/obj/item/device/healthanalyzer,
		/obj/item/clothing/accessory/stethoscope,
		/obj/item/device/flashlight/pen,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/weapon/storage/firstaid/adv,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/medic, /obj/item/weapon/storage/backpack/satchel/med)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/med, /obj/item/weapon/storage/backpack/messenger/med)),
		RANDOM_SCRUBS = 2
	)

/obj/structure/closet/secure_closet/medical_eclipse
	name = "corpsman's locker"
	req_access = list(access_medical)
	icon_state = "securemed1"
	icon_closed = "securemed"
	icon_locked = "securemed1"
	icon_opened = "securemedopen"
	icon_off = "securemedoff"

/obj/structure/closet/secure_closet/medical_eclipse/WillContain()
	return list(
		/obj/item/clothing/under/sterile,
		/obj/item/clothing/accessory/storage/pouches/load_bearing/white_vest,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/suit/storage/toggle/fr_jacket,
		/obj/item/clothing/shoes/white,
		/obj/item/device/radio/headset/headset_med,
		/obj/item/device/radio/headset/headset_corpsman/alt,
		/obj/item/taperoll/medical,
		/obj/item/weapon/storage/belt/medical/emt,
		/obj/item/weapon/storage/belt/medical,
		/obj/item/clothing/mask/gas/half,
		/obj/item/weapon/tank/emergency/oxygen/engi,
		/obj/item/weapon/storage/box/autoinjectors,
		/obj/item/device/healthanalyzer,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/weapon/storage/firstaid/adv,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/medic, /obj/item/weapon/storage/backpack/satchel/med)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/med, /obj/item/weapon/storage/backpack/messenger/med))
	)

/obj/structure/closet/secure_closet/medical_contractor
	name = "medical contractor's locker"
	req_access = list(access_medical)
	icon_state = "securemed1"
	icon_closed = "securemed"
	icon_locked = "securemed1"
	icon_opened = "securemedopen"
	icon_off = "securemedoff"

/obj/structure/closet/secure_closet/medical_contractor/WillContain()
	return list(
		/obj/item/clothing/under/sterile,
		/obj/item/clothing/head/soft/mime,
		/obj/item/clothing/under/rank/orderly,
		/obj/item/clothing/accessory/storage/pouches/load_bearing/white_vest,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/suit/storage/toggle/fr_jacket,
		/obj/item/clothing/shoes/white,
		/obj/item/device/radio/headset/headset_med,
		/obj/item/device/radio/headset/headset_med/alt,
		/obj/item/taperoll/medical,
		/obj/item/weapon/storage/belt/medical/emt,
		/obj/item/weapon/storage/belt/medical,
		/obj/item/clothing/mask/gas/half,
		/obj/item/weapon/tank/emergency/oxygen/engi,
		/obj/item/device/healthanalyzer,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/weapon/storage/firstaid/adv,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/medic, /obj/item/weapon/storage/backpack/satchel/med)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/med, /obj/item/weapon/storage/backpack/messenger/med))
	)

/obj/structure/closet/wardrobe/medic_eclipse
	name = "medical wardrobe"
	icon_state = "white"
	icon_closed = "white"

/obj/structure/closet/wardrobe/medic_eclipse/WillContain()
	return list(
		/obj/item/clothing/under/sterile = 2,
		RANDOM_SCRUBS = 4,
		/obj/item/clothing/suit/surgicalapron = 2,
		/obj/item/clothing/shoes/white = 2,
		/obj/item/clothing/suit/storage/toggle/labcoat = 2,
		/obj/item/clothing/mask/surgical = 2
	)
