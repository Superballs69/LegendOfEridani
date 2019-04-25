/obj/item/weapon/material/butterfly
	name = "butterfly knife"
	desc = "A basic metal blade concealed in a lightweight plasteel grip. Small enough when folded to fit in a pocket."
	icon_state = "butterflyknife"
	item_state = null
	hitsound = null
	var/active = 0
	w_class = ITEM_SIZE_SMALL
	attack_verb = list("patted", "tapped")
	force = 3
	edge = 0
	sharp = 0
	force_divisor = 0.25 // 15 when wielded with hardness 60 (steel)
	thrown_force_divisor = 0.25 // 5 when thrown with weight 20 (steel)
	attack_cooldown_modifier = -1

/obj/item/weapon/material/butterfly/update_force()
	if(active)
		edge = 1
		sharp = 1
		..() //Updates force.
		throwforce = max(3,force-3)
		hitsound = 'sound/weapons/bladeslice.ogg'
		icon_state += "_open"
		w_class = ITEM_SIZE_NORMAL
		attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	else
		force = initial(force)
		edge = initial(edge)
		sharp = initial(sharp)
		hitsound = initial(hitsound)
		icon_state = initial(icon_state)
		w_class = initial(w_class)
		attack_verb = initial(attack_verb)

/obj/item/weapon/material/butterfly/attack(mob/living/M, mob/user, var/target_zone)
	..()
	if(ismob(M))
		backstab(M, user, 60, BRUTE, DAM_SHARP, target_zone, TRUE)

/obj/item/weapon/material/butterfly/attack_self(mob/user)
	active = !active
	if(active)
		to_chat(user, "<span class='notice'>You flip out \the [src].</span>")
		playsound(user, 'sound/weapons/flipblade.ogg', 15, 1)
	else
		to_chat(user, "<span class='notice'>\The [src] can now be concealed.</span>")
	update_force()
	add_fingerprint(user)

/obj/item/weapon/material/butterfly/switchblade
	name = "switchblade"
	desc = "A classic switchblade with gold engraving. Just holding it makes you feel like a gangster."
	icon_state = "switchblade"
	unbreakable = 1

/obj/item/weapon/material/pocketknife
	name = "tactical pocket knife"
	desc = "An every day carry folding pocket blade."
	icon_state = "pocketknife_tac"
	item_state = null
	hitsound = null
	var/active = 0
	w_class = ITEM_SIZE_SMALL
	attack_verb = list("patted", "tapped")
	force = 3
	edge = 0
	sharp = 0
	force_divisor = 0.25 // 15 when wielded with hardness 60 (steel)
	thrown_force_divisor = 0.25 // 5 when thrown with weight 20 (steel)
	attack_cooldown_modifier = -1
	unbreakable = 1
	applies_material_colour = 0
	var/automatic = 0 //if

/obj/item/weapon/material/pocketknife/update_force()
	if(active)
		edge = 1
		sharp = 1
		..() //Updates force.
		throwforce = max(3,force-3)
		hitsound = 'sound/weapons/bladeslice.ogg'
		icon_state += "_open"
		item_state = "knife"
		w_class = ITEM_SIZE_NORMAL
		attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	else
		force = initial(force)
		edge = initial(edge)
		sharp = initial(sharp)
		hitsound = initial(hitsound)
		icon_state = initial(icon_state)
		w_class = initial(w_class)
		attack_verb = initial(attack_verb)
		item_state = initial(item_state)

/obj/item/weapon/material/pocketknife/attack_self(mob/user)
	active = !active
	if(automatic)
		if(active)
			to_chat(user, "<span class='notice'>You engage \the [src].</span>")
			playsound(user, 'sound/weapons/flipblade.ogg', 15, 1)
		else
			to_chat(user, "<span class='notice'>\The [src] can now be concealed.</span>")
	else
		if(active)
			do_after(user,8)
			to_chat(user, "<span class='notice'>You flip out \the [src].</span>")
			playsound(user, 'sound/weapons/flipblade.ogg', 15, 1)
		else
			do_after(user,8)
			to_chat(user, "<span class='notice'>\The [src] can now be concealed.</span>")
	update_force()
	add_fingerprint(user)

/obj/item/weapon/material/pocketknife/auto
	name = "tactical switchblade"
	desc = "An automatic everyday carry pocket blade."
	automatic = 1

/*
 * Kitchen knives
 */
/obj/item/weapon/material/knife
	name = "kitchen knife"
	icon = 'icons/obj/kitchen.dmi'
	icon_state = "kitchenknife"
	item_state = "knife"
	desc = "A general purpose Chef's Knife made by SpaceCook Incorporated. Guaranteed to stay sharp for years to come."
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	sharp = 1
	edge = 1
	force_divisor = 0.15 // 9 when wielded with hardness 60 (steel)
	matter = list(MATERIAL_STEEL = 12000)
	origin_tech = list(TECH_MATERIAL = 1)
	attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	unbreakable = 1

