//** Shield Helpers
//These are shared by various items that have shield-like behaviour

//bad_arc is the ABSOLUTE arc of directions from which we cannot block. If you want to fix it to e.g. the user's facing you will need to rotate the dirs yourself.
/proc/check_shield_arc(mob/user, var/bad_arc, atom/damage_source = null, mob/attacker = null)
	//check attack direction
	var/attack_dir = 0 //direction from the user to the source of the attack
	if(istype(damage_source, /obj/item/projectile))
		var/obj/item/projectile/P = damage_source
		attack_dir = get_dir(get_turf(user), P.starting)
	else if(attacker)
		attack_dir = get_dir(get_turf(user), get_turf(attacker))
	else if(damage_source)
		attack_dir = get_dir(get_turf(user), get_turf(damage_source))

	if(!(attack_dir && (attack_dir & bad_arc)))
		return 1
	return 0

/proc/default_parry_check(mob/user, mob/attacker, atom/damage_source)
	//parry only melee attacks
	if(istype(damage_source, /obj/item/projectile) || (attacker && get_dist(user, attacker) > 1) || user.incapacitated())
		return 0

	//block as long as they are not directly behind us
	var/bad_arc = reverse_direction(user.dir) //arc of directions from which we cannot block
	if(!check_shield_arc(user, bad_arc, damage_source, attacker))
		return 0

	return 1

/obj/item/weapon/shield
	name = "shield"
	var/base_block_chance = 50

/obj/item/weapon/shield/handle_shield(mob/user, var/damage, atom/damage_source = null, mob/attacker = null, var/def_zone = null, var/attack_text = "the attack")
	if(user.incapacitated())
		return 0

	//block as long as they are not directly behind us
	var/bad_arc = reverse_direction(user.dir) //arc of directions from which we cannot block
	if(check_shield_arc(user, bad_arc, damage_source, attacker))
		if(prob(get_block_chance(user, damage, damage_source, attacker)))
			user.visible_message("<span class='danger'>\The [user] blocks [attack_text] with \the [src]!</span>")
			return 1
	return 0

/obj/item/weapon/shield/proc/get_block_chance(mob/user, var/damage, atom/damage_source = null, mob/attacker = null)
	return base_block_chance

/obj/item/weapon/shield/riot
	name = "riot shield"
	desc = "A shield adept at blocking blunt objects from connecting with the torso of the shield wielder."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "riot"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BACK
	force = 5.0
	throwforce = 5.0
	throw_speed = 1
	throw_range = 4
	w_class = ITEM_SIZE_HUGE
	origin_tech = list(TECH_MATERIAL = 2)
	matter = list(MATERIAL_GLASS = 7500, MATERIAL_STEEL = 1000)
	attack_verb = list("shoved", "bashed")
	var/cooldown = 0 //shield bash cooldown. based on world.time
	var/max_block = 10
	var/can_block_lasers = FALSE

/obj/item/weapon/shield/riot/handle_shield(mob/user)
	. = ..()
	if(.) playsound(user.loc, 'sound/weapons/Genhit.ogg', 50, 1)

/obj/item/weapon/shield/riot/get_block_chance(mob/user, var/damage, atom/damage_source = null, mob/attacker = null)
	if(istype(damage_source, /obj/item/projectile))
		var/obj/item/projectile/P = damage_source
		//plastic shields do not stop bullets or lasers, even in space. Will block beanbags, rubber bullets, and stunshots just fine though.
		if(is_sharp(P) && damage >= max_block)
			return 0
		if(istype(P, /obj/item/projectile/beam) && (!can_block_lasers || (P.armor_penetration >= max_block)))
			return 0
	return base_block_chance

/obj/item/weapon/shield/riot/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W, /obj/item/weapon/melee/baton))
		if(cooldown < world.time - 25)
			user.visible_message("<span class='warning'>[user] bashes [src] with [W]!</span>")
			playsound(user.loc, 'sound/effects/shieldbash.ogg', 50, 1)
			cooldown = world.time
	else
		..()

