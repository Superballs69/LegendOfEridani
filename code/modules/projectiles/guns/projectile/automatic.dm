/obj/item/weapon/gun/projectile/automatic //Hopefully someone will find a way to make these fire in bursts or something. --Superxpdude
	name = "Saber 9mm prototype SMG"
	desc = "A protoype lightweight, fast firing gun. Uses 9mm rounds."
	icon_state = "saber"	//ugly
	w_class = ITEM_SIZE_NORMAL
	load_method = MAGAZINE
	max_shells = 22
	caliber = "9mm"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/a9mm
	magazine_type = /obj/item/ammo_magazine/mc9mmds
	allowed_magazines = /obj/item/ammo_magazine/mc9mmds
	multi_aim = 1
	burst_delay = 2
	mag_insert_sound = 'sound/weapons/guns/interaction/smg_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/smg_magout.ogg'

	//machine pistol, easier to one-hand with
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=1, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=2, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/wt550/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "saber"
	else
		icon_state = "saber-empty"
	return

/obj/item/weapon/gun/projectile/automatic/machine_pistol
	name = "WT MP6 .45"
	desc = "The Ward-Takahashi MP6 Vesper, A fairly common machine pistol. Sometimes refered to as an 'uzi' by the backwater spacers it is often associated with. Uses .45 rounds."
	icon_state = "mpistolen"
	item_state = "wt550"
	w_class = ITEM_SIZE_NORMAL
	load_method = MAGAZINE
	caliber = ".45"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2, TECH_ILLEGAL = 3)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/c45
	magazine_type = /obj/item/ammo_magazine/m45uzi
	allowed_magazines = /obj/item/ammo_magazine/m45uzi //more damage compared to the wt550, smaller mag size

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=1, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=2, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/machine_pistol/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "mpistolen"
	else
		icon_state = "mpistolen-empty"

/obj/item/weapon/gun/projectile/automatic/c20r
	name = "C-20r"
	desc = "The C-20r is a lightweight and rapid firing SMG, for when you REALLY need someone dead. Uses 10mm rounds. It has a Seburo Arms authentication stamped on the stock."
	icon_state = "c20r"
	item_state = "c20r"
	w_class = ITEM_SIZE_LARGE
	force = 10
	caliber = "10mm"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2, TECH_ILLEGAL = 8)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m10mm
	allowed_magazines = /obj/item/ammo_magazine/m10mm
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	one_hand_penalty = 1
	fire_sound = 'sound/weapons/gunshot/c20r.ogg'

	//SMG
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=2, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=3, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=4, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/c20r/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "c20r-[round(ammo_magazine.stored_ammo.len,4)]"
	else
		icon_state = "c20r"
	return

/obj/item/weapon/gun/projectile/automatic/sts35
	name = "STS-35"
	desc = "The rugged Frontier Armament Company STS-35 is a durable automatic weapon that is standard issue with Frontier Federation forces. Uses 5.56mm rounds."
	icon_state = "arifle"
	item_state = null
	w_class = ITEM_SIZE_HUGE
	force = 15 //sturdy frame, could probably knock yo' silly ass out - SB
	caliber = "a556"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_ILLEGAL = 5)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m556
	allowed_magazines = /obj/item/ammo_magazine/m556
	one_hand_penalty = 3
	wielded_item_state = "arifle-wielded"
	mag_insert_sound = 'sound/weapons/guns/interaction/ltrifle_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/ltrifle_magout.ogg'
	fire_sound = 'sound/weapons/gunshot/sts35.ogg'
	unacidable = 1

	//Assault rifle, burst fire degrades quicker than SMG, worse one-handing penalty, slightly increased move delay
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=4, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=6,    one_hand_penalty=5, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=6,    one_hand_penalty=6, burst_accuracy=list(0,-1,-2,-3,-3), dispersion=list(0.6, 1.0, 1.2, 1.2, 1.5)),
		)

