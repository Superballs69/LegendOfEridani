/obj/item/projectile/bullet/pellet/fragment
	damage = 7
	range_step = 2 //controls damage falloff with distance. projectiles lose a "pellet" each time they travel this distance. Can be a non-integer.

	base_spread = 0 //causes it to be treated as a shrapnel explosion instead of cone
	spread_step = 20

	silenced = 1
	fire_sound = null
	no_attack_log = 1
	muzzle_type = null

/obj/item/projectile/bullet/pellet/fragment/strong
	damage = 15

/obj/item/weapon/grenade/frag
	name = "fragmentation grenade"
	desc = "A military fragmentation grenade, designed to explode in a deadly shower of fragments, while avoiding massive structural damage."
	icon_state = "frggrenade"

	var/list/fragment_types = list(/obj/item/projectile/bullet/pellet/fragment = 1)
	var/num_fragments = 72  //total number of fragments produced by the grenade
	var/explosion_size = 2   //size of the center explosion
	var/stinger = null

	//The radius of the circle used to launch projectiles. Lower values mean less projectiles are used but if set too low gaps may appear in the spread pattern
	var/spread_range = 7 //leave as is, for some reason setting this higher makes the spread pattern have gaps close to the epicenter

/obj/item/weapon/grenade/frag/detonate()
	..()

	var/turf/O = get_turf(src)
	if(!O) return

	if(explosion_size)
		on_explosion(O)
	src.fragmentate(O, num_fragments, spread_range, fragment_types)
	if(stinger)
		playsound(src.loc, 'sound/effects/stinger.ogg', 50, 1, 30)
	qdel(src)


/obj/proc/fragmentate(var/turf/T=get_turf(src), var/fragment_number = 30, var/spreading_range = 5, var/list/fragtypes=list(/obj/item/projectile/bullet/pellet/fragment/))
	set waitfor = 0
	var/list/target_turfs = getcircle(T, spreading_range)
	var/fragments_per_projectile = round(fragment_number/target_turfs.len)

	for(var/turf/O in target_turfs)
		sleep(0)
		var/fragment_type = pickweight(fragtypes)
		var/obj/item/projectile/bullet/pellet/fragment/P = new fragment_type(T)
		P.pellets = fragments_per_projectile
		P.shot_from = src.name

		P.launch(O)

		//Make sure to hit any mobs in the source turf
		for(var/mob/living/M in T)
			//lying on a frag grenade while the grenade is on the ground causes you to absorb most of the shrapnel.
			//you will most likely be dead, but others nearby will be spared the fragments that hit you instead.
			if(M.lying && isturf(src.loc))
				P.attack_mob(M, 0, 5)
			else if(!M.lying && src.loc != get_turf(src)) //if it's not on the turf, it must be in the mob!
				P.attack_mob(M, 0, 25) //you're holding a grenade, dude!
			else
				P.attack_mob(M, 0, 100) //otherwise, allow a decent amount of fragments to pass



/obj/item/weapon/grenade/frag/proc/on_explosion(var/turf/O)
	if(explosion_size)
		explosion(O, -1, -1, explosion_size, round(explosion_size/2), 0)

/obj/item/weapon/grenade/frag/shell
	name = "fragmentation grenade"
	desc = "A light fragmentation grenade, designed to be fired from a launcher. It can still be activated and thrown by hand if necessary."
	icon_state = "fragshell"

	num_fragments = 50 //less powerful than a regular frag grenade

/obj/item/weapon/grenade/frag/high_yield
	name = "fragmentation bomb"
	desc = "Larger and heavier than a standard fragmentation grenade, this device is extremely dangerous. It cannot be thrown as far because of its weight."
	icon_state = "frag"

	w_class = ITEM_SIZE_NORMAL
	throw_speed = 3
	throw_range = 5 //heavy, can't be thrown as far

	fragment_types = list(/obj/item/projectile/bullet/pellet/fragment=1,/obj/item/projectile/bullet/pellet/fragment/strong=4)
	num_fragments = 200  //total number of fragments produced by the grenade
	explosion_size = 3

/obj/item/weapon/grenade/frag/high_yield/on_explosion(var/turf/O)
	if(explosion_size)
		explosion(O, -1, round(explosion_size/2), explosion_size, round(explosion_size/2), 0) //has a chance to blow a hole in the floor

/obj/item/weapon/grenade/frag/impact
	name = "impact grenade"
	desc = "A military fragmentation grenade, designed to explode in a deadly shower of fragments upon impact, while avoiding massive structural damage."
	icon_state = "impact"
	det_time = null

/obj/item/weapon/grenade/frag/impact/attack_self(mob/user as mob)
	if(!active)
		if(clown_check(user))
			to_chat(user, "<span class='warning'>You prime \the [name]! Throw when ready!</span>")
			activate(user)
			add_fingerprint(user)
			if(iscarbon(user))
				var/mob/living/carbon/C = user
				C.throw_mode_on()

/obj/item/weapon/grenade/frag/impact/activate(mob/user)
	if(active)
		return

	if(user)
		msg_admin_attack("[user.name] ([user.ckey]) primed \a [src] (<A HREF='?_src_=holder;adminplayerobservecoodjump=1;X=[user.x];Y=[user.y];Z=[user.z]'>JMP</a>)")

	icon_state = initial(icon_state) + "_active"
	active = 1
	playsound(loc, arm_sound, 75, 0, -3)

/obj/item/weapon/grenade/frag/impact/throw_impact(atom/hit_atom)
	if(active)
		detonate()
	else
		return

/// Stinger

/obj/item/projectile/bullet/pellet/rubber_ball
	name = "rubber balls"
	damage = 0.5
	agony = 25
	embed = 0
	sharp = 0
	check_armour = "melee"
	range_step = 2

	base_spread = 0
	spread_step = 20

	silenced = 1
	no_attack_log = 1
	muzzle_type = null

/obj/item/projectile/bullet/pellet/rubber_ball/strong
	damage = 1
	agony = 48

/obj/item/weapon/grenade/frag/stinger
	name = "stinger grenade"
	desc = "A specialized less than lethal grenade designed to subdue assailants with high velocity rubber balls."
	icon_state = "stinger"
	item_state = "grenade"
	fragment_types = list(/obj/item/projectile/bullet/pellet/rubber_ball=3,/obj/item/projectile/bullet/pellet/rubber_ball/strong=1)
	num_fragments = 200  //total number of fragments produced by the grenade
	explosion_size = 0
	throw_range = 7
	stinger = 1