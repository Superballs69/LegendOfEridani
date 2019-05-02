/obj/item/weapon/gun/projectile/colt
	name = "Olympia Foundry 1911"
	desc = "An Olympia Foundry produced 1911. A legendary classic. Uses .45 rounds."
	magazine_type = /obj/item/ammo_magazine/m45m
	allowed_magazines = /obj/item/ammo_magazine/m45m
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "colt_classic"
	caliber = ".45"
	fire_sound = 'sound/weapons/gunshot/m1911.ogg'
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	load_method = MAGAZINE

/obj/item/weapon/gun/projectile/colt/update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "colt_classic"
	else
		icon_state = "colt_classic-empty"

/obj/item/weapon/gun/projectile/colt/fac
	name = "Frontier Armament Company 1911"
	desc = "The Frontier Armament Company's take on the 1911. Compared to most other manufacturers, all parts are forged and made to endure the harsh abuse of frontier worlds."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "fac_1911"
	accuracy = 0.50
	unacidable = 1

/obj/item/weapon/gun/projectile/colt/fac/update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "fac_1911"
	else
		icon_state = "fac_1911-empty"

/obj/item/weapon/gun/projectile/colt/fac/compact
	name = "FAC 1911 Compact"
	desc = "A shortened concealed carry variant of the FAC's 1911. Still as durable and can fit in your pocket, only drawback is lesser accuracy than the baseline model."
	icon_state = "fac_compact"
	accuracy = 0.25
	w_class = ITEM_SIZE_SMALL

/obj/item/weapon/gun/projectile/colt/fac/compact/update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "fac_compact"
	else
		icon_state = "fac_compact-empty"

/obj/item/weapon/gun/projectile/colt/kdi
	name = "Kusanagi Defense Industries 1911"
	desc = "KDI's take on the legendary 1911, featuring a unique polymer frame, low tolerance parts and a chrome lined barrel with polygonal rifling. Along with the internal upgrades\
	 the blue night sights make shooting with gun a breeze. The gun also features a magazine auto-eject feature."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "kdi_standard"
	accuracy = 1
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'

/obj/item/weapon/gun/projectile/colt/kdi/update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "kdi_standard"
	else
		icon_state = "kdi_standard-empty"

/obj/item/weapon/gun/projectile/colt/kdi/infiltrator
	name = "KDI 1911 Infiltrator"
	desc = "An even further enhancement of KDI's original 1911 model tuned by the company's gunsmiths. Featuring a low profile reflex sight, laser aiming module and a ported slide.\
	 these firearms are usually found in the hands of elite special forces and counter-terror groups."
	icon_state = "kdi_infiltrator"
	accuracy = 2
	fire_delay = 0
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'

/obj/item/weapon/gun/projectile/colt/kdi/infiltrator/update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "kdi_infiltrator"
	else
		icon_state = "kdi_infiltrator-empty"

/obj/item/weapon/gun/projectile/usp
	name = "HI USP .45"
	desc = "A solid firearm made by Hesphaestus Industries. Uses .45 rounds."
	magazine_type = /obj/item/ammo_magazine/m45mds/flash
	allowed_magazines = /obj/item/ammo_magazine/m45mds
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "usp"
	caliber = ".45"
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 2)
	load_method = MAGAZINE
	accuracy = 0.35
	fire_delay = 1.0
	fire_sound = 'sound/weapons/gunshot/usp.ogg'

/obj/item/weapon/gun/projectile/usp/on_update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "usp"
	else
		icon_state = "usp-e"

/obj/item/weapon/gun/projectile/usp/match
	name = "HI USP .45 Match"
	desc = "A solid match grade firearm made by Hesphaestus Industries. Uses .45 rounds."
	icon_state = "usp_match"
	accuracy = 1
	fire_delay = 0

/obj/item/weapon/gun/projectile/usp/match/on_update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "usp_match"
	else
		icon_state = "usp_match-e"