/obj/item/weapon/gun/projectile/automatic/sts35/on_update_icon()
	icon_state = (ammo_magazine)? "arifle" : "arifle-empty"
	wielded_item_state = (ammo_magazine)? "arifle-wielded" : "arifle-wielded-empty"
	..()

/obj/item/weapon/gun/projectile/automatic/g36c
	name ="KDI G36CX"
	desc = "A recreation of the classic German assault rifle, made by KDI. Uses 5.56mm rounds."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "g36c"
	force = 10
	caliber = "a556"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 5)
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m556
	allowed_magazines = /obj/item/ammo_magazine/m556
	accuracy = 1
	one_hand_penalty = 2
	wielded_item_state = "arifle-wielded"
	mag_insert_sound = 'sound/weapons/guns/interaction/ltrifle_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/ltrifle_magout.ogg'
	fire_sound = 'sound/weapons/gunshot/g36c.ogg'

	//Assault rifle, burst fire degrades quicker than SMG, worse one-handing penalty, slightly increased move delay
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=4, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=6,    one_hand_penalty=5, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=6,    one_hand_penalty=6, burst_accuracy=list(0,-1,-1,-2,-2), dispersion=list(0.6, 1.0, 1.2, 1.2, 1.5)),
		)

/obj/item/weapon/gun/projectile/automatic/g36c/on_update_icon()
	icon_state = (ammo_magazine)? "g36c" : "g36c-e"
	wielded_item_state = (ammo_magazine)? "arifle-wielded" : "arifle-wielded-empty"
	..()

/obj/item/weapon/gun/projectile/automatic/wt550
	name = "WT-550"
	desc = "The WT-550 Saber is a cheap self-defense weapon, mass-produced by Ward-Takahashi for paramilitary and private use. Uses 9mm rounds."
	icon_state = "wt550"
	item_state = "wt550"
	w_class = ITEM_SIZE_NORMAL
	caliber = "9mm"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/a9mm/rubber
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/mc9mmt/rubber
	allowed_magazines = /obj/item/ammo_magazine/mc9mmt
	fire_sound = 'sound/weapons/gunshot/wt550.ogg'

	//machine pistol, like SMG but easier to one-hand with
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=1, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=2, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/wt550/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "wt550-[round(ammo_magazine.stored_ammo.len,4)]"
	else
		icon_state = "wt550"
	return

/obj/item/weapon/gun/projectile/automatic/c8
	name = "C8"
	desc = "The C8 is an older model designated marksman rifle, reproduced by Seburo Arms.\
	Makes you feel like a space marine when you hold it. Uses 7.62mm rounds and has an under barrel grenade launcher."
	icon_state = "carbine"
	item_state = "z8carbine"
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = "7.62mm"
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 3)
	ammo_type = /obj/item/ammo_casing/a762
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m762
	allowed_magazines = /obj/item/ammo_magazine/m762
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	one_hand_penalty = 5
	burst_delay = 4
	wielded_item_state = "z8carbine-wielded"
	mag_insert_sound = 'sound/weapons/guns/interaction/batrifle_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/batrifle_magout.ogg'
	fire_sound = 'sound/weapons/gunshot/z8.ogg'
	//would have one_hand_penalty=4,5 but the added weight of a grenade launcher makes one-handing even harder
	firemodes = list(
		list(mode_name="semiauto",       burst=1,    fire_delay=0,    move_delay=null, use_launcher=null, one_hand_penalty=5, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3,    fire_delay=null, move_delay=6,    use_launcher=null, one_hand_penalty=6, burst_accuracy=list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    one_hand_penalty=5, burst_accuracy=null, dispersion=null)
		)

	var/use_launcher = 0
	var/obj/item/weapon/gun/projectile/grenade/underslung/launcher

