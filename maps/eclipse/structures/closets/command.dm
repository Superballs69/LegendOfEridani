/*
 * Torch Command
 */


/obj/structure/closet/secure_closet/captain
	name = "captain's locker"
	req_access = list(access_captain)
	icon_state = "capsecure1"
	icon_closed = "capsecure"
	icon_locked = "capsecure1"
	icon_opened = "capsecureopen"
	icon_off = "capsecureoff"

/obj/structure/closet/secure_closet/captain/WillContain()
	return list(
		/obj/item/clothing/head/helmet/security,
		/obj/item/clothing/suit/armor/pcarrier/command,
		/obj/item/device/radio/headset/heads/torchcaptain,
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/weapon/gun/energy/gun/pistol,
		/obj/item/device/radio/headset/heads/torchcaptain/alt,
		/obj/item/weapon/storage/belt/holster/general,
		/obj/item/weapon/melee/telebaton,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/weapon/storage/box/ids,
		/obj/item/weapon/clipboard,
		/obj/item/device/holowarrant,
		/obj/item/weapon/folder/blue,
		/obj/item/clothing/accessory/storage/tunic/captain,
		/obj/item/clothing/under/captainproper,
		/obj/item/clothing/shoes/highboots,
		/obj/item/clothing/head/caphat/proper,
		/obj/item/clothing/gloves/white,
		/obj/item/clothing/shoes/jackboots,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/captain, /obj/item/weapon/storage/backpack/satchel/cap)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/captain, /obj/item/weapon/storage/backpack/messenger/com))
	)

/obj/structure/closet/secure_closet/hop
	name = "head of personnel's locker"
	req_access = list(access_hop)
	icon_state = "twosolsecure1"
	icon_closed = "twosolsecure"
	icon_locked = "twosolsecure1"
	icon_opened = "twosolsecureopen"
	icon_off = "twosolsecureoff"

/obj/structure/closet/secure_closet/hop/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/clothing/head/helmet/security,
		/obj/item/clothing/suit/armor/pcarrier/command,
		/obj/item/device/radio/headset/heads/torchxo,
		/obj/item/weapon/storage/belt/holster/general,
		/obj/item/weapon/gun/energy/gun/pistol,
		/obj/item/weapon/melee/telebaton,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/weapon/storage/box/headset,
		/obj/item/device/radio/headset/heads/torchxo/alt,
		/obj/item/weapon/storage/box/radiokeys,
		/obj/item/weapon/storage/box/large/ids,
		/obj/item/weapon/storage/box/PDAs,
		/obj/item/weapon/clipboard,
		/obj/item/device/holowarrant,
		/obj/item/weapon/folder/blue,
		/obj/item/clothing/under/hop_proper,
		/obj/item/clothing/accessory/storage/tunic/hop_proper,
		/obj/item/clothing/shoes/highboots,
		/obj/item/clothing/head/caphat/hop_formal,
		/obj/item/clothing/gloves/white,
		/obj/item/clothing/shoes/jackboots,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/captain, /obj/item/weapon/storage/backpack/satchel/cap)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/captain, /obj/item/weapon/storage/backpack/messenger/com)),
		/obj/item/weapon/storage/box/imprinting
	)

/*
/obj/structure/closet/secure_closet/sea
	name = "senior enlisted advisor's locker"
	req_access = list(access_senadv)
	icon_state = "sol1"
	icon_closed = "sol"
	icon_locked = "sol1"
	icon_opened = "solopen"
	icon_off = "soloff"

/obj/structure/closet/secure_closet/sea/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/clothing/head/helmet/security,
		/obj/item/clothing/suit/armor/pcarrier/command,
		/obj/item/device/radio/headset/heads/torchxo,
		/obj/item/device/radio/headset/heads/torchxo/alt,
		/obj/item/weapon/gun/energy/gun/secure,
		/obj/item/weapon/storage/belt/holster/general,
		/obj/item/weapon/melee/telebaton,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/weapon/clipboard,
		/obj/item/device/holowarrant,
		/obj/item/weapon/folder/blue,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger))
	)
*/

/*
/obj/structure/closet/secure_closet/bridgeofficer
	name = "bridge officer's locker"
	req_access = list(access_bridge)
	icon_state = "sol1"
	icon_closed = "sol"
	icon_locked = "sol1"
	icon_opened = "solopen"
	icon_off = "soloff"

/obj/structure/closet/secure_closet/bridgeofficer/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/weapon/pen,
		/obj/item/device/tape/random,
		/obj/item/clothing/head/helmet/security,
		/obj/item/clothing/suit/armor/pcarrier/command,
		/obj/item/device/taperecorder,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/weapon/clipboard,
		/obj/item/weapon/folder/blue,
		/obj/item/modular_computer/tablet/lease/preset/command,
		/obj/item/device/radio/headset/bridgeofficer,
		/obj/item/device/radio/headset/bridgeofficer/alt,
		/obj/item/weapon/storage/belt/general,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/device/flashlight, /obj/item/device/flashlight/flare, /obj/item/device/flashlight/flare/glowstick/random))
	)
*/

/obj/structure/closet/secure_closet/fdi
	name = "FDI agent's locker"
	req_access = list(access_bridge)
	icon_state = "sol1"
	icon_closed = "sol"
	icon_locked = "sol1"
	icon_opened = "solopen"
	icon_off = "soloff"

/obj/structure/closet/secure_closet/fdi/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/fdi,
		/obj/item/clothing/head/helmet/security,
		/obj/item/device/radio/headset/fdi,
		/obj/item/device/radio/headset/fdi/alt,
		/obj/item/weapon/material/pocketknife/auto,
		/obj/item/weapon/material/hatchet/tacknife,
		/obj/item/weapon/storage/belt/holster/security,
		/obj/item/device/flash/advanced,
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/weapon/melee/baton/loaded,
		/obj/item/clothing/glasses/combatgoggles,
		/obj/item/weapon/gun/energy/taser,
		/obj/item/weapon/gun/projectile/automatic/mp7,
		/obj/item/weapon/silencer,
		/obj/item/taperoll/police,
		/obj/item/device/hailer,
		/obj/item/weapon/storage/firstaid/ifak/police,
		/obj/item/device/megaphone,
		/obj/item/device/holowarrant,
		/obj/item/device/flashlight/maglight,
		/obj/item/clothing/under/fdi,
		/obj/item/clothing/under/fdi/formal,
		/obj/item/clothing/under/fdi/light,
		/obj/item/clothing/under/fdi/space,
		/obj/item/clothing/head/helmet/space/fdi,
		/obj/item/clothing/under/fca_proper,
		/obj/item/clothing/head/garrison/fdi,
		/obj/item/clothing/accessory/storage/tunic/fdi_proper,
		/obj/item/clothing/shoes/highboots,
		/obj/item/clothing/gloves/white,
		/obj/item/clothing/shoes/jackboots,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/security, /obj/item/weapon/storage/backpack/satchel/sec)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/sec, /obj/item/weapon/storage/backpack/messenger/sec))
		)