/obj/item/weapon/material/knife/hook
	name = "meat hook"
	desc = "A sharp, metal hook what sticks into things."
	icon_state = "hook_knife"
	item_state = "hook_knife"

/obj/item/weapon/material/knife/ritual
	name = "ritual knife"
	desc = "The unearthly energies that once powered this blade are now dormant."
	icon = 'icons/obj/wizard.dmi'
	icon_state = "render"
	applies_material_colour = 0

/obj/item/weapon/material/knife/butch
	name = "butcher's cleaver"
	icon = 'icons/obj/kitchen.dmi'
	icon_state = "butch"
	desc = "A huge thing used for chopping and chopping up meat. This includes clowns and clown-by-products."
	force_divisor = 0.25 // 15 when wielded with hardness 60 (steel)
	attack_verb = list("cleaved", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")

/*
 * Leet hacker Data Knife
 */
 
/obj/item/device/multitool/hacktool/dataknife
	name = "data knife"
	desc = "A high-tech cyberwarfare weapon designed to hack all devices thrown at it. Currently set on passive hacking."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "dataknife"
	item_state = "knife"
	force = 15 //ROBUST
	edge = 1
	sharp = 1
	throwforce = 15
	origin_tech = list(TECH_MAGNET = 6, TECH_ILLEGAL = 6, TECH_COMBAT = 6)
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	w_class = ITEM_SIZE_NORMAL
	in_hack_mode = TRUE
	var/obj/item/weapon/card/emag/dataknife/counterpart = null

/obj/item/device/multitool/hacktool/dataknife/New(newloc, no_counterpart = TRUE)
	..(newloc)
	if(!counterpart && no_counterpart)
		counterpart = new(src, FALSE)
		counterpart.counterpart = src

/obj/item/device/multitool/hacktool/dataknife/Destroy()
	if(counterpart)
		counterpart.counterpart = null // So it can qdel cleanly.
		QDEL_NULL(counterpart)
	return ..()

/obj/item/device/multitool/hacktool/dataknife/attack_self(mob/user)
	playsound(get_turf(user),'sound/machines/click.ogg',50,1)
	user.drop_item(src)
	counterpart.forceMove(get_turf(src))
	src.forceMove(counterpart)
	user.put_in_active_hand(counterpart)
	to_chat(user, "<span class='notice'>You switch the [src] to brute force mode.</span>")

/obj/item/weapon/card/emag/dataknife
	desc = "A high-tech cyberwarfare weapon designed to hack all devices thrown at it. Currently set on brute-force cryptographic sequencing."
	name = "data knife"
	icon = 'icons/obj/weapons.dmi'
	icon_state = "dataknife_1"
	item_state = "knife"
	uses = 10
	force = 15 //ROBUST
	edge = 1
	sharp = 1
	throwforce = 15
	origin_tech = list(TECH_MAGNET = 6, TECH_ILLEGAL = 6, TECH_COMBAT = 6)
	w_class = ITEM_SIZE_NORMAL
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	var/obj/item/device/multitool/hacktool/dataknife/counterpart = null

/obj/item/weapon/card/emag/resolve_attackby(atom/A, mob/user)
	var/used_uses = A.emag_act(uses, user, src)
	if(used_uses == NO_EMAG_ACT)
		return ..(A, user)

	A.add_fingerprint(user)
	if(used_uses)
		log_and_message_admins("emagged \an [A].")

	if(uses<1)
		user.visible_message("<span class='warning'>\The [src] fizzles and sparks - it seems it's been used once too often, and is now spent.</span>")
		var/obj/item/weapon/card/emag_broken/junk = new(user.loc)
		junk.add_fingerprint(user)
		qdel(src)

	return 1

/obj/item/weapon/card/emag/dataknife/New(newloc, no_counterpart = TRUE)
	..(newloc)
	if(!counterpart && no_counterpart)
		counterpart = new(src, FALSE)
		counterpart.counterpart = src

/obj/item/weapon/card/emag/dataknife/Destroy()
	if(counterpart)
		counterpart.counterpart = null // So it can qdel cleanly.
		QDEL_NULL(counterpart)
	return ..()

/obj/item/weapon/card/emag/dataknife/attack_self(mob/user)
	playsound(get_turf(user),'sound/machines/click.ogg',50,1)
	user.drop_item(src)
	counterpart.forceMove(get_turf(src))
	src.forceMove(counterpart)
	user.put_in_active_hand(counterpart)
	to_chat(user, "<span class='notice'>You switch the [src] to passive mode, resetting the memory buffer.</span>")