/obj/item/weapon/gun/projectile/automatic/c8/Initialize()
	. = ..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/c8/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/ammo_casing/a40mm)))
		launcher.load_ammo(I, user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/c8/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		launcher.unload_ammo(user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/c8/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //switch back automatically
	else
		..()

/obj/item/weapon/gun/projectile/automatic/c8/on_update_icon()
	..()
	if(ammo_magazine)
		if(ammo_magazine.stored_ammo.len)
			icon_state = "carbine-loaded"
		else
			icon_state = "carbine-empty"
	else
		icon_state = "carbine"
	return

/obj/item/weapon/gun/projectile/automatic/c8/examine(mob/user)
	. = ..()
	if(launcher.chambered)
		to_chat(user, "\The [launcher] has \a [launcher.chambered] loaded.")
	else
		to_chat(user, "\The [launcher] is empty.")

/obj/item/weapon/gun/projectile/automatic/c8s
	name = "C8-S"
	desc = "The C8-S is the civilian version of Seburo Arm's workhorse DMR, locked in semi-auto and lacking a grenade launcher. Popular with law-enforcement and security companies."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "c8s"
	item_state = "z8carbine"
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = "7.62mm"
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 3)
	ammo_type = /obj/item/ammo_casing/a762
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m762
	allowed_magazines = list(/obj/item/ammo_magazine/m762, /obj/item/ammo_magazine/m762ext)
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	one_hand_penalty = 4
	burst_delay = 0
	wielded_item_state = "z8carbine-wielded"
	fire_sound = 'sound/weapons/gunshot/z8.ogg'
	firemodes = list(
		list(mode_name="semiauto",       burst=1,    fire_delay=0,    move_delay=null, one_hand_penalty=4, burst_accuracy=null, dispersion=null)
		)

/obj/item/weapon/gun/projectile/automatic/c8s/update_icon()
	..()
	if(ammo_magazine)
		if(ammo_magazine.stored_ammo.len)
			icon_state = "c8s-loaded"
		else
			icon_state = "c8s-empty"
	else
		icon_state = "c8s"
	return

/obj/item/weapon/gun/projectile/automatic/l6_saw
	name = "L6 Saw"
	desc = "A rather traditionally made L6 SAW with a pleasantly lacquered wooden pistol grip. 'Olympia Foundry-2531' is engraved on the reciever.\
	Uses 5.45mm rounds. It's also compatible with magazines from STS-35 assault rifles."
	icon_state = "l6closed100"
	item_state = "l6closedmag"
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = 0
	max_shells = 50
	caliber = "a556"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_ILLEGAL = 2)
	slot_flags = 0 //need sprites for SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a556
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/box/b556
	allowed_magazines = list(/obj/item/ammo_magazine/box/b556, /obj/item/ammo_magazine/m556)
	one_hand_penalty = 6
	wielded_item_state = "gun_wielded"
	mag_insert_sound = 'sound/weapons/guns/interaction/lmg_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/lmg_magout.ogg'

	//LMG, better sustained fire accuracy than assault rifles (comparable to SMG), higer move delay and one-handing penalty
	//No single-shot or 3-round-burst modes since using this weapon should come at a cost to flexibility.
	firemodes = list(
		list(mode_name="short bursts",	burst=5, move_delay=12, one_hand_penalty=8, burst_accuracy = list(0,-1,-1,-2,-2),          dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(mode_name="long bursts",	burst=8, move_delay=15, one_hand_penalty=9, burst_accuracy = list(0,-1,-1,-2,-2,-2,-3,-3), dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	var/cover_open = 0

/obj/item/weapon/gun/projectile/automatic/l6_saw/mag
	magazine_type = /obj/item/ammo_magazine/m556

/obj/item/weapon/gun/projectile/automatic/l6_saw/special_check(mob/user)
	if(cover_open)
		to_chat(user, "<span class='warning'>[src]'s cover is open! Close it before firing!</span>")
		return 0
	return ..()

/obj/item/weapon/gun/projectile/automatic/l6_saw/proc/toggle_cover(mob/user)
	cover_open = !cover_open
	to_chat(user, "<span class='notice'>You [cover_open ? "open" : "close"] [src]'s cover.</span>")
	update_icon()

/obj/item/weapon/gun/projectile/automatic/l6_saw/attack_self(mob/user as mob)
	if(cover_open)
		toggle_cover(user) //close the cover
	else
		return ..() //once closed, behave like normal

/obj/item/weapon/gun/projectile/automatic/l6_saw/attack_hand(mob/user as mob)
	if(!cover_open && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
	else
		return ..() //once open, behave like normal

/obj/item/weapon/gun/projectile/automatic/l6_saw/on_update_icon()
	if(istype(ammo_magazine, /obj/item/ammo_magazine/box))
		icon_state = "l6[cover_open ? "open" : "closed"][round(ammo_magazine.stored_ammo.len, 25)]"
		item_state = "l6[cover_open ? "open" : "closed"]"
	else if(ammo_magazine)
		icon_state = "l6[cover_open ? "open" : "closed"]mag"
		item_state = "l6[cover_open ? "open" : "closed"]mag"
	else
		icon_state = "l6[cover_open ? "open" : "closed"]-empty"
		item_state = "l6[cover_open ? "open" : "closed"]-empty"
	..()

/obj/item/weapon/gun/projectile/automatic/l6_saw/load_ammo(var/obj/item/A, mob/user)
	if(!cover_open)
		to_chat(user, "<span class='warning'>You need to open the cover to load that into [src].</span>")
		return
	..()

/obj/item/weapon/gun/projectile/automatic/l6_saw/unload_ammo(mob/user, var/allow_dump=1)
	if(!cover_open)
		to_chat(user, "<span class='warning'>You need to open the cover to unload [src].</span>")
		return
	..()

//--Eridani Additions--//

/obj/item/weapon/gun/projectile/automatic/c18r
	name = "C-18r"
	desc = "The Seburo Arms 9x19mm C-18r \"Sol\" is a compact and reliable bullpup submachine gun commonly seen in use by special forces all around the galaxy. Uses 9mm rounds."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "c18r"
	item_state = "wt550"
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT
	caliber = "9mm"
	magazine_type = /obj/item/ammo_magazine/m9mmsmg
	allowed_magazines = list(/obj/item/ammo_magazine/mc9mmds, /obj/item/ammo_magazine/m9mmsmg)
	load_method = MAGAZINE
	multi_aim = 1
	burst_delay = 1
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	fire_sound = 'sound/weapons/gunshot/c18r.ogg'
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    burst_accuracy=list(0,-15,-15),       dispersion=list(0.0, 0.6, 1.0)),
		)

/obj/item/weapon/gun/projectile/automatic/c18r/proc/update_charge()
	if(!ammo_magazine)
		return
	var/ratio = ammo_magazine.stored_ammo.len / ammo_magazine.max_ammo
	if(ratio < 0.25 && ratio != 0)
		ratio = 0.25
	ratio = round(ratio, 0.25) * 100
	overlays += "smg_[ratio]"

/obj/item/weapon/gun/projectile/automatic/c18r/update_icon()
	icon_state = (ammo_magazine)? "c18r" : "c18r-e"
	overlays.Cut()
	update_charge()

/obj/item/weapon/gun/projectile/automatic/c22r
	name = "C-22r"
	desc = "The C-22r is a select-fire SMG designed by Seburo Arms. Developed in competition of Ward Takashi's WT-550 for NanoTrasen new SMG contract.\
	Utimately, the WT-550 won and the C-22r is commonly seen in use by Frontier Militia and other private military contractors."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "c22r"
	item_state = "c20r" // Placeholder
	w_class = ITEM_SIZE_NORMAL
	caliber = "9mm"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m9mmsmg
	allowed_magazines = list(/obj/item/ammo_magazine/mc9mmds, /obj/item/ammo_magazine/m9mmsmg)
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	fire_sound = 'sound/weapons/gunshot/p92x.ogg'
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=6,    burst_accuracy=list(0,-15,-30), dispersion=list(0.0, 0.6, 0.6))
		)