/obj/item/weapon/gun/projectile/sec
	name = ".45 pistol"
	desc = "The NT Mk58 is a cheap, ubiquitous sidearm, produced by a NanoTrasen subsidiary. Found pretty much everywhere humans are. Uses .45 rounds."
	icon_state = "secguncomp"
	magazine_type = /obj/item/ammo_magazine/m45m/flash
	allowed_magazines = /obj/item/ammo_magazine/m45m
	caliber = ".45"
	accuracy = -0.35
	fire_delay = 5.5
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	load_method = MAGAZINE

/obj/item/weapon/gun/projectile/sec/on_update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "secguncomp"
	else
		icon_state = "secguncomp-e"

/obj/item/weapon/gun/projectile/sec/flash
	name = ".45 signal pistol"

/obj/item/weapon/gun/projectile/sec/wood
	desc = "The NT Mk58 is a cheap, ubiquitous sidearm, produced by a NanoTrasen subsidiary. This one has a sweet wooden grip, among other modifications. Uses .45 rounds."
	name = "custom .45 Pistol"
	icon_state = "secgundark"
	accuracy = 0
	fire_sound = 'sound/weapons/gunshot/mk58.ogg'

/obj/item/weapon/gun/projectile/sec/wood/on_update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "secgundark"
	else
		icon_state = "secgundark-e"

/obj/item/weapon/gun/projectile/sec/wood/lethal
	magazine_type = /obj/item/ammo_magazine/m45m

/obj/item/weapon/gun/projectile/silenced
	name = "silenced pistol"
	desc = "A handgun with an integral silencer. Uses .45 rounds."
	icon_state = "silenced_pistol"
	w_class = ITEM_SIZE_NORMAL
	caliber = ".45"
	silenced = 1
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2, TECH_ILLEGAL = 8)
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m45m
	allowed_magazines = /obj/item/ammo_magazine/m45m

/obj/item/weapon/gun/projectile/magnum_pistol
	name = ".50 magnum pistol"
	desc = "The HelTek Magnus, a robust Terran handgun that uses .50 AE ammo."
	icon_state = "magnum"
	item_state = "revolver"
	force = 9
	caliber = ".50"
	fire_delay = 12
	screen_shake = 2
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m50
	allowed_magazines = /obj/item/ammo_magazine/m50
	mag_insert_sound = 'sound/weapons/guns/interaction/hpistol_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/hpistol_magout.ogg'

/obj/item/weapon/gun/projectile/magnum_pistol/on_update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "magnum"
	else
		icon_state = "magnum-e"

/obj/item/weapon/gun/projectile/gyropistol
	name = "gyrojet pistol"
	desc = "A bulky pistol designed to fire self propelled rounds."
	icon_state = "gyropistol"
	max_shells = 8
	caliber = "75"
	origin_tech = list(TECH_COMBAT = 3)
	ammo_type = /obj/item/ammo_casing/a75
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m75
	fire_delay = 25
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	mag_insert_sound = 'sound/weapons/guns/interaction/hpistol_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/hpistol_magout.ogg'

/obj/item/weapon/gun/projectile/gyropistol/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "gyropistolloaded"
	else
		icon_state = "gyropistol"

/obj/item/weapon/gun/projectile/beretta
	name = "M92X"
	desc = "Olympia Foundry's revival of the Italian-American classic. Uses 9mm rounds."
	magazine_type = /obj/item/ammo_magazine/mc9mmds
	allowed_magazines = /obj/item/ammo_magazine/mc9mmds
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "m9"
	caliber = "9mm"
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 2)
	load_method = MAGAZINE
	accuracy = 0.35
	fire_sound = 'sound/weapons/gunshot/p92x.ogg'

/obj/item/weapon/gun/projectile/beretta/on_update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "m9"
	else
		icon_state = "m9-e"

/obj/item/weapon/gun/projectile/p226xr
	name = "P226XR"
	desc = "The P226XR is a revival of the 21st century model from the now-defunct Sig Sauer. This model is made by the Frontier Armament Company. Uses 9mm rounds."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "p226xr"
	magazine_type = /obj/item/ammo_magazine/mc9mmds
	allowed_magazines = /obj/item/ammo_magazine/mc9mmds
	caliber = "9mm"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3)
	load_method = MAGAZINE
	accuracy = 0.92
	unacidable = 1
	fire_sound = 'sound/weapons/gunshot/p226xr.ogg'

