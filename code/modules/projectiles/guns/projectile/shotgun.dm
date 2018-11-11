/obj/item/weapon/gun/projectile/shotgun/pump
	name = "WT R870"
	desc = "The mass-produced Ward-Takahashi R870 shotgun is a favourite of police and security forces on many worlds. Useful for sweeping alleys."
	icon_state = "shotgun"
	item_state = "shotgun"
	max_shells = 4
	w_class = ITEM_SIZE_HUGE
	force = 10
	obj_flags =  OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BACK
	caliber = "shotgun"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	load_method = SINGLE_CASING
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	handle_casings = HOLD_CASINGS
	one_hand_penalty = 2
	var/recentpump = 0 // to prevent spammage
	wielded_item_state = "gun_wielded"
	load_sound = 'sound/weapons/guns/interaction/shotgun_instert.ogg'
	fire_sound = 'sound/weapons/gunshot/shotgun.ogg'

/obj/item/weapon/gun/projectile/shotgun/pump/consume_next_projectile()
	if(chambered)
		return chambered.BB
	return null

/obj/item/weapon/gun/projectile/shotgun/pump/attack_self(mob/living/user as mob)
	if(world.time >= recentpump + 10)
		pump(user)
		recentpump = world.time

/obj/item/weapon/gun/projectile/shotgun/pump/proc/pump(mob/M as mob)
	playsound(M, 'sound/weapons/shotgunpump.ogg', 60, 1)

	if(chambered)//We have a shell in the chamber
		chambered.forceMove(get_turf(src))//Eject casing
		if(LAZYLEN(chambered.fall_sounds))
			playsound(loc, pick(chambered.fall_sounds), 50, 1)
		chambered = null

	if(loaded.len)
		var/obj/item/ammo_casing/AC = loaded[1] //load next casing.
		loaded -= AC //Remove casing from loaded list.
		chambered = AC

	update_icon()

/obj/item/weapon/gun/projectile/shotgun/pump/combat
	name = "KDI 870MCS"
	desc = "A KDI production of a well renowned shotgun. This model is fitted with KDI-produced aftermarket parts and a choke, making your shot more accurate."
	icon_state = "cshotgun"
	item_state = "cshotgun"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	max_shells = 7 //match the ammo box capacity, also it can hold a round in the chamber anyways, for a total of 8.
	ammo_type = /obj/item/ammo_casing/shotgun
	one_hand_penalty = 3 //a little heavier than the regular shotgun
	accuracy = 1

/obj/item/weapon/gun/projectile/shotgun/pump/combat/ksg
	name = "Seburo KSG"
	desc = "Seburo's entry to the shotgun consumer market. A compact, high capacity pump shotgun. Commonly seen in use with personal security contractors."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "ksg"
	w_class = ITEM_SIZE_LARGE
	max_shells = 14
	ammo_type = /obj/item/ammo_casing/shotgun/pellet
	one_hand_penalty = 2
	accuracy = 0

/obj/item/weapon/gun/projectile/shotgun/doublebarrel
	name = "double-barreled shotgun"
	desc = "A true classic."
	icon_state = "dshotgun"
	item_state = "dshotgun"
	//SPEEDLOADER because rapid unloading.
	//In principle someone could make a speedloader for it, so it makes sense.
	load_method = SINGLE_CASING|SPEEDLOADER
	handle_casings = CYCLE_CASINGS
	max_shells = 2
	w_class = ITEM_SIZE_HUGE
	force = 10
	obj_flags =  OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BACK
	caliber = "shotgun"
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 1)
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	one_hand_penalty = 2
	wielded_item_state = "gun_wielded"

	burst_delay = 0
	firemodes = list(
		list(mode_name="fire one barrel at a time", burst=1),
		list(mode_name="fire both barrels at once", burst=2),
		)

/obj/item/weapon/gun/projectile/shotgun/doublebarrel/pellet
	ammo_type = /obj/item/ammo_casing/shotgun/pellet

/obj/item/weapon/gun/projectile/shotgun/doublebarrel/flare
	name = "signal shotgun"
	desc = "A double-barreled shotgun meant to fire signal flash shells."
	ammo_type = /obj/item/ammo_casing/shotgun/flash