/obj/item/weapon/gun/projectile/automatic/c22r/update_icon(var/ignore_inhands)
	..()
	if(istype(ammo_magazine,/obj/item/ammo_magazine/mc9mmds))
		icon_state = "c22r-short"
	else
		icon_state = (ammo_magazine)? "c22r" : "c22r-empty"
	if(!ignore_inhands) update_held_icon()

/obj/item/weapon/gun/projectile/automatic/c31a
	name = "C-31A"
	desc = "C-31A"
	desc = "The Seburo Arms C-31A is a lightweight, sturdy and hard-hitting bullpup assault rifle. It is the standard issue firearm of the SSA Armed Forces \
	and can be found in use by Frontier Federation forces as well. Uses 7.62mm rounds."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "c31a-small"
	item_state = "c31a"
	w_class = ITEM_SIZE_LARGE
	force = 10
	caliber = "7.62mm"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_ILLEGAL = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m762
	allowed_magazines = list(/obj/item/ammo_magazine/m762, /obj/item/ammo_magazine/m762ext)
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	fire_sound = 'sound/weapons/gunshot/c31a.ogg'
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, burst_accuracy=null, dispersion=null),
		list(mode_name="2-round bursts", burst=2, fire_delay=null, move_delay=6,    burst_accuracy=list(0,-15), dispersion=list(0.0, 0.6))
		)

