/datum/design/item/mechfab
	build_type = MECHFAB
	category = "Misc"
	req_tech = list(TECH_MATERIAL = 1)

/datum/design/item/mechfab/robot
	category = "Robot"

//if the fabricator is a mech fab pass the manufacturer info over to the robot part constructor
/datum/design/item/mechfab/robot/Fabricate(var/newloc, var/fabricator)
	if(istype(fabricator, /obj/machinery/mecha_part_fabricator))
		var/obj/machinery/mecha_part_fabricator/mechfab = fabricator
		return new build_path(newloc, mechfab.manufacturer)
	return ..()

/datum/design/item/mechfab/robot/exoskeleton
	name = "Robot exoskeleton"
	id = "robot_exoskeleton"
	build_path = /obj/item/robot_parts/robot_suit
	time = 50
	materials = list(MATERIAL_STEEL = 50000)

/datum/design/item/mechfab/robot/torso
	name = "Robot torso"
	id = "robot_torso"
	build_path = /obj/item/robot_parts/chest
	time = 35
	materials = list(MATERIAL_STEEL = 40000)

/datum/design/item/mechfab/robot/head
	name = "Robot head"
	id = "robot_head"
	build_path = /obj/item/robot_parts/head
	time = 35
	materials = list(MATERIAL_STEEL = 25000)

/datum/design/item/mechfab/robot/l_arm
	name = "Robot left arm"
	id = "robot_l_arm"
	build_path = /obj/item/robot_parts/l_arm
	time = 20
	materials = list(MATERIAL_STEEL = 18000)

/datum/design/item/mechfab/robot/r_arm
	name = "Robot right arm"
	id = "robot_r_arm"
	build_path = /obj/item/robot_parts/r_arm
	time = 20
	materials = list(MATERIAL_STEEL = 18000)

/datum/design/item/mechfab/robot/l_leg
	name = "Robot left leg"
	id = "robot_l_leg"
	build_path = /obj/item/robot_parts/l_leg
	time = 20
	materials = list(MATERIAL_STEEL = 15000)

/datum/design/item/mechfab/robot/r_leg
	name = "Robot right leg"
	id = "robot_r_leg"
	build_path = /obj/item/robot_parts/r_leg
	time = 20
	materials = list(MATERIAL_STEEL = 15000)

/datum/design/item/mechfab/robot/component
	time = 20
	materials = list(MATERIAL_STEEL = 5000)

/datum/design/item/mechfab/robot/component/binary_communication_device
	name = "Binary communication device"
	id = "binary_communication_device"
	build_path = /obj/item/robot_parts/robot_component/binary_communication_device

/datum/design/item/mechfab/robot/component/radio
	name = "Radio"
	id = "radio"
	build_path = /obj/item/robot_parts/robot_component/radio

/datum/design/item/mechfab/robot/component/actuator
	name = "Actuator"
	id = "actuator"
	build_path = /obj/item/robot_parts/robot_component/actuator

/datum/design/item/mechfab/robot/component/diagnosis_unit
	name = "Diagnosis unit"
	id = "diagnosis_unit"
	build_path = /obj/item/robot_parts/robot_component/diagnosis_unit

/datum/design/item/mechfab/robot/component/camera
	name = "Camera"
	id = "camera"
	build_path = /obj/item/robot_parts/robot_component/camera

/datum/design/item/mechfab/robot/component/armour
	name = "Armour plating"
	id = "armour"
	build_path = /obj/item/robot_parts/robot_component/armour

/datum/design/item/mechfab/ripley
	category = "Ripley"

/datum/design/item/mechfab/ripley/chassis
	name = "Ripley chassis"
	id = "ripley_chassis"
	build_path = /obj/item/mecha_parts/chassis/ripley
	time = 10
	materials = list(MATERIAL_STEEL = 20000)

/datum/design/item/mechfab/ripley/chassis/firefighter
	name = "Firefigher chassis"
	id = "firefighter_chassis"
	build_path = /obj/item/mecha_parts/chassis/firefighter

/datum/design/item/mechfab/ripley/torso
	name = "Ripley torso"
	id = "ripley_torso"
	build_path = /obj/item/mecha_parts/part/ripley_torso
	time = 20
	materials = list(MATERIAL_STEEL = 30000, MATERIAL_GLASS = 15000)

/datum/design/item/mechfab/ripley/left_arm
	name = "Ripley left arm"
	id = "ripley_left_arm"
	build_path = /obj/item/mecha_parts/part/ripley_left_arm
	time = 15
	materials = list(MATERIAL_STEEL = 15000)

/datum/design/item/mechfab/ripley/right_arm
	name = "Ripley right arm"
	id = "ripley_right_arm"
	build_path = /obj/item/mecha_parts/part/ripley_right_arm
	time = 15
	materials = list(MATERIAL_STEEL = 15000)

/datum/design/item/mechfab/ripley/left_leg
	name = "Ripley left leg"
	id = "ripley_left_leg"
	build_path = /obj/item/mecha_parts/part/ripley_left_leg
	time = 15
	materials = list(MATERIAL_STEEL = 20000)

/datum/design/item/mechfab/ripley/right_leg
	name = "Ripley right leg"
	id = "ripley_right_leg"
	build_path = /obj/item/mecha_parts/part/ripley_right_leg
	time = 15
	materials = list(MATERIAL_STEEL = 20000)

/datum/design/item/mechfab/odysseus
	category = "Odysseus"

/datum/design/item/mechfab/odysseus/chassis
	name = "Odysseus chassis"
	id = "odysseus_chassis"
	build_path = /obj/item/mecha_parts/chassis/odysseus
	time = 10
	materials = list(MATERIAL_ALUMINIUM = 15000)

/datum/design/item/mechfab/odysseus/torso
	name = "Odysseus torso"
	id = "odysseus_torso"
	build_path = /obj/item/mecha_parts/part/odysseus_torso
	time = 18
	materials = list(MATERIAL_ALUMINIUM = 15000)

/datum/design/item/mechfab/odysseus/head
	name = "Odysseus head"
	id = "odysseus_head"
	build_path = /obj/item/mecha_parts/part/odysseus_head
	time = 10
	materials = list(MATERIAL_ALUMINIUM = 2000, MATERIAL_GLASS = 10000)