/obj/item/weapon/gun/projectile/p226xr/on_update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "p226xr"
	else
		icon_state = "p226xr-e"

/obj/item/weapon/gun/projectile/pistol
	name = "holdout pistol"
	desc = "The Lumoco Arms P3 Whisper. A small, easily concealable gun. Uses 9mm rounds."
	icon_state = "pistol"
	item_state = null
	w_class = ITEM_SIZE_SMALL
	caliber = "9mm"
	silenced = 0
	fire_delay = 1
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2, TECH_ILLEGAL = 2)
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/mc9mm
	allowed_magazines = /obj/item/ammo_magazine/mc9mm

/obj/item/weapon/gun/projectile/pistol/flash
	name = "holdout signal pistol"
	magazine_type = /obj/item/ammo_magazine/mc9mm/flash

/obj/item/weapon/gun/projectile/pistol/attack_hand(mob/user as mob)
	if(user.get_inactive_hand() == src)
		if(silenced)
			if(user.l_hand != src && user.r_hand != src)
				..()
				return
			to_chat(user, "<span class='notice'>You unscrew [silenced] from [src].</span>")
			user.put_in_hands(silenced)
			silenced = initial(silenced)
			w_class = initial(w_class)
			update_icon()
			return
	..()

/obj/item/weapon/gun/projectile/pistol/attackby(obj/item/I as obj, mob/user as mob)
	if(istype(I, /obj/item/weapon/silencer))
		if(user.l_hand != src && user.r_hand != src)	//if we're not in his hands
			to_chat(user, "<span class='notice'>You'll need [src] in your hands to do that.</span>")
			return
		if(!user.unEquip(I, src))
			return//put the silencer into the gun
		to_chat(user, "<span class='notice'>You screw [I] onto [src].</span>")
		silenced = I	//dodgy?
		w_class = ITEM_SIZE_NORMAL
		update_icon()
		return
	..()

/obj/item/weapon/gun/projectile/pistol/on_update_icon()
	..()
	if(silenced)
		icon_state = "pistol-silencer"
	else
		icon_state = "pistol"
	if(!(ammo_magazine && ammo_magazine.stored_ammo.len))
		icon_state = "[icon_state]-e"

/obj/item/weapon/silencer
	name = "silencer"
	desc = "A silencer."
	icon = 'icons/obj/gun.dmi'
	icon_state = "silencer"
	w_class = ITEM_SIZE_SMALL

/obj/item/weapon/gun/projectile/pirate
	name = "zip gun"
	desc = "Little more than a barrel, handle, and firing mechanism, cheap makeshift firearms like this one are not uncommon in frontier systems."
	icon_state = "zipgun"
	item_state = "sawnshotgun"
	handle_casings = CYCLE_CASINGS //player has to take the old casing out manually before reloading
	load_method = SINGLE_CASING
	max_shells = 1 //literally just a barrel
	has_safety = FALSE
	w_class = ITEM_SIZE_NORMAL

	var/global/list/ammo_types = list(
		/obj/item/ammo_casing/a357              = ".357",
		/obj/item/ammo_casing/shotgun           = "12 gauge",
		/obj/item/ammo_casing/shotgun           = "12 gauge",
		/obj/item/ammo_casing/shotgun/pellet    = "12 gauge",
		/obj/item/ammo_casing/shotgun/pellet    = "12 gauge",
		/obj/item/ammo_casing/shotgun/pellet    = "12 gauge",
		/obj/item/ammo_casing/shotgun/beanbag   = "12 gauge",
		/obj/item/ammo_casing/shotgun/stunshell = "12 gauge",
		/obj/item/ammo_casing/shotgun/flash     = "12 gauge",
		/obj/item/ammo_casing/a762              = "7.62mm",
		/obj/item/ammo_casing/a556              = "5.56mm"
		)

/obj/item/weapon/gun/projectile/pirate/toggle_safety(var/mob/user)
	to_chat(user, "<span class='warning'>There's no safety on \the [src]!</span>")

/obj/item/weapon/gun/projectile/pirate/Initialize()
	ammo_type = pick(ammo_types)
	desc += " Uses [ammo_types[ammo_type]] rounds."

	var/obj/item/ammo_casing/ammo = ammo_type
	caliber = initial(ammo.caliber)
	. = ..()