/obj/item/weapon/gun/projectile/automatic/c31a/update_icon(var/ignore_inhands)
	..()
	if(istype(ammo_magazine,/obj/item/ammo_magazine/m762))
		icon_state = "c31a-small"
	else if(istype(ammo_magazine,/obj/item/ammo_magazine/m762ext))
		icon_state = "c31a"
	else
		item_state = "c31a-empty"
	if(!ignore_inhands)
		update_held_icon()

/obj/item/weapon/gun/projectile/automatic/uzi
	name = "Uzi"
	desc = "A classic open bolt, blowback submachine gun. Reproduced by Olympia Foundry, and is popular amongst criminals, government agents and even law enforcement agents. Chambered in .45 ACP."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "uzi"
	w_class = ITEM_SIZE_NORMAL
	load_method = MAGAZINE
	caliber = ".45"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/a45
	magazine_type = /obj/item/ammo_magazine/m45uzi
	allowed_magazines = list(/obj/item/ammo_magazine/m45uzi)
	multi_aim = 1
	burst_delay = 2
	fire_sound = 'sound/weapons/gunshot/gunshot_smg.ogg'

	//machine pistol, easier to one-hand with
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=1, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=2, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/uzi/update_icon(var/ignore_inhands)
	..()
	if(ammo_magazine)
		icon_state = "uzi"
	else
		icon_state = "uzi-e"

	if(!ignore_inhands) update_held_icon()
	return

/obj/item/weapon/gun/projectile/automatic/pcx12
	name = "PC-X12 \"Bulldog\" automatic shotgun"
	desc = "The PyroCorp Experimental 12 gauge automatic shotgun is a direct competitor to Seburo's extensive line of bullpup firearms. The bullpup design allows for compact firepower and controlled recoil. \
	Frontier Marine Marauders are reported to be exclusively using this shotgun in combat. If you're seeing this, you're in trouble."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "bulldog"
	item_state = "c20r" //placeholder
	w_class = ITEM_SIZE_LARGE
	force = 10
	caliber = "shotgun"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2, TECH_ILLEGAL = 8)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m12ga
	allowed_magazines = /obj/item/ammo_magazine/m12ga
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	one_hand_penalty = 2
	accuracy = 1.2
	fire_sound = 'sound/weapons/gunshot/bulldog.ogg'
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=2, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=3, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=4, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/pcx12/update_icon(var/ignore_inhands)
	..()
	if(ammo_magazine)
		icon_state = "bulldog"
	else
		icon_state = "bulldog-e"

	if(!ignore_inhands) update_held_icon()
	return

