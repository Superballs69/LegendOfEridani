/obj/item/weapon/gun/projectile/heavysniper
	name = "anti-materiel rifle"
	desc = "A portable anti-armour rifle fitted with a scope, the HI PTR-7 Rifle was originally designed to used against armoured exosuits. It is capable of punching through windows and non-reinforced walls with ease. Fires armor piercing 14.5mm shells."
	icon_state = "heavysniper"
	item_state = "heavysniper" //sort of placeholder
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 2, TECH_ILLEGAL = 8)
	caliber = "14.5mm"
	screen_shake = 2 //extra kickback
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING
	max_shells = 1
	ammo_type = /obj/item/ammo_casing/a145
	one_hand_penalty = 6
	accuracy = -2
	scoped_accuracy = 5 //increased accuracy over the LWAP because only one shot
	var/bolt_open = 0
	wielded_item_state = "heavysniper-wielded" //sort of placeholder
	load_sound = 'sound/weapons/guns/interaction/rifle_load.ogg'

/obj/item/weapon/gun/projectile/heavysniper/on_update_icon()
	..()
	if(bolt_open)
		icon_state = "heavysniper-open"
	else
		icon_state = "heavysniper"

/obj/item/weapon/gun/projectile/heavysniper/handle_post_fire(mob/user, atom/target, var/pointblank=0, var/reflex=0)
	..()
	if(user && user.skill_check(SKILL_WEAPONS, SKILL_PROF))
		to_chat(user, "<span class='notice'>You work the bolt open with a reflexive motion, ejecting [chambered]!</span>")
		unload_shell()

/obj/item/weapon/gun/projectile/heavysniper/proc/unload_shell()
	if(chambered)
		if(!bolt_open)
			playsound(src.loc, 'sound/weapons/guns/interaction/rifle_boltback.ogg', 50, 1)
			bolt_open = 1
		chambered.dropInto(src.loc)
		loaded -= chambered
		chambered = null

/obj/item/weapon/gun/projectile/heavysniper/attack_self(mob/user as mob)
	bolt_open = !bolt_open
	if(bolt_open)
		if(chambered)
			to_chat(user, "<span class='notice'>You work the bolt open, ejecting [chambered]!</span>")
			unload_shell()
		else
			to_chat(user, "<span class='notice'>You work the bolt open.</span>")
	else
		to_chat(user, "<span class='notice'>You work the bolt closed.</span>")
		playsound(src.loc, 'sound/weapons/guns/interaction/rifle_boltforward.ogg', 50, 1)
		bolt_open = 0
	add_fingerprint(user)
	update_icon()

/obj/item/weapon/gun/projectile/heavysniper/special_check(mob/user)
	if(bolt_open)
		to_chat(user, "<span class='warning'>You can't fire [src] while the bolt is open!</span>")
		return 0
	return ..()

/obj/item/weapon/gun/projectile/heavysniper/load_ammo(var/obj/item/A, mob/user)
	if(!bolt_open)
		return
	..()

/obj/item/weapon/gun/projectile/heavysniper/unload_ammo(mob/user, var/allow_dump=1)
	if(!bolt_open)
		return
	..()

/obj/item/weapon/gun/projectile/heavysniper/verb/scope()
	set category = "Object"
	set name = "Use Scope"
	set popup_menu = 1

	toggle_scope(usr, 2.0)

// Bolt Action Rifles
/obj/item/weapon/gun/projectile/shotgun/pump/boltaction
	name = "FAC R700"
	desc = "A popular scoped hunting rifle seen throughout Frontier space, with many claiming this weapon as a birthright. Chambered in 7.62."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "r700"
	ammo_type = /obj/item/ammo_casing/a762
	caliber = "7.62mm"
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 5
	unacidable = 1
	one_hand_penalty = 5
	accuracy = -1
	scoped_accuracy = 4
	load_sound = 'sound/weapons/guns/interaction/rifle_load.ogg'
	fire_sound = 'sound/weapons/gunshot/r700.ogg'
	cycle_sound = 'sound/weapons/guns/interaction/boltactioncycle.ogg'

/obj/item/weapon/gun/projectile/shotgun/pump/boltaction/verb/scope()
	set category = "Object"
	set name = "Use Scope"
	set popup_menu = 1

	toggle_scope(usr, 2.0)

/obj/item/weapon/gun/projectile/shotgun/pump/boltaction/police
	name = "FAC R700 Police"
	desc = "A police variant of the R700, commonly seen in the hands of Frontier National Guard and local constabulary. Chambered in 7.62 and utilizes a 10 round magazine."
	icon_state = "r700_police"
	accuracy = 0
	scoped_accuracy = 5
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m762svd
	allowed_magazines = /obj/item/ammo_magazine/m762svd

/obj/item/weapon/gun/projectile/shotgun/pump/boltaction/police/update_icon(var/ignore_inhands)
	..()
	if(ammo_magazine)
		icon_state = "[icon_state]"
	else
		icon_state = "[icon_state]-e"

	if(!ignore_inhands) update_held_icon()
	return