/datum/design/item/mechfab/odysseus/left_arm
	name = "Odysseus left arm"
	id = "odysseus_left_arm"
	build_path = /obj/item/mecha_parts/part/odysseus_left_arm
	time = 12
	materials = list(MATERIAL_ALUMINIUM = 10000)

/datum/design/item/mechfab/odysseus/right_arm
	name = "Odysseus right arm"
	id = "odysseus_right_arm"
	build_path = /obj/item/mecha_parts/part/odysseus_right_arm
	time = 12
	materials = list(MATERIAL_ALUMINIUM = 10000)

/datum/design/item/mechfab/odysseus/left_leg
	name = "Odysseus left leg"
	id = "odysseus_left_leg"
	build_path = /obj/item/mecha_parts/part/odysseus_left_leg
	time = 13
	materials = list(MATERIAL_ALUMINIUM = 15000)

/datum/design/item/mechfab/odysseus/right_leg
	name = "Odysseus right leg"
	id = "odysseus_right_leg"
	build_path = /obj/item/mecha_parts/part/odysseus_right_leg
	time = 13
	materials = list(MATERIAL_ALUMINIUM = 15000)

/datum/design/item/mechfab/gygax
	category = "Gygax"

/datum/design/item/mechfab/gygax/chassis
	name = "Gygax chassis"
	id = "gygax_chassis"
	build_path = /obj/item/mecha_parts/chassis/gygax
	time = 10
	materials = list(MATERIAL_STEEL = 25000, MATERIAL_TUNGSTEN = 5000)

/datum/design/item/mechfab/gygax/torso
	name = "Gygax torso"
	id = "gygax_torso"
	build_path = /obj/item/mecha_parts/part/gygax_torso
	time = 30
	materials = list(MATERIAL_STEEL = 50000, MATERIAL_TUNGSTEN = 5000, MATERIAL_GLASS = 20000)

/datum/design/item/mechfab/gygax/head
	name = "Gygax head"
	id = "gygax_head"
	build_path = /obj/item/mecha_parts/part/gygax_head
	time = 20
	materials = list(MATERIAL_STEEL = 20000, MATERIAL_TUNGSTEN = 5000, MATERIAL_GLASS = 10000)

/datum/design/item/mechfab/gygax/left_arm
	name = "Gygax left arm"
	id = "gygax_left_arm"
	build_path = /obj/item/mecha_parts/part/gygax_left_arm
	time = 20
	materials = list(MATERIAL_STEEL = 30000)

/datum/design/item/mechfab/gygax/right_arm
	name = "Gygax right arm"
	id = "gygax_right_arm"
	build_path = /obj/item/mecha_parts/part/gygax_right_arm
	time = 20
	materials = list(MATERIAL_STEEL = 30000)

/datum/design/item/mechfab/gygax/left_leg
	name = "Gygax left leg"
	id = "gygax_left_leg"
	build_path = /obj/item/mecha_parts/part/gygax_left_leg
	time = 20
	materials = list(MATERIAL_STEEL = 35000)

/datum/design/item/mechfab/gygax/right_leg
	name = "Gygax right leg"
	id = "gygax_right_leg"
	build_path = /obj/item/mecha_parts/part/gygax_right_leg
	time = 20
	materials = list(MATERIAL_STEEL = 35000)

/datum/design/item/mechfab/gygax/armour
	name = "Gygax armour plates"
	id = "gygax_armour"
	build_path = /obj/item/mecha_parts/part/gygax_armour
	time = 60
	materials = list(MATERIAL_STEEL = 50000, MATERIAL_DIAMOND = 10000)

/datum/design/item/mechfab/durand
	category = "Durand"

/datum/design/item/mechfab/durand/chassis
	name = "Durand chassis"
	id = "durand_chassis"
	build_path = /obj/item/mecha_parts/chassis/durand
	time = 10
	materials = list(MATERIAL_STEEL = 25000)

/datum/design/item/mechfab/durand/torso
	name = "Durand torso"
	id = "durand_torso"
	build_path = /obj/item/mecha_parts/part/durand_torso
	time = 30
	materials = list(MATERIAL_STEEL = 55000, MATERIAL_GLASS = 20000, MATERIAL_SILVER = 10000)

/datum/design/item/mechfab/durand/head
	name = "Durand head"
	id = "durand_head"
	build_path = /obj/item/mecha_parts/part/durand_head
	time = 20
	materials = list(MATERIAL_STEEL = 25000, MATERIAL_GLASS = 10000, MATERIAL_SILVER = 3000)

/datum/design/item/mechfab/durand/left_arm
	name = "Durand left arm"
	id = "durand_left_arm"
	build_path = /obj/item/mecha_parts/part/durand_left_arm
	time = 20
	materials = list(MATERIAL_STEEL = 35000, MATERIAL_SILVER = 3000)

/datum/design/item/mechfab/durand/right_arm
	name = "Durand right arm"
	id = "durand_right_arm"
	build_path = /obj/item/mecha_parts/part/durand_right_arm
	time = 20
	materials = list(MATERIAL_STEEL = 35000, MATERIAL_SILVER = 3000)

/datum/design/item/mechfab/durand/left_leg
	name = "Durand left leg"
	id = "durand_left_leg"
	build_path = /obj/item/mecha_parts/part/durand_left_leg
	time = 20
	materials = list(MATERIAL_STEEL = 40000, MATERIAL_SILVER = 3000)

/datum/design/item/mechfab/durand/right_leg
	name = "Durand right leg"
	id = "durand_right_leg"
	build_path = /obj/item/mecha_parts/part/durand_right_leg
	time = 20
	materials = list(MATERIAL_STEEL = 40000, MATERIAL_SILVER = 3000)

/datum/design/item/mechfab/durand/armour
	name = "Durand armour plates"
	id = "durand_armour"
	build_path = /obj/item/mecha_parts/part/durand_armour
	time = 60
	materials = list(MATERIAL_STEEL = 50000, MATERIAL_URANIUM = 10000)

/datum/design/item/robot_upgrade
	build_type = MECHFAB
	time = 12
	materials = list(MATERIAL_COPPER = 5000)
	category = "Cyborg Upgrade Modules"

/datum/design/item/robot_upgrade/rename
	name = "Rename module"
	desc = "Used to rename a cyborg."
	id = "borg_rename_module"
	build_path = /obj/item/borg/upgrade/rename