/obj/item/weapon/gun/projectile/automatic/p90
	name = "FAC FN-P90"
	desc = "The FAC P90 is a compact, large capacity submachine gun produced by Frontier Armament Company. Despite its fierce reputation, it still manages to feel like a toy. Chambered in 5.7x28mm."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "p90smg"
	item_state = "p90"
	w_class = ITEM_SIZE_NORMAL
	caliber = "5.7x28mm"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT // ToDo: Belt sprite.
	fire_sound = 'sound/weapons/gunshot/p90.ogg'
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m57smg
	allowed_magazines = list(/obj/item/ammo_magazine/m57smg) // ToDo: New sprite for the different mag.
	unacidable = 1 //frontier guns arr stronk

	firemodes = list(
		list(mode_name="semiauto", burst=1, fire_delay=0),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    burst_accuracy=list(0,-15,-15), dispersion=list(0.0, 0.6, 1.0))
		)

/obj/item/weapon/gun/projectile/automatic/p90/update_icon()
	icon_state = "p90smg-[ammo_magazine ? round(ammo_magazine.stored_ammo.len, 6) : "empty"]"

/obj/item/weapon/gun/projectile/automatic/mp7
	name = "KDI MP7"
	desc = "A personal defense weapon reproduced by KDI. A serious weapon for serious operations. Chambered in 4.6x30mm and has a threaded barrel."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "mp7"
	item_state = "wt550"
	w_class = ITEM_SIZE_NORMAL
	caliber = "4.6x30mm"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 3, TECH_ILLEGAL = 2)
	slot_flags = SLOT_BELT
	fire_sound = 'sound/weapons/gunshot/mp7.ogg'
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/mp7
	allowed_magazines = list(/obj/item/ammo_magazine/mp7)
	accuracy = 1.2
	silenced = 0
	threaded = 1
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'

	firemodes = list(
		list(mode_name="semiauto", burst=1, fire_delay=0),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, burst_accuracy=list(0, 0.5, 0.9), dispersion=list(0.0, 0.6, 1.0))
		)

/obj/item/weapon/gun/projectile/automatic/mp7/on_update_icon()
	..()
	if(silenced)
		icon_state = "mp7-silencer"
	else
		icon_state = "mp7"
	if(!(ammo_magazine && ammo_magazine.stored_ammo.len))
		icon_state = "[icon_state]-e"

/obj/item/weapon/gun/projectile/automatic/smg2
	name = "SMG2"
	desc = "You're fairly sure this is some variant of the MP7. The manufacturer's name and serial number have been worn away and somehow there's a grenade launcher on here. Uses 4.6x30mm rounds."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "smg2"
	item_state = "wt550"
	w_class = ITEM_SIZE_NORMAL
	caliber = "4.6x30mm"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 3, TECH_ILLEGAL = 2)
	slot_flags = SLOT_BELT
	fire_sound = 'sound/weapons/gunshot/mp7.ogg'
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/mp7
	allowed_magazines = list(/obj/item/ammo_magazine/mp7)

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null, use_launcher=0),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=1,    one_hand_penalty=1, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0), use_launcher=0),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=1,    one_hand_penalty=2, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2), use_launcher=0),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    one_hand_penalty=5, burst_accuracy=null, dispersion=null)
		)

	var/use_launcher = 0
	var/obj/item/weapon/gun/projectile/grenade/underslung/launcher

