/obj/item/weapon/gun/energy/gun
	name = "AE10 energy carbine"
	desc = "Another bestseller of Ace Energy, the AE10 energy carbine is a versatile energy based weapon, capable of switching between stun, and lethal."
	icon_state = "energystun100"
	item_state = null	//so the human update icon uses the icon_state instead.
	charge_cost = 12.5
	cell_type = /obj/item/weapon/cell/device/standard
	fire_delay = 10 // To balance for the fact that it is a pistol and can be used one-handed without penalty

	projectile_type = /obj/item/projectile/beam/stun
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	modifystate = "energystun"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="energystun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, modifystate="energyshock"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate="energykill"),
		)

/obj/item/weapon/gun/energy/gun/surplus
	name = "AE9 energy carbine"
	desc = "The precursor of the current generation AE10 energy carbine. Commonly seen circulating with civilian owners and on the black market due to the sheer amount produced. Has stun and lethal modes only."
	icon_state = "oldenergystun100"
	charge_cost = 12.5
	modifystate = "oldenergystun"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="oldenergystun"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate="oldenergykill"),
	)

/obj/item/weapon/gun/energy/gun/nextgen
	name = "AE11X energy carbine"
	desc = "Ace Energy's next generation energy carbine model with better stopping power, designed to rival Hesphaestus' laser rifle. Aside from that, exactly same as their current model."
	icon = 'icons/obj/gun_2.dmi'
	origin_tech = list(TECH_COMBAT = 4, TECH_MAGNET = 3, TECH_ILLEGAL = 1)

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun/heavy, modifystate="energystun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock/heavy, modifystate="energyshock"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam/midlaser, modifystate="energykill"),
		)

/obj/item/weapon/gun/energy/gun/small
	name = "AE6 'Protector' energy pistol"
	desc = "Originally a prototype, Ace Energy acquired the plans for a holdout pistol and has tuned it for reliable military and civilian use."
	icon_state = "smallgunstun"
	charge_cost = 20
	w_class = ITEM_SIZE_SMALL
	force = 2 //it's the size of a car key, what did you expect?
	modifystate = "smallgunstun"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="smallgunstun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, modifystate="smallgunshock"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam/smalllaser, modifystate="smallgunkill"),
		)

/obj/item/weapon/gun/energy/gun/pistol
	name = "AE5 energy pistol"
	desc = "The precursor to the common AE6. A harder hitting energy sidearm, prized upon by users who prefer stopping power. Has stun and kill modes only."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "epistolstun100"
	charge_cost = 20
	w_class = ITEM_SIZE_NORMAL
	force = 8 //more so a proper pistol
	modifystate = "epistolstun"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="epistolstun"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate="epistolkill"),
	)

/obj/item/weapon/gun/energy/gun/mounted
	name = "mounted energy gun"
	self_recharge = 1
	use_external_power = 1
	has_safety = FALSE

/obj/item/weapon/gun/energy/gun/nuclear
	name = "advanced energy gun"
	desc = "An energy gun with an experimental miniaturized reactor."
	icon_state = "nucgun"
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 5, TECH_POWER = 3)
	slot_flags = SLOT_BELT
	w_class = ITEM_SIZE_LARGE
	force = 8 //looks heavier than a pistol
	charge_cost = 20
	max_shots = 5
	self_recharge = 1
	battery_lock = 1
	modifystate = null
	one_hand_penalty = 1 //bulkier than an e-gun, but not quite the size of a carbine

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam),
		)

	var/fail_counter = 0

//override for failcheck behaviour
/obj/item/weapon/gun/energy/gun/nuclear/Process()
	if(fail_counter > 0)
		SSradiation.radiate(src, fail_counter--)

	return ..()

/obj/item/weapon/gun/energy/gun/nuclear/emp_act(severity)
	..()
	switch(severity)
		if(1)
			fail_counter = max(fail_counter, 30)
			visible_message("\The [src]'s reactor overloads!")
		if(2)
			fail_counter = max(fail_counter, 10)
			if(ismob(loc))
				to_chat(loc, "<span class='warning'>\The [src] feels pleasantly warm.</span>")

/obj/item/weapon/gun/energy/gun/nuclear/proc/get_charge_overlay()
	var/ratio = power_supply.percent()
	ratio = round(ratio, 25)
	return "nucgun-[ratio]"

/obj/item/weapon/gun/energy/gun/nuclear/proc/get_reactor_overlay()
	if(fail_counter)
		return "nucgun-medium"
	if (power_supply.percent() <= 50)
		return "nucgun-light"
	return "nucgun-clean"

/obj/item/weapon/gun/energy/gun/nuclear/proc/get_mode_overlay()
	var/datum/firemode/current_mode = firemodes[sel_mode]
	switch(current_mode.name)
		if("stun") return "nucgun-stun"
		if("kill") return "nucgun-kill"

/obj/item/weapon/gun/energy/gun/nuclear/on_update_icon()
	var/list/new_overlays = list()

	new_overlays += get_charge_overlay()
	new_overlays += get_reactor_overlay()
	new_overlays += get_mode_overlay()

	overlays = new_overlays
