/obj/item/weapon/gun/energy/taser
	name = "MK30-NL"
	desc = "The NT Mk30 NL is a small, low capacity gun used for non-lethal takedowns. Produced by NT, it's actually a licensed version of a W-T design. It can switch between high and low intensity stun shots."
	icon_state = "taser"
	item_state = null	//so the human update icon uses the icon_state instead.
	max_shots = 5
	charge_cost = 20
	projectile_type = /obj/item/projectile/beam/stun
	combustion = 0

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock),
		)

/obj/item/weapon/gun/energy/taser/carbine
	name = "MK44-NL"
	desc = "The NT Mk44 NL is a high capacity gun used for non-lethal takedowns. It can switch between high and low intensity stun shots."
	icon_state = "tasercarbine"
	w_class = ITEM_SIZE_LARGE
	slot_flags = SLOT_BELT|SLOT_BACK
	one_hand_penalty = 3
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3, TECH_POWER = 3)
	force = 8
	max_shots = 10
	charge_cost = 10
	accuracy = 1
	projectile_type = /obj/item/projectile/beam/stun/heavy
	wielded_item_state = "tasercarbine-wielded"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun/heavy),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock/heavy),
		)

/obj/item/weapon/gun/energy/taser/mounted
	name = "mounted taser gun"
	self_recharge = 1
	use_external_power = 1
	has_safety = FALSE

/obj/item/weapon/gun/energy/taser/mounted/cyborg
	name = "taser gun"
	max_shots = 6
	recharge_time = 10 //Time it takes for shots to recharge (in ticks)


/obj/item/weapon/gun/energy/stunrevolver
	name = "stun revolver"
	desc = "An A&M X6 Zeus. Designed by al-Maliki & Mosley, but produced under the wing of the Free Trade Union. Industry spies have been trying to get a hold of the blueprints for half a decade."
	icon_state = "stunrevolver"
	item_state = "stunrevolver"
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3, TECH_POWER = 2)
	projectile_type = /obj/item/projectile/energy/electrode
	max_shots = 5
	charge_cost = 20
	combustion = 0

/obj/item/weapon/gun/energy/pyrorifle
	name = "PC-CKS 85"
	desc = "The PyroCorp Crowd Keeper System 85. A powerful non-lethal weapon capable of firing a quick succession of stun beams, or firing a large powerful paralyzing beam."
	icon_state = "pyrostun"
	w_class = ITEM_SIZE_LARGE
	slot_flags = SLOT_BELT|SLOT_BACK
	one_hand_penalty = 3
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3, TECH_POWER = 3)
	cell_type = /obj/item/weapon/cell/device/standard
	force = 8
	charge_cost = 10
	one_hand_penalty = 4
	accuracy = 1
	var/deployed

/obj/item/weapon/gun/energy/pyrorifle/attack_self(mob/user as mob)
	deployed = !deployed
	if(deployed)
		to_chat(user, "The weapon slightly extend as you activate the PC-CKS 85's ultra beam system.")
		playsound(src.loc, 'sound/machines/switch4.ogg', 40, 1, -6)
		modifystate = "pyrostun_extended"
		projectile_type=/obj/item/projectile/beam/pyro/heavy
		wielded_item_state = "pyrostun_extended-wielded"
		charge_cost = 25
		fire_delay = 60
	else
		to_chat(user, "The weapon retracts as you disable the PC-CKS 85's ultra beam system.")
		playsound(src.loc, 'sound/machines/switch4.ogg', 40, 1, -6)
		modifystate = "pyrostun"
		charge_cost = 5
		fire_delay = 5
		wielded_item_state = "pyrostun-wielded"
		projectile_type=/obj/item/projectile/beam/pyro
	update_icon()
	return


/obj/item/weapon/gun/energy/stunrevolver/rifle
	name = "stun rifle"
	desc = "An A&M X10 Thor. A vastly oversized variant of the A&M X6 Zeus. Fires overcharged electrodes to take down hostile armored targets without harming them too much."
	icon_state = "stunrifle"
	item_state = "stunrifle"
	w_class = ITEM_SIZE_HUGE
	slot_flags = SLOT_BACK
	one_hand_penalty = 6
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3, TECH_POWER = 3)
	force = 10
	max_shots = 10
	charge_cost = 10
	accuracy = 1
	projectile_type = /obj/item/projectile/energy/electrode/stunshot
	wielded_item_state = "stunrifle-wielded"

/obj/item/weapon/gun/energy/crossbow
	name = "mini energy-crossbow"
	desc = "A weapon favored by many mercenary stealth specialists."
	icon_state = "crossbow"
	w_class = ITEM_SIZE_NORMAL
	item_state = "crossbow"
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 2, TECH_ILLEGAL = 5)
	matter = list(MATERIAL_STEEL = 2000)
	slot_flags = SLOT_BELT
	silenced = 1
	fire_sound = 'sound/weapons/Genhit.ogg'
	projectile_type = /obj/item/projectile/energy/bolt
	max_shots = 8
	self_recharge = 1
	charge_meter = 0
	battery_lock = 1
	combustion = 0

/obj/item/weapon/gun/energy/crossbow/ninja
	name = "energy dart thrower"
	projectile_type = /obj/item/projectile/energy/dart
	max_shots = 5

/obj/item/weapon/gun/energy/crossbow/largecrossbow
	name = "energy crossbow"
	desc = "A weapon favored by mercenary infiltration teams."
	w_class = ITEM_SIZE_LARGE
	force = 10
	one_hand_penalty = 1
	matter = list(MATERIAL_STEEL = 200000)
	projectile_type = /obj/item/projectile/energy/bolt/large

/obj/item/weapon/gun/energy/plasmastun
	name = "plasma pulse projector"
	desc = "The Mars Military Industries MA21 Selkie is a weapon that uses a laser pulse to ionise the local atmosphere, creating a disorienting pulse of plasma and deafening shockwave as the wave expands."
	icon_state = "plasma_stun"
	item_state = "plasma_stun"
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2, TECH_POWER = 3)
	cell_type = /obj/item/weapon/cell/device/standard
	projectile_type = /obj/item/projectile/energy/plasmastun
	combustion = 0