/datum/design/item/robot_upgrade/reset
	name = "Reset module"
	desc = "Used to reset a cyborg's module. Destroys any other upgrades applied to the robot."
	id = "borg_reset_module"
	build_path = /obj/item/borg/upgrade/reset

/datum/design/item/robot_upgrade/floodlight
	name = "Floodlight module"
	desc = "Used to boost cyborg's integrated light intensity."
	id = "borg_floodlight_module"
	build_path = /obj/item/borg/upgrade/floodlight

/datum/design/item/robot_upgrade/restart
	name = "Emergency restart module"
	desc = "Used to force a restart of a disabled-but-repaired robot, bringing it back online."
	id = "borg_restart_module"
	materials = list(MATERIAL_COPPER  = 60000, MATERIAL_GLASS = 5000)
	build_path = /obj/item/borg/upgrade/restart

/datum/design/item/robot_upgrade/vtec
	name = "VTEC module"
	desc = "Used to kick in a robot's VTEC systems, increasing their speed."
	id = "borg_vtec_module"
	materials = list(MATERIAL_COPPER  = 20000, MATERIAL_GLASS = 6000, MATERIAL_COPPER = 5000)
	build_path = /obj/item/borg/upgrade/vtec

/datum/design/item/robot_upgrade/weaponcooler
	name = "Rapid weapon cooling module"
	desc = "Used to cool a mounted energy gun, increasing the potential current in it and thus its recharge rate."
	id = "borg_taser_module"
	materials = list(MATERIAL_STEEL = 80000, MATERIAL_GLASS = 6000, MATERIAL_GOLD = 2000, MATERIAL_DIAMOND = 500)
	build_path = /obj/item/borg/upgrade/weaponcooler

/datum/design/item/robot_upgrade/jetpack
	name = "Jetpack module"
	desc = "A carbon dioxide jetpack suitable for low-gravity mining operations."
	id = "borg_jetpack_module"
	materials = list(MATERIAL_STEEL = 10000, MATERIAL_PHORON = 15000, MATERIAL_URANIUM = 20000)
	build_path = /obj/item/borg/upgrade/jetpack

/datum/design/item/robot_upgrade/rcd
	name = "RCD module"
	desc = "A rapid construction device module for use during construction operations."
	id = "borg_rcd_module"
	materials = list(MATERIAL_STEEL = 25000, MATERIAL_PHORON = 10000, MATERIAL_GOLD = 1000, MATERIAL_SILVER = 1000)
	build_path = /obj/item/borg/upgrade/rcd

/datum/design/item/robot_upgrade/syndicate
	name = "Illegal upgrade"
	desc = "Allows for the construction of lethal upgrades for cyborgs."
	id = "borg_syndicate_module"
	req_tech = list(TECH_COMBAT = 4, TECH_ILLEGAL = 3)
	materials = list(MATERIAL_STEEL = 10000, MATERIAL_GLASS = 15000, MATERIAL_DIAMOND = 10000)
	build_path = /obj/item/borg/upgrade/syndicate

/datum/design/item/mecha_tracking
	name = "Exosuit tracking beacon"
	build_type = MECHFAB
	time = 5
	materials = list(MATERIAL_COPPER  = 500)
	build_path = /obj/item/mecha_parts/mecha_tracking
	category = "Misc"

/datum/design/item/mecha
	build_type = MECHFAB
	category = "Exosuit Equipment"
	time = 10
	materials = list(MATERIAL_STEEL = 10000)

/datum/design/item/mecha/AssembleDesignDesc()
	if(!desc)
		desc = "Allows for the construction of \a '[item_name]' exosuit module."

/datum/design/item/mecha/hydraulic_clamp
	name = "Hydraulic clamp"
	id = "hydraulic_clamp"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/hydraulic_clamp

/datum/design/item/mecha/drill
	name = "Drill"
	id = "mech_drill"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/drill

/datum/design/item/mecha/extinguisher
	name = "Extinguisher"
	id = "extinguisher"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/extinguisher

/datum/design/item/mecha/cable_layer
	name = "Cable layer"
	id = "mech_cable_layer"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/cable_layer

/datum/design/item/mecha/flaregun
	name = "Flare launcher"
	id = "mecha_flare_gun"
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/missile_rack/flare
	materials = list(MATERIAL_STEEL = 12500)

/datum/design/item/mecha/sleeper
	name = "Sleeper"
	id = "mech_sleeper"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/sleeper
	materials = list(MATERIAL_STEEL = 5000, MATERIAL_GLASS = 10000)

/datum/design/item/mecha/syringe_gun
	name = "Syringe gun"
	id = "mech_syringe_gun"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/syringe_gun
	time = 20
	materials = list(MATERIAL_STEEL = 3000, MATERIAL_GLASS = 2000, MATERIAL_COPPER = 1500)

/*
/datum/design/item/mecha/syringe_gun
	desc = "Exosuit-mounted syringe gun and chemical synthesizer."
	id = "mech_syringe_gun"
	req_tech = list(TECH_MATERIAL = 3, TECH_BIO = 4, TECH_MAGNET = 4, TECH_DATA = 3)
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/syringe_gun
	*/

/datum/design/item/mecha/passenger
	name = "Passenger compartment"
	id = "mech_passenger"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/passenger
	materials = list(MATERIAL_ALUMINIUM = 5000, MATERIAL_GLASS = 5000)

//obj/item/mecha_parts/mecha_equipment/repair_droid,
//obj/item/mecha_parts/mecha_equipment/jetpack, //TODO MECHA JETPACK SPRITE MISSING

/datum/design/item/mecha/taser
	name = "PBT \"Pacifier\" mounted taser"
	id = "mech_taser"
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/taser

/datum/design/item/mecha/lmg
	name = "Ultra AC 2"
	id = "mech_lmg"
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/lmg

/datum/design/item/mecha/weapon
	req_tech = list(TECH_COMBAT = 3)

// *** Weapon modules
/datum/design/item/mecha/weapon/scattershot
	name = "LBX AC 10 \"Scattershot\""
	id = "mech_scattershot"
	req_tech = list(TECH_COMBAT = 4)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/scattershot

/datum/design/item/mecha/weapon/laser
	name = "CH-PS \"Immolator\" laser"
	id = "mech_laser"
	req_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 3)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/laser