/obj/item/weapon/gun/projectile/automatic/smg2/Initialize()
	. = ..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/smg2/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/ammo_casing/a40mm)))
		launcher.load_ammo(I, user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/smg2/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		launcher.unload_ammo(user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/smg2/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //switch back automatically
	else
		..()

/obj/item/weapon/gun/projectile/automatic/smg2/examine(mob/user)
	. = ..()
	if(launcher.chambered)
		to_chat(user, "\The [launcher] has \a [launcher.chambered] loaded.")
	else
		to_chat(user, "\The [launcher] is empty.")


/obj/item/weapon/gun/projectile/automatic/srx9
	name = "HI SRX-9 'Hurricane'"
	desc = "Hesphaestus Industries answer to the increasing demand of high power security weapons. The SRX-9 is a low-cost alternative to the P90. Chambered in 5.7x28mm."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "hurricane"
	item_state = "c20r"
	w_class = ITEM_SIZE_NORMAL
	caliber = "5.7x28mm"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	fire_sound = 'sound/weapons/gunshot/p90.ogg'
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m57/rubber
	allowed_magazines = list(/obj/item/ammo_magazine/m57)
	accuracy = -0.35

	firemodes = list(
		list(mode_name="semiauto", burst=1, fire_delay=0),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    burst_accuracy=list(0,-15,-15), dispersion=list(0.0, 0.6, 1.0))
		)

/obj/item/weapon/gun/projectile/automatic/srx9/update_icon(var/ignore_inhands)
	..()
	if(ammo_magazine)
		icon_state = "hurricane"
	else
		icon_state = "hurricane-e"

	if(!ignore_inhands) update_held_icon()
	return

/obj/item/weapon/gun/projectile/automatic/mk5
	name = "KDI MK5"
	desc = "A well renowned submachinegun made by KDI. The MK5 is an integrally suppressed machinegun. Renowned for it's accuracy and reliability, the MK5 has seen service from all ends of the Milky Way. Chambered in 9mm."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "mk5"
	w_class = ITEM_SIZE_NORMAL
	load_method = MAGAZINE
	caliber = "9mm"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	magazine_type = /obj/item/ammo_magazine/m9mmsmg
	allowed_magazines = list(/obj/item/ammo_magazine/m9mmsmg)
	silenced = 1
	accuracy = 0.80
	fire_sound = 'sound/weapons/gunshot/mk5.ogg'

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=3,    one_hand_penalty=1, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=3,    one_hand_penalty=1, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 0.6, 1.0, 1.0)),
		)

/obj/item/weapon/gun/projectile/automatic/mk5/update_icon(var/ignore_inhands)
	..()
	if(ammo_magazine)
		icon_state = "mk5"
	else
		icon_state = "mk5-empty"

	if(!ignore_inhands) update_held_icon()
	return

/obj/item/weapon/gun/projectile/automatic/mx9
	name = "FAC MX9"
	desc = "A Frontier Armament Company produced sub-machine gun. This particular model is a Frontier Federation-issue for recon units. Chambered in .45 ACP."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "mx9"
	w_class = ITEM_SIZE_NORMAL
	load_method = MAGAZINE
	caliber = ".45"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	magazine_type = /obj/item/ammo_magazine/m45uzi
	allowed_magazines = list(/obj/item/ammo_magazine/m45uzi)
	burst_delay = 1
	fire_sound = 'sound/weapons/gunshot/mx9.ogg'

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=2, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=2, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=2, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/mx9/update_icon(var/ignore_inhands)
	..()
	if(ammo_magazine)
		icon_state = "mx9"
	else
		icon_state = "mx9-e"

	if(!ignore_inhands) update_held_icon()
	return

