/obj/item/weapon/rig/pc_juggernaut
	name = "\improper PyroCorp Juggernaut RIG"
	desc = "A heavily armored PyroCorp Juggernaut RIG. Made to stop the forbidden things of the universe."
	suit_type = "\improper PC Juggernaut rig"
	icon_state = "pc_juggernaut_rig"
	armor = list(melee = 90, bullet = 80, laser = 80, energy = 70, bomb = 95, bio = 0, rad = 0)
	allowed = list(/obj/item/device/flashlight, /obj/item/weapon/tank,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/handcuffs, /obj/item/device/t_scanner, /obj/item/weapon/rcd, /obj/item/weapon/crowbar, \
	/obj/item/weapon/screwdriver, /obj/item/weapon/weldingtool, /obj/item/weapon/wirecutters, /obj/item/weapon/wrench, /obj/item/device/multitool, \
	/obj/item/device/radio, /obj/item/device/analyzer,/obj/item/weapon/storage/briefcase/inflatable,/obj/item/weapon/storage/backpack/, /obj/item/weapon/melee/baton, /obj/item/weapon/gun, \
	/obj/item/weapon/storage/firstaid, /obj/item/weapon/reagent_containers/hypospray, /obj/item/roller)
	emp_protection = 80
	online_slowdown = 30
	offline_slowdown = 50
	offline_vision_restriction = TINT_BLIND
	cell_type =  /obj/item/weapon/cell/ultra

	chest_type = /obj/item/clothing/suit/space/rig/pc_buster
	helm_type = /obj/item/clothing/head/helmet/space/rig/pc_buster
	boot_type = /obj/item/clothing/shoes/magboots/rig/pc_buster
	glove_type = /obj/item/clothing/gloves/rig/pc_buster

	initial_modules = list(
	/obj/item/rig_module/mounted/plasmacutter,
	/obj/item/rig_module/mounted/energy_blade,
	/obj/item/rig_module/mounted/egun,
	/obj/item/rig_module/power_sink,
	/obj/item/rig_module/electrowarfare_suite,
	/obj/item/rig_module/self_destruct/pyrocorp,
	/obj/item/rig_module/fabricator/energy_net,
	/obj/item/rig_module/maneuvering_jets,
	/obj/item/rig_module/power_sink,
	/obj/item/rig_module/vision/multi,
	/obj/item/rig_module/cooling_unit
		)

/obj/item/clothing/head/helmet/space/rig/pc_buster
	species_restricted = list(SPECIES_IPC)

/obj/item/clothing/suit/space/rig/pc_buster
	species_restricted = list(SPECIES_IPC)

/obj/item/clothing/shoes/magboots/rig/pc_buster
	species_restricted = list(SPECIES_IPC)

/obj/item/clothing/gloves/rig/pc_buster
	species_restricted = list(SPECIES_IPC)
	siemens_coefficient = 0
	force = 8