/datum/design/item/mecha/weapon/laser_rigged
	name = "Jury-rigged welder-laser"
	desc = "Allows for the construction of a welder-laser assembly package for non-combat exosuits."
	id = "mech_laser_rigged"
	req_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 2)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/riggedlaser

/datum/design/item/mecha/weapon/laser_heavy
	name = "CH-LC \"Solaris\" laser cannon"
	id = "mech_laser_heavy"
	req_tech = list(TECH_COMBAT = 4, TECH_MAGNET = 4)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/laser/heavy

/datum/design/item/mecha/weapon/ion
	name = "mkIV ion heavy cannon"
	id = "mech_ion"
	req_tech = list(TECH_COMBAT = 4, TECH_MAGNET = 4)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/ion

/datum/design/item/mecha/weapon/grenade_launcher
	name = "SGL-6 grenade launcher"
	id = "mech_grenade_launcher"
	req_tech = list(TECH_COMBAT = 3)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/missile_rack/flashbang

/datum/design/item/mecha/weapon/clusterbang_launcher
	name = "SOP-6 grenade launcher"
	desc = "A weapon that violates the Geneva Convention at 6 rounds per minute."
	id = "clusterbang_launcher"
	req_tech = list(TECH_COMBAT= 5, TECH_MATERIAL = 5, TECH_ILLEGAL = 3)
	materials = list(MATERIAL_STEEL = 20000, MATERIAL_GOLD = 6000, MATERIAL_URANIUM = 6000)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/missile_rack/flashbang/clusterbang/limited

// *** Nonweapon modules
/datum/design/item/mecha/wormhole_gen
	name = "Wormhole generator"
	desc = "An exosuit module that can generate small quasi-stable wormholes."
	id = "mech_wormhole_gen"
	req_tech = list(TECH_BLUESPACE = 3, TECH_MAGNET = 2)
	build_path = /obj/item/mecha_parts/mecha_equipment/wormhole_generator

/datum/design/item/mecha/teleporter
	name = "Teleporter"
	desc = "An exosuit module that allows teleportation to any position in view."
	id = "mech_teleporter"
	req_tech = list(TECH_BLUESPACE = 10, TECH_MAGNET = 5)
	build_path = /obj/item/mecha_parts/mecha_equipment/teleporter

/datum/design/item/mecha/rcd
	name = "RCD"
	desc = "An exosuit-mounted rapid construction device."
	id = "mech_rcd"
	time = 120
	materials = list(MATERIAL_STEEL = 30000, MATERIAL_PHORON = 25000, MATERIAL_SILVER = 20000, MATERIAL_GOLD = 20000)
	req_tech = list(TECH_MATERIAL = 4, TECH_BLUESPACE = 3, TECH_MAGNET = 4, TECH_POWER = 4, TECH_ENGINEERING = 4)
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/rcd

/datum/design/item/mecha/gravcatapult
	name = "Gravitational catapult"
	desc = "An exosuit-mounted gravitational catapult."
	id = "mech_gravcatapult"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 3, TECH_ENGINEERING = 3)
	build_path = /obj/item/mecha_parts/mecha_equipment/gravcatapult

/datum/design/item/mecha/repair_droid
	name = "Repair droid"
	desc = "Automated repair droid, exosuits' best companion. BEEP BOOP"
	id = "mech_repair_droid"
	req_tech = list(TECH_MAGNET = 3, TECH_DATA = 3, TECH_ENGINEERING = 3)
	materials = list(MATERIAL_STEEL = 10000, MATERIAL_GOLD = 1000, MATERIAL_SILVER = 2000, MATERIAL_GLASS = 5000)
	build_path = /obj/item/mecha_parts/mecha_equipment/repair_droid

/datum/design/item/mecha/phoron_generator
	desc = "Phoron reactor."
	id = "mech_phoron_generator"
	req_tech = list(TECH_PHORON = 2, TECH_POWER= 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/mecha_parts/mecha_equipment/generator
	materials = list(MATERIAL_STEEL = 10000, MATERIAL_SILVER = 500, MATERIAL_GLASS = 1000)

/datum/design/item/mecha/energy_relay
	name = "Energy relay"
	id = "mech_energy_relay"
	req_tech = list(TECH_MAGNET = 4, TECH_POWER = 3)
	materials = list(MATERIAL_STEEL = 10000, MATERIAL_GOLD = 2000, MATERIAL_SILVER = 3000, MATERIAL_GLASS = 2000)
	build_path = /obj/item/mecha_parts/mecha_equipment/tesla_energy_relay

/datum/design/item/mecha/ccw_armor
	name = "CCW armor booster"
	desc = "Exosuit close-combat armor booster."
	id = "mech_ccw_armor"
	req_tech = list(TECH_MATERIAL = 5, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 20000, MATERIAL_SILVER = 5000)
	build_path = /obj/item/mecha_parts/mecha_equipment/armor_booster/anticcw_armor_booster

/datum/design/item/mecha/proj_armor
	desc = "Exosuit projectile armor booster."
	id = "mech_proj_armor"
	req_tech = list(TECH_MATERIAL = 5, TECH_COMBAT = 5, TECH_ENGINEERING = 3)
	materials = list(MATERIAL_STEEL = 20000, MATERIAL_GOLD = 5000)
	build_path = /obj/item/mecha_parts/mecha_equipment/armor_booster/antiproj_armor_booster

/datum/design/item/mecha/diamond_drill
	name = "Diamond drill"
	desc = "A diamond version of the exosuit drill. It's harder, better, faster, stronger."
	id = "mech_diamond_drill"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 3)
	materials = list(MATERIAL_STEEL = 10000, MATERIAL_DIAMOND = 6500)
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/drill/diamonddrill

/datum/design/item/mecha/generator_nuclear
	name = "Nuclear reactor"
	desc = "Exosuit-held nuclear reactor. Converts uranium and everyone's health to energy."
	id = "mech_generator_nuclear"
	req_tech = list(TECH_POWER= 3, TECH_ENGINEERING = 3, TECH_MATERIAL = 3)
	materials = list(MATERIAL_STEEL = 10000, MATERIAL_SILVER = 500, MATERIAL_GLASS = 1000)
	build_path = /obj/item/mecha_parts/mecha_equipment/generator/nuclear