/obj/item/weapon/shield/riot/metal
	name = "ballistic combat shield"
	icon_state = "metal"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BACK
	force = 6.0
	throwforce = 7.0
	throw_range = 3
	w_class = ITEM_SIZE_HUGE
	matter = list(MATERIAL_PLASTEEL = 8500)
	max_block = 40
	can_block_lasers = TRUE
	slowdown_general = 1.5

/obj/item/weapon/shield/buckler
	name = "buckler"
	desc = "A wooden buckler used to block sharp things from entering your body back in the day.."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "buckler"
	slot_flags = SLOT_BACK
	force = 8
	throwforce = 8
	base_block_chance = 60
	throw_speed = 10
	throw_range = 20
	w_class = ITEM_SIZE_HUGE
	origin_tech = list(TECH_MATERIAL = 1)
	matter = list(MATERIAL_STEEL = 1000, MATERIAL_WOOD = 1000)
	attack_verb = list("shoved", "bashed")

/obj/item/weapon/shield/buckler/handle_shield(mob/user)
	. = ..()
	if(.) playsound(user.loc, 'sound/weapons/Genhit.ogg', 50, 1)

/obj/item/weapon/shield/buckler/get_block_chance(mob/user, var/damage, atom/damage_source = null, mob/attacker = null)
	if(istype(damage_source, /obj/item/projectile/bullet))
		return 0 //No blocking bullets, I'm afraid.
	return base_block_chance

/*
 * Energy Shield
 */

/obj/item/weapon/shield/energy
	name = "energy combat shield"
	desc = "A shield capable of stopping most projectile and melee attacks. It can be retracted, expanded, and stored anywhere."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "eshield0" // eshield1 for expanded
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	force = 3.0
	throwforce = 5.0
	throw_speed = 1
	throw_range = 4
	w_class = ITEM_SIZE_SMALL
	origin_tech = list(TECH_MATERIAL = 4, TECH_MAGNET = 3, TECH_ILLEGAL = 4)
	attack_verb = list("shoved", "bashed")
	var/active = 0

/obj/item/weapon/shield/energy/handle_shield(mob/user)
	if(!active)
		return 0 //turn it on first!
	. = ..()

	if(.)
		var/datum/effect/effect/system/spark_spread/spark_system = new /datum/effect/effect/system/spark_spread()
		spark_system.set_up(5, 0, user.loc)
		spark_system.start()
		playsound(user.loc, 'sound/weapons/blade1.ogg', 50, 1)

/obj/item/weapon/shield/energy/get_block_chance(mob/user, var/damage, atom/damage_source = null, mob/attacker = null)
	if(istype(damage_source, /obj/item/projectile))
		var/obj/item/projectile/P = damage_source
		if((is_sharp(P) && damage > 10) || istype(P, /obj/item/projectile/beam))
			return (base_block_chance - round(damage / 3)) //block bullets and beams using the old block chance
	return base_block_chance

/obj/item/weapon/shield/energy/attack_self(mob/living/user as mob)
	if ((CLUMSY in user.mutations) && prob(50))
		to_chat(user, "<span class='warning'>You beat yourself in the head with [src].</span>")
		user.take_organ_damage(5)
	active = !active
	if (active)
		force = 10
		update_icon()
		w_class = ITEM_SIZE_HUGE
		playsound(user, 'sound/weapons/saberon.ogg', 50, 1)
		to_chat(user, "<span class='notice'>\The [src] is now active.</span>")

	else
		force = 3
		update_icon()
		w_class = ITEM_SIZE_TINY
		playsound(user, 'sound/weapons/saberoff.ogg', 50, 1)
		to_chat(user, "<span class='notice'>\The [src] can now be concealed.</span>")

	if(istype(user,/mob/living/carbon/human))
		var/mob/living/carbon/human/H = user
		H.update_inv_l_hand()
		H.update_inv_r_hand()

	add_fingerprint(user)
	return