/obj/item/weapon/gun/projectile/shotgun/doublebarrel/unload_ammo(user, allow_dump)
	..(user, allow_dump=1)

//this is largely hacky and bad :(	-Pete
/obj/item/weapon/gun/projectile/shotgun/doublebarrel/attackby(var/obj/item/A as obj, mob/user as mob)
	if(w_class > 3 && (istype(A, /obj/item/weapon/circular_saw) || istype(A, /obj/item/weapon/melee/energy) || istype(A, /obj/item/weapon/gun/energy/plasmacutter)))
		to_chat(user, "<span class='notice'>You begin to shorten the barrel of \the [src].</span>")
		if(loaded.len)
			for(var/i in 1 to max_shells)
				Fire(user, user)	//will this work? //it will. we call it twice, for twice the FUN
			user.visible_message("<span class='danger'>The shotgun goes off!</span>", "<span class='danger'>The shotgun goes off in your face!</span>")
			return
		if(do_after(user, 30, src))	//SHIT IS STEALTHY EYYYYY
			icon_state = "sawnshotgun"
			item_state = "sawnshotgun"
			w_class = ITEM_SIZE_NORMAL
			force = 5
			one_hand_penalty = 0
			slot_flags &= ~SLOT_BACK	//you can't sling it on your back
			slot_flags |= (SLOT_BELT|SLOT_HOLSTER) //but you can wear it on your belt (poorly concealed under a trenchcoat, ideally) - or in a holster, why not.
			SetName("sawn-off shotgun")
			desc = "Omar's coming!"
			to_chat(user, "<span class='warning'>You shorten the barrel of \the [src]!</span>")
	else
		..()

/obj/item/weapon/gun/projectile/shotgun/doublebarrel/sawn
	name = "sawn-off shotgun"
	desc = "Omar's coming!"
	icon_state = "sawnshotgun"
	item_state = "sawnshotgun"
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	ammo_type = /obj/item/ammo_casing/shotgun/pellet
	w_class = ITEM_SIZE_NORMAL
	force = 5
	one_hand_penalty = 0

//--Semi Autos--//
/obj/item/weapon/gun/projectile/shotgun/semi
	name = "KS-40"
	desc = "Built for close quarters combat, the Hephaestus Industries KS-40 is widely regarded as a weapon of choice for repelling boarders. Uses 12g rounds."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "ks40"
	item_state = "cshotgun"
	max_shells = 8
	w_class = ITEM_SIZE_HUGE
	force = 10
	obj_flags =  OBJ_FLAG_CONDUCTIBLE
	caliber = "shotgun"
	one_hand_penalty = 3
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 3)
	load_method = SINGLE_CASING|SPEEDLOADER
	handle_casings = EJECT_CASINGS
	ammo_type = /obj/item/ammo_casing/shotgun/pellet
	fire_sound = 'sound/weapons/gunshot/shotgun.ogg'

/obj/item/weapon/gun/projectile/shotgun/semi/unload_ammo(user, allow_dump)
	..(user, allow_dump=0)

/obj/item/weapon/gun/projectile/shotgun/semi/peacewalker
	name = "KDI Peacewalker"
	desc = "A semi-automatic shotgun by KDI, features it's signature electronic chambering indicator and a full choke, allowing for accurate shooting."
	icon_state = "peacewalker"
	max_shells = 6
	accuracy = 1.75
	one_hand_penalty = 0

/obj/item/weapon/gun/projectile/shotgun/semi/peacewalker/proc/update_charge()
	var/ratio = (loaded.len + (chambered? 1 : 0)) / max_shells
	if(ratio < 0.25 && ratio != 0)
		ratio = 0.25
	ratio = round(ratio, 0.25) * 100
	overlays += "shotgun_[ratio]"

/obj/item/weapon/gun/projectile/shotgun/semi/peacewalker/update_icon()
	overlays.Cut()
	update_charge()

/obj/item/weapon/gun/projectile/shotgun/semi/spas
	name = "PC SPAS-12"
	desc = "A reproduction of a 21st century classic. PyroCorp reintroduces a classic and reliable shotgun to the market, commonly seen in use with security and police forces."
	icon_state = "spas12"
	max_shells = 8
	accuracy = 1