/datum/design/item/synthetic_flash
	name = "Synthetic flash"
	id = "sflash"
	req_tech = list(TECH_MAGNET = 3, TECH_COMBAT = 2)
	build_type = MECHFAB
	materials = list(MATERIAL_STEEL = 750, MATERIAL_GLASS = 750)
	build_path = /obj/item/device/flash/synthetic
	category = "Misc"

//Augments, son
/datum/design/item/mechfab/augment
	category = "Augments"

/datum/design/item/mechfab/augment/microbattery
	name = "Microbattery"
	build_path = /obj/item/organ/internal/cell
	materials = list("copper" = 2000, "glass" = 500)
	req_tech = list(TECH_POWER = 1)
	id = "microbattery"

/datum/design/item/mechfab/augment/upgraded_microbattery
	name = "Upgraded Microbattery"
	build_path = /obj/item/organ/internal/cell/super
	materials = list("copper" = 6000, "glass" = 1000)
	req_tech = list(TECH_POWER = 4, TECH_BIO = 2)
	id = "upgraded_microbattery"

/datum/design/item/mechfab/augment/pyrocorp_microbattery
	name = "Military-grade Microbattery"
	build_path = /obj/item/organ/internal/cell/hyper
	materials = list("copper" = 4000, "zinc" = 4000, "gold" = 500, "glass" = 500)
	req_tech = list(TECH_POWER = 6, TECH_COMBAT = 5, TECH_EVENT = 4)
	id = "pyrocorp_microbattery"

/datum/design/item/mechfab/augment/armblade
	name = "Armblade"
	build_path = /obj/item/organ/internal/augment/active/simple/armblade
	materials = list(DEFAULT_WALL_MATERIAL = 4000, "glass" = 750)
	req_tech = list(TECH_MAGNET = 3, TECH_COMBAT = 2, TECH_MATERIAL = 4, TECH_BIO = 3)
	id = "augment_blade"

/datum/design/item/mechfab/augment/armblade/wolverine
	name = "Cyberclaws"
	build_path = /obj/item/organ/internal/augment/active/simple/wolverine
	materials = list(DEFAULT_WALL_MATERIAL = 6000, "diamond" = 250)
	req_tech = list(TECH_MAGNET = 3, TECH_COMBAT = 4, TECH_MATERIAL = 4, TECH_BIO = 3)
	id = "augment_wolverine"

/datum/design/item/mechfab/augment/engineering
	name = "Engineering toolset"
	build_path = /obj/item/organ/internal/augment/active/polytool/engineer
	materials = list(DEFAULT_WALL_MATERIAL = 3000, "glass" = 1000)
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 4, TECH_BIO = 2)
	id = "augment_toolset_engineering"

/datum/design/item/mechfab/augment/surgery
	name = "Surgical toolset"
	build_path = /obj/item/organ/internal/augment/active/polytool/surgical
	materials = list(DEFAULT_WALL_MATERIAL = 2000, "glass" = 2000)
	req_tech = list(TECH_BIO = 4, TECH_MATERIAL = 4)
	id = "augment_toolset_surgery"

/datum/design/item/mechfab/augment/reflex
	name = "Synapse interceptors"
	build_path = /obj/item/organ/internal/augment/boost/reflex
	materials = list(DEFAULT_WALL_MATERIAL = 750, "glass" = 750, "silver" = 100)
	req_tech = list(TECH_MATERIAL = 5, TECH_COMBAT = 4, TECH_BIO = 4, TECH_MAGNET = 5)
	id = "augment_booster_reflex"

/datum/design/item/mechfab/augment/shooting
	name = "Gunnery booster"
	build_path = /obj/item/organ/internal/augment/boost/shooting
	materials = list(DEFAULT_WALL_MATERIAL = 750, "glass" = 750, "silver" = 100)
	req_tech = list(TECH_MATERIAL = 5, TECH_COMBAT = 5, TECH_BIO = 4)
	id = "augment_booster_gunnery"

/datum/design/item/mechfab/augment/muscle
	name = "Mechanical muscles"
	build_path = /obj/item/organ/internal/augment/boost/muscle
	materials = list(DEFAULT_WALL_MATERIAL = 5000, "glass" = 1000)
	req_tech = list(TECH_MATERIAL = 3, TECH_BIO = 4)
	id = "augment_booster_muscles"

/datum/design/item/mechfab/augment/armor
	name = "Subdermal armor"
	build_path = /obj/item/organ/internal/augment/armor
	materials = list(DEFAULT_WALL_MATERIAL = 10000, "glass" = 750)
	req_tech = list(TECH_MATERIAL = 5, TECH_COMBAT = 4, TECH_BIO = 4)
	id = "augment_armor"

/datum/design/item/mechfab/augment/emp_armor
	name = "Internal EMP armor"
	build_path = /obj/item/organ/internal/augment/emp_armor
	materials = list(DEFAULT_WALL_MATERIAL = 10000, "copper" = 5000)
	req_tech = list(TECH_MATERIAL = 5, TECH_COMBAT = 4, TECH_BIO = 4, TECH_MAGNET = 5)
	id = "augment_emp_armor"

/datum/design/item/mechfab/augment/emp_armor/advanced
	name = "Internal Advanced EMP armor"
	build_path = /obj/item/organ/internal/augment/emp_armor/advanced
	materials = list(DEFAULT_WALL_MATERIAL = 10000, "copper" = 5000, "zinc" = 2000)
	req_tech = list(TECH_MATERIAL = 5, TECH_COMBAT = 6, TECH_BIO = 4, TECH_MAGNET = 5)
	id = "augment_emp_armor_ultra"

/datum/design/item/mechfab/augment/nanounit
	name = "Nanite MCU"
	build_path = /obj/item/organ/internal/augment/active/nanounit
	materials = list(DEFAULT_WALL_MATERIAL = 5000, "glass" = 1000, "gold" = 100, "uranium" = 500)
	req_tech = list(TECH_MATERIAL = 5, TECH_COMBAT = 5, TECH_BIO = 5, TECH_ENGINEERING = 5)
	id = "augment_nanounit"

/datum/design/item/mechfab/augment/circuit
	name = "Integrated circuit frame"
	build_path = /obj/item/organ/internal/augment/active/simple/circuit
	materials = list(DEFAULT_WALL_MATERIAL = 3000)
	id = "augment_circuitry"