/obj/item/weapon/shield/energy/on_update_icon()
	icon_state = "eshield[active]"
	if(active)
		set_light(0.4, 0.1, 1, 2, "#006aff")
	else
		set_light(0)


// Extendable Shield

/obj/item/weapon/shield/riot/extendable
	name = "Great Firewall"
	desc = "PyroCorp's 'Great Firewall' ballistic shield. Can be extended to provide additional protection."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "extshield0"
	item_state = "extshield0"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	force = 2
	throwforce = 2
	throw_speed = 3
	throw_range = 4
	w_class = ITEM_SIZE_HUGE
	attack_verb = list("shoved", "bashed", "denied")
	var/active = 0

/obj/item/weapon/shield/riot/extendable/handle_shield(mob/user)
	if(!active)
		return 0 //turn it on first!
	. = ..()

	if(.)
		if(.) playsound(user.loc, 'sound/weapons/Genhit.ogg', 50, 1)

/obj/item/weapon/shield/riot/extendable/get_block_chance(mob/user, var/damage, atom/damage_source = null, mob/attacker = null)
	if(istype(damage_source, /obj/item/projectile))
		var/obj/item/projectile/P = damage_source
		if((is_sharp(P) && damage > 0) || istype(P, /obj/item/projectile/beam))
			return (base_block_chance - round(damage / 3)) //block bullets and beams using the old block chance
	return base_block_chance



/obj/item/weapon/shield/riot/extendable/attack_self(mob/living/user)
	active = !active
	icon_state = "extshield[active]"
	item_state = "extshield[active]"
	playsound(src.loc, 'sound/weapons/empty.ogg', 50, 1)

	if(active)
		force = 1
		throwforce = 1
		throw_speed = 1
		w_class = 4
		base_block_chance = 200
		slowdown_general = 9
		armor = list(melee = 100)
		to_chat(user, "<span class='notice'>You push the lever and extend \the [src]!</span>")
	else
		force = 5
		throwforce = 3
		throw_speed = 3
		w_class = 3
		slot_flags = 0
		base_block_chance = 50
		slowdown_general = 2
		armor = list(melee = 30)
		to_chat(user, "<span class='notice'>\The [src] folds inwards neatly as you pull the lever back.</span>")

	if(istype(user,/mob/living/carbon/human))
		var/mob/living/carbon/human/H = user
		H.update_inv_l_hand()
		H.update_inv_r_hand()

	add_fingerprint(user)
	return


// Flash Shield

/obj/item/weapon/shield/riot/flash
	name = "Flash Shield"
	desc = "PyroCorp's flash assault shield. Can flash targets facing the shield."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "blitzshield"
	item_state = "blitzshield"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	force = 7
	throwforce = 2
	throw_speed = 3
	throw_range = 4
	max_block = 40
	can_block_lasers = TRUE
	slowdown_general = 1.05
	w_class = ITEM_SIZE_HUGE
	attack_verb = list("shoved", "bashed")
	var/active = 0
	var/times_used = 0 //Number of times it's been used.
	var/broken = 0     //Is the flash burnt out?
	var/last_used = 0 //last world.time it was used.
	var/str_min = 2 //how weak the effect CAN be
	var/str_max = 7 //how powerful the effect COULD be


/obj/item/weapon/shield/riot/flash/proc/flash_recharge()
	//capacitor recharges over time
	for(var/i=0, i<3, i++)
		if(last_used+600 > world.time)
			break
		last_used += 600
		times_used -= 2
	last_used = world.time
	times_used = max(0,round(times_used)) //sanity

/obj/item/weapon/shield/riot/flash/attack(mob/living/M, mob/living/user, var/target_zone)
	if(!user || !M)	return	//sanity
	admin_attack_log(user, M, "flashed their victim using \a [src].", "Was flashed by \a [src].", "used \a [src] to flash")