// Zip gun construction.
/obj/item/weapon/zipgunframe
	name = "zip gun frame"
	desc = "A half-finished zip gun."
	icon_state = "zipgun0"
	item_state = "zipgun-solid"
	var/buildstate = 0

/obj/item/weapon/zipgunframe/on_update_icon()
	icon_state = "zipgun[buildstate]"

/obj/item/weapon/zipgunframe/examine(mob/user)
	. = ..()
	..(user)
	switch(buildstate)
		if(1) to_chat(user, "It has a barrel loosely fitted to the stock.")
		if(2) to_chat(user, "It has a barrel that has been secured to the stock with tape.")
		if(3) to_chat(user, "It has a trigger and firing pin assembly loosely fitted into place.")

/obj/item/weapon/zipgunframe/attackby(var/obj/item/thing, var/mob/user)
	if(istype(thing,/obj/item/pipe) && buildstate == 0)
		qdel(thing)
		user.visible_message("<span class='notice'>\The [user] fits \the [thing] to \the [src] as a crude barrel.</span>")
		add_fingerprint(user)
		buildstate++
		update_icon()
		return
	else if(istype(thing,/obj/item/weapon/tape_roll) && buildstate == 1)
		user.visible_message("<span class='notice'>\The [user] secures the assembly with \the [thing].</span>")
		add_fingerprint(user)
		buildstate++
		update_icon()
		return
	else if(istype(thing,/obj/item/device/assembly/mousetrap) && buildstate == 2)
		qdel(thing)
		user.visible_message("<span class='notice'>\The [user] takes apart \the [thing] and uses the parts to construct a crude trigger and firing mechanism inside the assembly.</span>")
		add_fingerprint(user)
		buildstate++
		update_icon()
		return
	else if(isScrewdriver(thing) && buildstate == 3)
		user.visible_message("<span class='notice'>\The [user] secures the trigger assembly with \the [thing].</span>")
		playsound(loc, 'sound/items/Screwdriver.ogg', 50, 1)
		var/obj/item/weapon/gun/projectile/pirate/zipgun
		zipgun = new/obj/item/weapon/gun/projectile/pirate { starts_loaded = 0 } (loc)
		if(ismob(loc))
			var/mob/M = loc
			M.drop_from_inventory(src)
			M.put_in_hands(zipgun)
		transfer_fingerprints_to(zipgun)
		qdel(src)
		return
	else
		..()

/obj/item/weapon/gun/projectile/deagle
	name = "Desert Eagle"
	desc = "The perfect handgun for shooters with a need to hit targets through a wall and behind a fridge in your neighbor's house. Uses .50AE rounds. Made by Olympia Foundry."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "deagle"
	item_state = "revolver"
	force = 14.0
	caliber = ".50"
	fire_delay = 6
	screen_shake = 2
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m50
	allowed_magazines = list(/obj/item/ammo_magazine/m50)
	fire_sound = 'sound/weapons/gunshot/mateba.ogg'

/obj/item/weapon/gun/projectile/deagle/lamia
	name = "KDI \"Lamia\""
	desc = "An upgrade kit for the Olympia Foundry Desert Eagle made by Kusanagi Defense Industries to minimize recoil and to simplify operation."
	icon_state = "lamia_mk1"
	accuracy = 1
	fire_delay = 3
	screen_shake = 1

/obj/item/weapon/gun/projectile/deagle/lamia/update_icon()
	overlays.Cut()
	if(!ammo_magazine)
		return
	var/ratio = ammo_magazine.stored_ammo.len * 100 / ammo_magazine.max_ammo
	ratio = round(ratio, 33)
	overlays += "deagle_[ratio]" // Fugly.

/obj/item/weapon/gun/projectile/deagle/lamia/mk2
	name = "KDI \"Lamia\" MK2"
	desc = "A further development of the Lamia Desert Eagle upgrade kit, now a standalone firearm. An impressive feat by KDI for ease of firing a legendary hand-cannon."
	icon_state = "lamia_mk2"
	fire_delay = 2
	screen_shake = 0
	accuracy = 1.30