// RIG Suits fabrication

/datum/design/item/mechfab/rig
	category = "RIG Fabrication"

// Normal RIGs
/datum/design/item/mechfab/rig/eva
	name = "EVA RIG"
	build_path = /obj/item/weapon/rig/eva
	materials = list(DEFAULT_WALL_MATERIAL = 45000, "glass" = 7500, "copper" = 6000, "aluminium" = 10000)
	req_tech = list(TECH_MAGNET = 3, TECH_ENGINEERING = 6, TECH_POWER = 3, TECH_COMBAT = 1, TECH_MATERIAL = 3)
	id = "eva_rig"

/datum/design/item/mechfab/rig/industrial
	name = "Industrial RIG"
	build_path = /obj/item/weapon/rig/industrial
	materials = list(DEFAULT_WALL_MATERIAL = 50000, "glass" = 7500, "copper" = 10000, "aluminium" = 15000)
	req_tech = list(TECH_MAGNET = 3, TECH_ENGINEERING = 6, TECH_POWER = 3, TECH_COMBAT = 1, TECH_MATERIAL = 5)
	id = "industrial_rig"

/datum/design/item/mechfab/rig/hazard
	name = "Hazard RIG"
	build_path = /obj/item/weapon/rig/hazard
	materials = list(DEFAULT_WALL_MATERIAL = 50000, "glass" = 7500, "copper" = 10000, "aluminium" = 15000)
	req_tech = list(TECH_MAGNET = 3, TECH_ENGINEERING = 6, TECH_POWER = 4, TECH_COMBAT = 1, TECH_MATERIAL = 4)
	id = "hazard_rig"

/datum/design/item/mechfab/rig/medical
	name = "Medical RIG"
	build_path = /obj/item/weapon/rig/medical
	materials = list(DEFAULT_WALL_MATERIAL = 50000, "glass" = 7500, "copper" = 10000, "aluminium" = 15000)
	req_tech = list(TECH_MAGNET = 3, TECH_ENGINEERING = 6, TECH_POWER = 3, TECH_COMBAT = 1, TECH_MATERIAL = 4, TECH_BIO = 2)
	id = "medical_rig"

/datum/design/item/mechfab/rig/combat
	name = "Combat RIG"
	build_path = /obj/item/weapon/rig/combat
	materials = list(DEFAULT_WALL_MATERIAL = 60000, "glass" = 4000, "copper" = 10000, "tungsten" = 10000)
	req_tech = list(TECH_MAGNET = 5, TECH_ENGINEERING = 6, TECH_POWER = 3, TECH_COMBAT = 6, TECH_MATERIAL = 4, TECH_BIO = 1)
	id = "combat_rig"


// Illegal RIGs
/datum/design/item/mechfab/rig/light
	name = "Light RIG"
	build_path = /obj/item/weapon/rig/light
	materials = list(DEFAULT_WALL_MATERIAL = 60000, "glass" = 4000, "copper" = 10000, "tungsten" = 10000)
	req_tech = list(TECH_MAGNET = 5, TECH_ENGINEERING = 6, TECH_POWER = 3, TECH_COMBAT = 6, TECH_MATERIAL = 4, TECH_BIO = 1, TECH_ILLEGAL = 5)
	id = "light_rig"



// Rig Augments

/datum/design/item/mechfab/rig/module
	category = "RIG Modules"

// Utility Modules

/datum/design/item/mechfab/rig/module/healthscanner
	name = "Health scanner module"
	build_path = /obj/item/rig_module/device/healthscanner
	materials = list(DEFAULT_WALL_MATERIAL = 1000, "glass" = 500, "copper" = 100)
	req_tech = list(TECH_MAGNET = 3, TECH_BIO = 3, TECH_ENGINEERING = 5)
	id = "healthscanner"

/datum/design/item/mechfab/rig/module/drill
	name = "Hardsuit drill mount"
	build_path = /obj/item/rig_module/device/drill
	materials = list(DEFAULT_WALL_MATERIAL = 6000, "copper" = 1000)
	req_tech = list(TECH_MATERIAL = 6, TECH_POWER = 4, TECH_ENGINEERING = 6)
	id = "drill"

/datum/design/item/mechfab/rig/module/anomaly_scanner
	name = "Hardsuit anomaly scanner"
	build_path = /obj/item/rig_module/device/anomaly_scanner
	materials = list(DEFAULT_WALL_MATERIAL = 1000, "glass" = 500, "copper" = 100, "aluminium" = 1000)
	req_tech = list(TECH_BLUESPACE = 4, TECH_MAGNET = 4, TECH_ENGINEERING = 6)
	id = "anomaly_scanner"

/datum/design/item/mechfab/rig/module/orescanner
	name = "Hardsuit ore scanner"
	build_path = /obj/item/rig_module/device/orescanner
	materials = list(DEFAULT_WALL_MATERIAL = 1000, "glass" = 500, "copper" = 100)
	req_tech = list(TECH_MATERIAL = 4, TECH_MAGNET = 4, TECH_ENGINEERING = 6)
	id = "orescanner"

/datum/design/item/mechfab/rig/module/chem_dispenser/injector
	name = "Hardsuit chemical injector"
	build_path = /obj/item/rig_module/chem_dispenser/injector
	materials = list(DEFAULT_WALL_MATERIAL = 1000, "glass" = 500, "copper" = 100, "lead" = 2000)
	req_tech = list(TECH_BIO = 4, TECH_MAGNET = 4, TECH_ENGINEERING = 6)
	id = "chem_dispenser_injector"

/datum/design/item/mechfab/rig/module/maneuvering_jets
	name = "Hardsuit Maneuvering Jets"
	build_path = /obj/item/rig_module/maneuvering_jets
	materials = list(DEFAULT_WALL_MATERIAL = 5000, "glass" = 500, "copper" = 2000, "aluminium" = 1000)
	req_tech = list(TECH_MATERIAL = 6,  TECH_ENGINEERING = 7)
	id = "maneuvering_jets"