//	if(!clown_check(user))	return
	if(broken)
		to_chat(user, "<span class='warning'>\The [src] is broken.</span>")
		return

	flash_recharge()

	//spamming the flash before it's fully charged (60seconds) increases the chance of it breaking
	//It will never break on the first use.
	switch(times_used)
		if(0 to 4)
			last_used = world.time
			if(prob(times_used))	//if you use it 5 times in a minute it has a 10% chance to break!
				broken = 1
				to_chat(user, "<span class='warning'>The bulb has burnt out!</span>")
				icon_state = "[initial(icon_state)]_burnt"
				return
			times_used++
		else	//can only use it 5 times a minute
			to_chat(user, "<span class='warning'>*click* *click*</span>")
			return

	user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
	user.do_attack_animation(M)

	playsound(src.loc, 'sound/weapons/flash.ogg', 100, 1)
	var/flashfail = 0

	if(iscarbon(M))
		if(M.stat!=DEAD)
			var/mob/living/carbon/C = M
			var/safety = C.eyecheck()
			if(safety < FLASH_PROTECTION_MODERATE)
				var/flash_strength = (rand(str_min,str_max))
				if(ishuman(M))
					var/mob/living/carbon/human/H = M
					flash_strength = round(H.species.flash_mod * flash_strength)
				if(flash_strength > 0)
					M.flash_eyes(FLASH_PROTECTION_MODERATE - safety)
					M.Stun(flash_strength / 2)
					M.eye_blurry += flash_strength
					M.confused += (flash_strength + 2)
					if(flash_strength > 3)
						M.drop_l_hand()
						M.drop_r_hand()
					if(flash_strength > 5)
						M.Weaken(2)
			else
				flashfail = 1

	else if(issilicon(M))
		M.Weaken(rand(str_min,6))
	else
		flashfail = 1

	if(isrobot(user))
		spawn(0)
			var/atom/movable/overlay/animation = new(user.loc)
			animation.plane = user.plane
			animation.layer = user.layer + 0.01
			animation.icon_state = "blank"
			animation.icon = 'icons/mob/mob.dmi'
			animation.master = user
			flick("blspell", animation)
			sleep(5)
			qdel(animation)

	if(!flashfail)
		flick("[initial(icon_state)]_on", src)
		if(!issilicon(M))
			user.visible_message("<span class='disarm'>[user] blinds [M] with \the [src]!</span>")
		else
			user.visible_message("<span class='notice'>[user] overloads [M]'s sensors with \the [src]!</span>")
	else
		user.visible_message("<span class='notice'>[user] fails to blind [M] with \the [src]!</span>")
	return

/obj/item/weapon/shield/riot/flash/attack_self(mob/living/carbon/user as mob, flag = 0, emp = 0)
//	if(!user || !clown_check(user)) 	return

	if(broken)
		user.show_message("<span class='warning'>The [src.name] 's flash arrays is broken</span>", 2)
		return

	flash_recharge()

	//spamming the flash before it's fully charged (60seconds) increases the chance of it  breaking
	//It will never break on the first use.
	switch(times_used)
		if(0 to 5)
			if(prob(2*times_used))	//if you use it 5 times in a minute it has a 10% chance to break!
				broken = 1
				to_chat(user, "<span class='warning'>The flashing array has burnt out!</span>")
				icon_state = "[initial(icon_state)]_burnt"
				return
			times_used++
		else	//can only use it  5 times a minute
			user.show_message("<span class='warning'>*click* *click*</span>", 2)
			return
	user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
	playsound(src.loc, 'sound/weapons/flash.ogg', 100, 1)
	flick("[initial(icon_state)]_on", src)
	if(user && isrobot(user))
		spawn(0)
			var/atom/movable/overlay/animation = new(user.loc)
			animation.plane = user.plane
			animation.layer = user.layer + 0.01
			animation.icon_state = "blank"
			animation.icon = 'icons/mob/mob.dmi'
			animation.master = user
			flick("blspell", animation)
			sleep(5)
			qdel(animation)

	for(var/mob/living/carbon/M in oviewers(3, null))
		var/safety = M.eyecheck()
		if(safety < FLASH_PROTECTION_MODERATE)
			if(!M.blinded)
				M.flash_eyes()
				M.eye_blurry += 2

	return
