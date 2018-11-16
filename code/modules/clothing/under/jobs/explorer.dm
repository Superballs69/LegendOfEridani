/obj/item/clothing/under/rank/pathfinder
	name = "pathfinder's jumpsuit"
	desc = "A tried and true piece of equipment that the Pathfinder Corps uses. A compact spaceproof jumpsuit."
	icon_state = "pathfinder"
	item_state = "ba_suit"
	worn_state = "pathfinder"
	armor = list(melee = 10, bullet = 10, laser = 10,energy = 10, bomb = 10, bio = 100, rad = 50)
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.02
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	item_flags = ITEM_FLAG_STOPPRESSUREDAMAGE
	siemens_coefficient = 0

/obj/item/clothing/head/helmet/space/pathfinder
	name = "pathfinder's helmet"
	desc = "A standard issue helmet to all Pathfinder Corps personnel. Space proof and armoured."
	icon_state = "pathfinder"
	item_state = "pathfinder"
	item_flags = ITEM_FLAG_STOPPRESSUREDAMAGE
	flags_inv = HIDEFACE|BLOCKHAIR
	permeability_coefficient = 0.01
	armor = list(melee = 35, bullet = 30, laser = 30,energy = 10, bomb = 25, bio = 100, rad = 50)

/obj/item/clothing/head/helmet/space/pathfinder/commander
	name = "pathfinder commander's helmet"
	desc = "A robust helmet for the man who leads the Pathfinders."
	icon_state = "pathfinder_commander"
	item_state = "pathfinder_commander"
	armor = list(melee = 50, bullet = 40, laser = 35, energy = 20, bomb = 30, bio = 100, rad = 50)

/obj/item/clothing/head/helmet/space/pathfinder/corpsman
	name = "pathfinder corpsman's helmet"
	desc = "A bright helmet to indicate the medical personnel within the Pathfinders."
	icon_state = "pathfinder_corpsman"
	item_state = "pathfinder_corpsman"

/obj/item/clothing/head/helmet/space/pathfinder/pilot
	name = "pathfinder pilot's helmet"
	desc = "A robust helmet for the man who flies the Pathfinders."
	icon_state = "pathfinder_pilot"
	item_state = "pathfinder_pilot"
	armor = list(melee = 50, bullet = 40, laser = 35, energy = 20, bomb = 30, bio = 100, rad = 50)

/obj/item/clothing/head/helmet/space/pathfinder/tech
	name = "pathfinder technician's helmet"
	desc = "A helmet for the technical Pathfinders."
	icon_state = "pathfinder_tech"
	item_state = "pathfinder_tech"