/datum/design/item/mechfab/rig/module/cooling_unit
	name = "Hardsuit cooling Unit"
	build_path = /obj/item/rig_module/cooling_unit
	materials = list(DEFAULT_WALL_MATERIAL = 1000, "glass" = 500, "copper" = 100, "aluminium" = 1000)
	req_tech = list(TECH_MAGNET = 2, TECH_MATERIAL = 2, TECH_ENGINEERING = 5)
	id = "cooling_unit"

/datum/design/item/mechfab/rig/module/ai_container
	name = "Hardsuit AI container"
	build_path = /obj/item/rig_module/ai_container
	materials = list(DEFAULT_WALL_MATERIAL = 5000, "glass" = 500, "copper" = 100, "aluminium" = 1000)
	req_tech = list(TECH_MAGNET = 2, TECH_MATERIAL = 2, TECH_ENGINEERING = 5)
	id = "ai_container"


// Vision modules


/datum/design/item/mechfab/rig/module/multi
	name = "Hardsuit Visor"
	build_path = /obj/item/rig_module/vision/multi
	materials = list(DEFAULT_WALL_MATERIAL = 1000, "glass" = 500, "copper" = 100, "aluminium" = 1000)
	req_tech = list(TECH_MAGNET = 4, TECH_BIO = 4, TECH_ENGINEERING = 6)
	id = "hardsuit_multi"

/datum/design/item/mechfab/rig/module/meson
	name = "Hardsuit Meson"
	build_path = /obj/item/rig_module/vision/meson
	materials = list(DEFAULT_WALL_MATERIAL = 1000, "glass" = 2000, "copper" = 1000, "aluminium" = 1000)
	req_tech = list(TECH_MAGNET = 3, TECH_BIO = 2, TECH_ENGINEERING = 5)
	id = "hardsuit_meson"

/datum/design/item/mechfab/rig/module/thermal
	name = "Hardsuit Thermal vision"
	build_path = /obj/item/rig_module/vision/thermal
	materials = list(DEFAULT_WALL_MATERIAL = 1000, "glass" = 2000, "copper" = 1000, "aluminium" = 1000)
	req_tech = list(TECH_MAGNET = 3, TECH_BIO = 2, TECH_ENGINEERING = 5)
	id = "hardsuit_thermal"

/datum/design/item/mechfab/rig/module/nvg
	name = "Hardsuit Night Vision"
	build_path = /obj/item/rig_module/vision/nvg
	materials = list(DEFAULT_WALL_MATERIAL = 1000, "glass" = 2000, "copper" = 1000, "aluminium" = 1000)
	req_tech = list(TECH_MAGNET = 6, TECH_BIO = 2, TECH_ENGINEERING = 5)
	id = "hardsuit_nvg"

/datum/design/item/mechfab/rig/module/medhud
	name = "Hardsuit Medical HUD"
	build_path = /obj/item/rig_module/vision/medhud
	materials = list(DEFAULT_WALL_MATERIAL = 1000, "glass" = 500, "copper" = 100, "aluminium" = 1000)
	req_tech = list(TECH_MAGNET = 3, TECH_BIO = 2, TECH_ENGINEERING = 5)
	id = "hardsuit_medhud"

/datum/design/item/mechfab/rig/module/sechud
	name = "Hardsuit Security HUD"
	build_path = /obj/item/rig_module/vision/sechud
	materials = list(DEFAULT_WALL_MATERIAL = 1000, "glass" = 500, "copper" = 100, "aluminium" = 1000)
	req_tech = list(TECH_MAGNET = 3, TECH_BIO = 2, TECH_ENGINEERING = 5)
	id = "hardsuit_sechud"

// Combat modules

/datum/design/item/mechfab/rig/module/flash
	name = "Hardsuit mounted Flash"
	build_path = /obj/item/rig_module/device/flash
	materials = list(DEFAULT_WALL_MATERIAL = 10000, "glass" = 5000, "copper" = 100, "aluminium" = 1000)
	req_tech = list(TECH_MAGNET = 3, TECH_COMBAT = 2, TECH_ENGINEERING = 5)
	id = "hardsuit_flash"

/datum/design/item/mechfab/rig/module/mounted
	name = "Hardsuit mounted Energy Cannon"
	build_path = /obj/item/rig_module/mounted
	materials = list(DEFAULT_WALL_MATERIAL = 20000, "glass" = 5000, "copper" = 100, "aluminium" = 1000, "gold" = 2000)
	req_tech = list(TECH_POWER = 6, TECH_COMBAT = 6, TECH_ENGINEERING = 6)
	id = "hardsuit_ecannon"

/datum/design/item/mechfab/rig/module/egun
	name = "Hardsuit mounted Energy Gun"
	build_path = /obj/item/rig_module/mounted/egun
	materials = list(DEFAULT_WALL_MATERIAL = 20000, "glass" = 5000, "copper" = 100, "aluminium" = 1000, "gold" = 2000)
	req_tech = list(TECH_POWER = 6, TECH_COMBAT = 6, TECH_ENGINEERING = 6)
	id = "hardsuit_egun"

/datum/design/item/mechfab/rig/module/taser
	name = "Hardsuit Mounted Taser"
	build_path = /obj/item/rig_module/mounted/taser
	materials = list(DEFAULT_WALL_MATERIAL = 20000, "glass" = 5000, "copper" = 100, "aluminium" = 1000, "silver" = 2000)
	req_tech = list(TECH_MAGNET = 3, TECH_COMBAT = 4, TECH_ENGINEERING = 5)
	id = "hardsuit_etaser"

/datum/design/item/mechfab/rig/module/plasmacutter
	name = "Hardsuit mounted Plasma Cutter"
	build_path = /obj/item/rig_module/mounted/plasmacutter
	materials = list(DEFAULT_WALL_MATERIAL = 20000, "glass" = 5000, "copper" = 100, "aluminium" = 1000, "phoron" = 4000)
	req_tech = list(TECH_POWER = 6, TECH_COMBAT = 6, TECH_ENGINEERING = 6)
	id = "hardsuit_plasmacutter"

// Illegal shit

/datum/design/item/mechfab/rig/module/datajack
	name = "Hardsuit mounted Datajack"
	build_path = /obj/item/rig_module/datajack
	materials = list(DEFAULT_WALL_MATERIAL = 15000, "glass" = 5000, "tungsten" = 100, "aluminium" = 1000, "phoron" = 4000)
	req_tech = list(TECH_POWER = 6, TECH_COMBAT = 6, TECH_ENGINEERING = 6, TECH_ILLEGAL = 8)
	id = "hardsuit_datajack"