/obj/item/weapon/gun/projectile/automatic/kopis
	name = "OF-9 'Kopis'"
	desc = "A compact and relatively cheap polymer submachine pistol made by Olympia Foundry. Chambered in 9mm."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "kopis"
	w_class = ITEM_SIZE_NORMAL
	load_method = MAGAZINE
	caliber = "9mm"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	magazine_type = /obj/item/ammo_magazine/mc9mmds
	allowed_magazines = list(/obj/item/ammo_magazine/mc9mmds)
	burst_delay = 0.70
	accuracy = -0.25
	fire_sound = 'sound/weapons/gunshot/kopis.ogg'

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=0, burst_accuracy=list(0,-1,-1.1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=0, burst_accuracy=list(0,-1,-1.1,-1.2,-2.3), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/kopis/update_icon(var/ignore_inhands)
	..()
	if(ammo_magazine)
		icon_state = "kopis"
	else
		icon_state = "kopis-empty"

	if(!ignore_inhands) update_held_icon()
	return

/obj/item/weapon/gun/projectile/automatic/mac10
	name = "MAC 10"
	desc = "A classic and cheap sub machine gun. Essentially a metal box firing 9x19 bullets at a high fire rate. Made by the Frontier Armament Corporation to supply partisans. Chambered in 9mm."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "mac10"
	w_class = ITEM_SIZE_NORMAL
	load_method = MAGAZINE
	caliber = "9mm"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	magazine_type = /obj/item/ammo_magazine/m9mmmac
	accuracy = -1
	burst_delay = 1
	allowed_magazines = list(/obj/item/ammo_magazine/m9mmmac)

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=2,    one_hand_penalty=0, burst_accuracy=list(0,-1,-2,-2,-3), dispersion=list(0.6, 1.0, 1.0, 2.0, 3.0))
		)

/obj/item/weapon/gun/projectile/automatic/mac10/update_icon(var/ignore_inhands)
	..()
	if(ammo_magazine)
		icon_state = "mac10"
	else
		icon_state = "mac10-e"

	if(!ignore_inhands) update_held_icon()
	return

/obj/item/weapon/gun/projectile/automatic/mac10/fac10
	name = "FAC 10"
	desc = "The Frontier Armament Company's enhancement of the MAC-10 to supply the Federation's Dahaz-Khanar allies. More durable than the original MAC-10 with better accuracy."
	icon_state = "fac10"
	accuracy = 0
	unacidable = 1

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=2,    one_hand_penalty=0, burst_accuracy=list(0,-1,-1,-2,-2), dispersion=list(0.6, 0.7, 0.8, 1.0, 1.5))
		)

/obj/item/weapon/gun/projectile/automatic/mac10/fac10/update_icon(var/ignore_inhands)
	..()
	if(ammo_magazine)
		icon_state = "fac10"
	else
		icon_state = "fac10-e"

	if(!ignore_inhands) update_held_icon()
	return

/obj/item/weapon/gun/projectile/automatic/pc8s // Overkill much?
	name = "PC APDS 66"
	desc = "The PyroCorp Automatic Portable Destruction Shotgun 66. With a shell diameter of around 66mm, and the capacity to empty the whole mag in less than a second, \
	keeping all of your organs inside might become problematic. A favourite of any PyroBOT Heavy Shocktroopers."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "pc8shotgun"
	item_state = "pc8shotgun"
	w_class = ITEM_SIZE_LARGE
	force = 16
	caliber = "h8shotgun"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2, TECH_EVENT = 4, TECH_ILLEGAL = 8)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/pc8ammo
	allowed_magazines = /obj/item/ammo_magazine/pc8ammo
	auto_eject = 1
	burst_delay = 1.8
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	one_hand_penalty = 8
	accuracy = 1.2
	fire_sound = 'sound/weapons/gunshot/heavyshotgun.ogg'
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		list(mode_name="2-round bursts", burst=2, fire_delay=null, move_delay=4,    one_hand_penalty=12, burst_accuracy=list(0,-1),       dispersion=list(0.0, 0.6)),
		list(mode_name="full bursts",   burst=5, fire_delay=null, move_delay=6,    one_hand_penalty=16, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		list(mode_name="Life Denial burst",   burst=500, burst_delay = 0, fire_delay=null, move_delay=8,    one_hand_penalty=20, burst_accuracy=list(-1,-1,-2,-2,-3), dispersion=list(1.0, 1.0, 1.2, 1.6, 1.8)),
		)

/obj/item/weapon/gun/projectile/automatic/pc8s/update_icon(var/ignore_inhands)
	..()
	if(ammo_magazine)
		icon_state = "pc8shotgun"
	else
		icon_state = "pc8shotgun-e"

	if(!ignore_inhands) update_held_icon()
	return
