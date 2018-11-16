/*
 * Torch Exploration
 */


/obj/structure/closet/secure_closet/pathfinder_commander
	name = "pathfinder commander's locker"
	req_access = list(access_pathfinder)
	icon_state = "pathsecure1"
	icon_closed = "pathsecure"
	icon_locked = "pathsecure1"
	icon_opened = "pathsecureopen"
	icon_off = "pathsecureoff"

/obj/structure/closet/secure_closet/pathfinder_commander/WillContain()
	return list(
		/obj/item/clothing/head/helmet/space/pathfinder/commander,
		/obj/item/clothing/suit/armor/pcarrier/pathfinder/commander,
		/obj/item/weapon/material/hatchet/tacknife,
		/obj/item/gunbox/pathfinder_commander,
		/obj/item/clothing/mask/gas/half,
		/obj/item/device/radio,
		/obj/item/device/tape/random,
		/obj/item/device/gps,
		/obj/item/weapon/pinpointer/radio,
		/obj/item/device/radio/beacon,
		/obj/item/taperoll/research,
		/obj/item/weapon/material/hatchet/machete/deluxe,
		/obj/item/weapon/storage/belt/holster/machete,
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/device/spaceflare,
		/obj/item/clothing/accessory/storage/webbing_large,
		/obj/item/device/taperecorder,
		/obj/item/device/analyzer,
		/obj/item/device/flash,
		/obj/item/device/radio/headset/pathfinder,
		/obj/item/device/radio/headset/pathfinder/alt,
		/obj/item/weapon/storage/box/encryptionkey/exploration,
		/obj/item/device/binoculars,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/device/flashlight, /obj/item/device/flashlight/flare, /obj/item/device/flashlight/flare/glowstick/random))
	)

/obj/structure/closet/secure_closet/pathfinder
	name = "pathfinder's locker"
	req_access = list(access_explorer)
	icon_state = "exp1"
	icon_closed = "exp"
	icon_locked = "exp1"
	icon_opened = "expopen"
	icon_off = "expoff"

/obj/structure/closet/secure_closet/pathfinder/WillContain()
	return list(
		/obj/item/clothing/head/helmet/space/pathfinder,
		/obj/item/clothing/suit/armor/pcarrier/pathfinder,
		/obj/item/weapon/material/hatchet/tacknife,
		/obj/item/gunbox/pathfinder,
		/obj/item/clothing/mask/gas/half,
		/obj/item/device/radio,
		/obj/item/device/gps,
		/obj/item/taperoll/research,
		/obj/item/weapon/storage/belt/holster/security,
		/obj/item/device/spaceflare,
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/clothing/accessory/storage/webbing_large,
		/obj/item/device/analyzer,
		/obj/item/device/radio/headset/exploration,
		/obj/item/device/radio/headset/exploration/alt,
		/obj/item/device/binoculars,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/device/flashlight, /obj/item/device/flashlight/flare, /obj/item/device/flashlight/flare/glowstick/random))
	)

/obj/structure/closet/secure_closet/pathfinder_pilot
	name = "pilot's locker"
	req_access = list(access_pilot)
	icon_state = "exp1"
	icon_closed = "exp"
	icon_locked = "exp1"
	icon_opened = "expopen"
	icon_off = "expoff"

/obj/structure/closet/secure_closet/pathfinder_pilot/WillContain()
	return list(
		/obj/item/clothing/head/helmet/space/pathfinder/pilot,
		/obj/item/clothing/suit/armor/pcarrier/pathfinder,
		/obj/item/device/radio,
		/obj/item/clothing/mask/gas/half,
		/obj/item/device/gps,
		/obj/item/weapon/storage/belt/utility/full,
		/obj/item/device/spaceflare,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/clothing/accessory/storage/webbing_large,
		/obj/item/weapon/gun/projectile/colt/kdi,
		/obj/item/ammo_magazine/m45m,
		/obj/item/ammo_magazine/m45m,
		/obj/item/ammo_magazine/m45m,
		/obj/item/device/analyzer,
		/obj/item/device/radio/headset/headset_pilot,
		/obj/item/device/radio/headset/headset_pilot/alt,
		/obj/item/device/binoculars,
		/obj/item/clothing/gloves/thick,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/device/flashlight, /obj/item/device/flashlight/flare, /obj/item/device/flashlight/flare/glowstick/random))
	)

/obj/structure/closet/secure_closet/pathfinder_corpsman
	name = "pathfinder corpsman's locker"
	req_access = list(access_explorer)
	icon_state = "securemed1"
	icon_closed = "securemed"
	icon_locked = "securemed1"
	icon_opened = "securemedopen"
	icon_off = "securemedoff"

/obj/structure/closet/secure_closet/pathfinder_corpsman/WillContain()
	return list(
		/obj/item/clothing/head/helmet/space/pathfinder/corpsman,
		/obj/item/clothing/suit/storage/pcarrier/medic,
		/obj/item/weapon/material/hatchet/tacknife,
		/obj/item/weapon/gun/launcher/syringe/mini,
		/obj/item/device/flashlight/pen,
		/obj/item/device/healthanalyzer,
		/obj/item/clothing/accessory/stethoscope,
		/obj/item/clothing/mask/gas/half,
		/obj/item/weapon/storage/firstaid/trauma,
		/obj/item/weapon/storage/firstaid/surgery,
		/obj/item/weapon/storage/firstaid/adv,
		/obj/item/weapon/storage/box/syringes/tricordrazine,
		/obj/item/device/radio,
		/obj/item/device/gps,
		/obj/item/taperoll/research,
		/obj/item/weapon/storage/belt/holster/security,
		/obj/item/device/spaceflare,
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/clothing/accessory/storage/brown_vest,
		/obj/item/device/analyzer,
		/obj/item/device/radio/headset/exploration,
		/obj/item/device/radio/headset/exploration/alt,
		/obj/item/device/binoculars,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/device/flashlight, /obj/item/device/flashlight/flare, /obj/item/device/flashlight/flare/glowstick/random))
	)

/obj/structure/closet/secure_closet/pathfinder_technician
	name = "pathfinder technician's locker"
	req_access = list(access_explorer)
	icon_state = "secureeng1"
	icon_closed = "secureeng"
	icon_locked = "secureeng1"
	icon_opened = "secureengopen"
	icon_off = "secureengoff"

/obj/structure/closet/secure_closet/pathfinder_technician/WillContain()
	return list(
		/obj/item/clothing/head/helmet/space/pathfinder/tech,
		/obj/item/clothing/suit/armor/pcarrier/pathfinder,
		/obj/item/weapon/material/hatchet/tacknife,
		/obj/item/gunbox/pathfinder,
		/obj/item/weapon/rcd,
		/obj/item/clothing/mask/gas/half,
		/obj/item/device/radio,
		/obj/item/device/gps,
		/obj/item/taperoll/research,
		/obj/item/weapon/storage/toolbox/electrical,
		/obj/item/weapon/storage/toolbox/mechanical,
		/obj/item/weapon/storage/toolbox/emergency,
		/obj/item/weapon/storage/belt/utility/full,
		/obj/item/device/spaceflare,
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/gloves/insulated,
		/obj/item/clothing/gloves/latex/nitrile,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/clothing/accessory/storage/white_vest,
		/obj/item/device/analyzer,
		/obj/item/device/radio/headset/exploration,
		/obj/item/device/radio/headset/exploration/alt,
		/obj/item/device/binoculars,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/device/flashlight, /obj/item/device/flashlight/flare, /obj/item/device/flashlight/flare/glowstick/random))
	)