/obj/item/weapon/gun/projectile/fiveseven
	name = "KDI FN-57"
	desc = "Another classic retooled and redone by Kusanagi Defense Industries. Commonly seen in use with major police forces and comes with a tactical light installed. Uses 5.7x28mm rounds."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "fiveseven"
	caliber = "5.7x28mm"
	load_method = MAGAZINE
	fire_sound = 'sound/weapons/gunshot/fiveseven.ogg'
	magazine_type = /obj/item/ammo_magazine/m57
	allowed_magazines = list(/obj/item/ammo_magazine/m57)

/obj/item/weapon/gun/projectile/fiveseven/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "[initial(icon_state)]"
	else
		icon_state = "[initial(icon_state)]-e"

/obj/item/weapon/gun/projectile/fiveseven/lacroix
	name = "KDI FN-57 \"Commander\""
	desc = "A custom made Five Seven with an integrated suppressor, laser aiming module and reflex sight. The trigger weight has been balanced along with the slide weight, allowing for optimized firing."
	icon_state = "lacroix"
	accuracy = 4
	fire_delay = 0
	silenced = 1
	fire_sound = 'sound/weapons/gunshot/fiveseven-suppressed.ogg'

/obj/item/weapon/gun/projectile/fiveseven/rayler
	name = "KDI FN-57 \"Twenty-Four-Seven\""
	desc = "A custom made Five Seven with an experimental underbarrel taser and a reflex sight. The trigger weight has been balanced along with the slide weight, allowing for optimized firing."
	icon_state = "rayler"
	accuracy = 4
	fire_delay = 0
	var/stunforce = 0
	var/agonyforce = 30

/obj/item/weapon/gun/projectile/fiveseven/rayler/throw_impact(atom/hit_atom, var/speed)
	if(istype(hit_atom,/mob/living))
		apply_hit_effect(hit_atom, hit_zone = pick(BP_HEAD, BP_CHEST, BP_CHEST, BP_L_LEG, BP_R_LEG, BP_L_ARM, BP_R_ARM))
	else
		..()

/obj/item/weapon/gun/projectile/fiveseven/rayler/apply_hit_effect(mob/living/target, mob/living/user, var/hit_zone)
	if(isrobot(target))
		return ..()

	var/agony = agonyforce
	var/stun = stunforce
	var/obj/item/organ/external/affecting = null
	if(ishuman(target))
		var/mob/living/carbon/human/H = target
		affecting = H.get_organ(hit_zone)
	var/abuser =  user ? "" : "by [user]"
	if(user && user.a_intent == I_HURT)
		. = ..()
		if (!.)	//item/attack() does it's own messaging and logs
			return 0	// item/attack() will return 1 if they hit, 0 if they missed.

		//whacking someone causes a much poorer electrical contact than deliberately prodding them.
		stun *= 0.5
		if(!safety_state)		//Checks to see if the stunbaton is on.
			agony *= 0.5	//whacking someone causes a much poorer contact than prodding them.
		else
			agony = 0	//Shouldn't really stun if it's off, should it?
		//we can't really extract the actual hit zone from ..(), unfortunately. Just act like they attacked the area they intended to.
	else if(safety_state)
		if(affecting)
			target.visible_message("<span class='warning'>[target] has been prodded in the [affecting.name] with [src][abuser]. Luckily it was off.</span>")
		else
			target.visible_message("<span class='warning'>[target] has been prodded with [src][abuser]. Luckily it was off.</span>")
	else
		if(affecting)
			target.visible_message("<span class='danger'>[target] has been prodded in the [affecting.name] with [src]!</span>")
		else
			target.visible_message("<span class='danger'>[target] has been prodded with [src][abuser]!</span>")
		playsound(loc, 'sound/weapons/Egloves.ogg', 50, 1, -1)

	//stun effects
	if(!safety_state)
		target.stun_effect_act(stun, agony, hit_zone, src)
		msg_admin_attack("[key_name(user)] stunned [key_name(target)] with the [src].")

		if(ishuman(target))
			var/mob/living/carbon/human/H = target
			H.forcesay(GLOB.hit_appends)