/datum/design/item/mechfab/rig/module/stealth_field
	name = "Hardsuit mounted Stealth Field"
	build_path = /obj/item/rig_module/stealth_field
	materials = list(DEFAULT_WALL_MATERIAL = 15000, "glass" = 5000, "tungsten" = 3000, "niobium" = 1000, "phoron" = 4000)
	req_tech = list(TECH_POWER = 6, TECH_COMBAT = 6, TECH_ENGINEERING = 6, TECH_ILLEGAL = 8)
	id = "hardsuit_stealthfield"

/datum/design/item/mechfab/rig/module/teleporter
	name = "Hardsuit mounted Teleporter"
	build_path = /obj/item/rig_module/teleporter
	materials = list(DEFAULT_WALL_MATERIAL = 15000, "glass" = 5000, "tungsten" = 1000, "aluminium" = 1000, "phoron" = 4000)
	req_tech = list(TECH_POWER = 6, TECH_COMBAT = 6, TECH_ENGINEERING = 6, TECH_ILLEGAL = 8)
	id = "hardsuit_teleporter"


/datum/design/item/mechfab/voidsuits
	category = "Voidsuits"

/datum/design/item/mechfab/voidsuit/magboots
	name = "Magboots"
	build_path = /obj/item/clothing/shoes/magboots
	materials = list(DEFAULT_WALL_MATERIAL = 5000, "copper" = 500)
	req_tech = list(TECH_MAGNET = 3, TECH_POWER = 3)
	id = "magboots"

/datum/design/item/mechfab/voidsuit/engineer/helmet
	name = "Engineering Voidsuit Helmet"
	build_path = /obj/item/clothing/head/helmet/space/void/engineering
	materials = list(DEFAULT_WALL_MATERIAL = 5000, "glass" = 5000, "copper" = 100)
	req_tech = list(TECH_POWER = 3, TECH_BIO = 2, TECH_ENGINEERING = 3)
	id = "voidsuit_engineer_helmet"

/datum/design/item/mechfab/voidsuits/engineer
	name = "Engineering Voidsuit"
	build_path = /obj/item/clothing/suit/space/void/engineering
	materials = list(DEFAULT_WALL_MATERIAL = 20000, "glass" = 10000, "copper" = 100)
	req_tech = list(TECH_POWER = 3, TECH_BIO = 2, TECH_ENGINEERING = 3)
	id = "voidsuit_engineer"

	//

/datum/design/item/mechfab/voidsuit/mining/helmet
	name = "Mining Voidsuit Helmet"
	build_path = /obj/item/clothing/head/helmet/space/void/mining
	materials = list(DEFAULT_WALL_MATERIAL = 5000, "glass" = 5000, "copper" = 100)
	req_tech = list(TECH_POWER = 2, TECH_BIO = 2, TECH_ENGINEERING = 2)
	id = "voidsuit_mining_helmet"

/datum/design/item/mechfab/voidsuits/mining
	name = "Mining Voidsuit"
	build_path = /obj/item/clothing/suit/space/void/mining
	materials = list(DEFAULT_WALL_MATERIAL = 15000, "glass" = 5000, "copper" = 100)
	req_tech = list(TECH_POWER = 2, TECH_BIO = 2, TECH_ENGINEERING = 2)
	id = "voidsuit_mining"

	//

/datum/design/item/mechfab/voidsuit/medical/helmet
	name = "Medical Voidsuit Helmet"
	build_path = /obj/item/clothing/head/helmet/space/void/medical
	materials = list(DEFAULT_WALL_MATERIAL = 5000, "glass" = 3000, "copper" = 100)
	req_tech = list(TECH_POWER = 2, TECH_BIO = 3, TECH_ENGINEERING = 2)
	id = "voidsuit_medical_helmet"

/datum/design/item/mechfab/voidsuits/medical
	name = "Medical Voidsuit"
	build_path = /obj/item/clothing/suit/space/void/medical
	materials = list(DEFAULT_WALL_MATERIAL = 10000, "glass" = 10000, "copper" = 100)
	req_tech = list(TECH_POWER = 2, TECH_BIO = 3, TECH_ENGINEERING = 2)
	id = "voidsuit_medical"

	//

/datum/design/item/mechfab/voidsuit/security/helmet
	name = "Security Voidsuit Helmet"
	build_path = /obj/item/clothing/head/helmet/space/void/security
	materials = list(DEFAULT_WALL_MATERIAL = 30000, "glass" = 1000, "copper" = 100)
	req_tech = list(TECH_POWER = 2, TECH_BIO = 2, TECH_COMBAT = 4, TECH_ENGINEERING = 2)
	id = "voidsuit_security_helmet"

/datum/design/item/mechfab/voidsuits/security
	name = "Security Voidsuit"
	build_path = /obj/item/clothing/suit/space/void/security
	materials = list(DEFAULT_WALL_MATERIAL = 30000, "glass" = 1000, "copper" = 100)
	req_tech = list(TECH_POWER = 2, TECH_BIO = 2, TECH_COMBAT = 4, TECH_ENGINEERING = 2)
	id = "voidsuit_security"

	//

/datum/design/item/mechfab/voidsuit/engi_rad/helmet
	name = "Reinforced Engineering Voidsuit Helmet"
	build_path = /obj/item/clothing/head/helmet/space/void/engineering/alt
	materials = list(DEFAULT_WALL_MATERIAL = 30000, "glass" = 1000, "copper" = 100, "lead" = 1000)
	req_tech = list(TECH_POWER = 2, TECH_BIO = 3, TECH_COMBAT = 4, TECH_ENGINEERING = 5)
	id = "voidsuit_engirad_helmet"

/datum/design/item/mechfab/voidsuits/engi_rad
	name = "Reinforced Engineering Voidsuit"
	build_path = /obj/item/clothing/suit/space/void/engineering/alt
	materials = list(DEFAULT_WALL_MATERIAL = 30000, "glass" = 1000, "copper" = 100, "lead" = 10000)
	req_tech = list(TECH_POWER = 2, TECH_BIO = 3, TECH_COMBAT = 4, TECH_ENGINEERING = 5)
	id = "voidsuit_engirad"
