/obj/item/weapon/gun/projectile/revolver
	name = "revolver"
	desc = "A powerful revolver. Uses .357 and .38 rounds."
	icon_state = "revolver"
	item_state = "revolver"
	caliber = 357
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	handle_casings = CYCLE_CASINGS
	max_shells = 6
	fire_delay = 6.75 //Revolvers are naturally slower-firing
	ammo_type = /obj/item/ammo_casing/a357
	var/chamber_offset = 0 //how many empty chambers in the cylinder until you hit a round
	mag_insert_sound = 'sound/weapons/guns/interaction/rev_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/rev_magout.ogg'

/obj/item/weapon/gun/projectile/revolver/AltClick()
	if(CanPhysicallyInteract(usr))
		spin_cylinder()

/obj/item/weapon/gun/projectile/revolver/verb/spin_cylinder()
	set name = "Spin cylinder"
	set desc = "Fun when you're bored out of your skull."
	set category = "Object"

	chamber_offset = 0
	visible_message("<span class='warning'>\The [usr] spins the cylinder of \the [src]!</span>", \
	"<span class='notice'>You hear something metallic spin and click.</span>")
	playsound(src.loc, 'sound/weapons/revolver_spin.ogg', 100, 1)
	loaded = shuffle(loaded)
	if(rand(1,max_shells) > loaded.len)
		chamber_offset = rand(0,max_shells - loaded.len)

/obj/item/weapon/gun/projectile/revolver/consume_next_projectile()
	if(chamber_offset)
		chamber_offset--
		return
	return ..()

/obj/item/weapon/gun/projectile/revolver/load_ammo(var/obj/item/A, mob/user)
	chamber_offset = 0
	return ..()

/obj/item/weapon/gun/projectile/revolver/m30
	name = "M-30"
	desc = "The Frontier Armament Company's M-30 is a choice revolver when you absolutely, positively need to put a hole in the other guy. Uses .357 and .38 rounds."
	caliber = ".44"
	ammo_type = /obj/item/ammo_casing/a44
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "m30"
	item_state = "revolver"
	unacidable = 1

/obj/item/weapon/gun/projectile/revolver/m30/police
	name = "M-30 'Police Special'"
	desc = "The FAC's renowned M30 has seen service amongst Frontier military and police organizations, and has such made a specialized model with a shortened barrel and black furniture. Uses .357 and .38 rounds."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "m30_police"
	ammo_type = /obj/item/ammo_casing/a44/rubber
	unacidable = 1
	accuracy = 0.30

/obj/item/weapon/gun/projectile/revolver/mateba
	name = "Mateba Autorevolver"
	desc = "This unique looking handgun is named after an Italian company famous for the manufacture of these revolvers, and pasta kneading machines. Uses .357 and .38 rounds."
	caliber = 357
	icon_state = "mateba"
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	ammo_type = /obj/item/ammo_casing/a357

/obj/item/weapon/gun/projectile/revolver/inspector
	name = "KDI \"Inspector\" .357"
	desc = "Another high-quality firearm developed by Kusanagi Defense Industries. Features a sturdy frame, electronic chamber indicators and polygonal rifling for dead-on accuracy. Uses .357 and .38 rounds."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "inspector"
	caliber = 357
	fire_delay = 5
	accuracy = 2
	fire_sound = 'sound/weapons/gunshot/revolver.ogg'

/obj/item/weapon/gun/projectile/revolver/inspector/proc/update_charge()
	if(loaded.len==0)
		overlays += "inspector_off"
	else
		overlays += "inspector_on"

/obj/item/weapon/gun/projectile/revolver/inspector/update_icon()
	overlays.Cut()
	update_charge()

/obj/item/weapon/gun/projectile/revolver/detective
	name = "S&W Model 10"
	desc = "A cheap Olympia Foundry knock-off of a Smith & Wesson Model 10. Uses .38-Special rounds."
	icon_state = "detective"
	max_shells = 6
	caliber = "38"
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	ammo_type = /obj/item/ammo_casing/a38

/obj/item/weapon/gun/projectile/revolver/detective/verb/rename_gun()
	set name = "Name Gun"
	set category = "Object"
	set desc = "Click to rename your gun. If you're the detective."

	var/mob/M = usr
	if(!M.mind)	return 0
	if(!M.mind.assigned_role == "Detective")
		to_chat(M, "<span class='notice'>You don't feel cool enough to name this gun, chump.</span>")
		return 0

	var/input = sanitizeSafe(input("What do you want to name the gun?", ,""), MAX_NAME_LEN)

	if(src && input && !M.stat && in_range(M,src))
		SetName(input)
		to_chat(M, "You name the gun [input]. Say hello to your new friend.")
		return 1

// Blade Runner pistol.
/obj/item/weapon/gun/projectile/revolver/deckard
	name = "Deckard .44"
	desc = "A custom-built revolver, based off the semi-popular Detective Special model."
	icon_state = "deckard-empty"
	ammo_type = /obj/item/ammo_magazine/s38/rubber

/obj/item/weapon/gun/projectile/revolver/deckard/emp
	ammo_type = /obj/item/ammo_casing/a38/emp

/obj/item/weapon/gun/projectile/revolver/deckard/on_update_icon()
	..()
	if(loaded.len)
		icon_state = "deckard-loaded"
	else
		icon_state = "deckard-empty"

/obj/item/weapon/gun/projectile/revolver/deckard/load_ammo(var/obj/item/A, mob/user)
	if(istype(A, /obj/item/ammo_magazine))
		flick("deckard-reload",src)
	..()

/obj/item/weapon/gun/projectile/revolver/capgun
	name = "cap gun"
	desc = "Looks almost like the real thing! Ages 8 and up."
	icon_state = "revolver-toy"
	item_state = "revolver"
	caliber = "caps"
	origin_tech = list(TECH_COMBAT = 1, TECH_MATERIAL = 1)
	handle_casings = CYCLE_CASINGS
	max_shells = 7
	ammo_type = /obj/item/ammo_casing/cap

/obj/item/weapon/gun/projectile/revolver/capgun/attackby(obj/item/weapon/wirecutters/W, mob/user)
	if(!istype(W) || icon_state == "revolver")
		return ..()
	to_chat(user, "<span class='notice'>You snip off the toy markings off the [src].</span>")
	name = "revolver"
	icon_state = "revolver"
	desc += " Someone snipped off the barrel's toy mark. How dastardly."
	return 1

/obj/item/weapon/gun/projectile/revolver/webley
	name = "service revolver"
	desc = "The A&M W4. A rugged top break revolver produced by al-Maliki & Mosley. Based on the Webley model, with modern improvements. Uses .44 magnum rounds."
	icon_state = "webley"
	item_state = "webley"
	max_shells = 6
	caliber = ".44"
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	ammo_type = /obj/item/ammo_casing/a44