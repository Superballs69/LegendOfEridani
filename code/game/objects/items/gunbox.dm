/*
 * This code needs to be cleaned up eventually. -S.B.
 */

/obj/item/gunbox
	name = "gun box"
	desc = "A secure box containing a sidearm."
	icon = 'icons/obj/storage.dmi'
	icon_state = "gunbox"
	w_class = ITEM_SIZE_HUGE

/obj/item/gunbox/attack_self(mob/living/user)
	var/list/options = list()
	options["MK58 Custom"] = list(/obj/item/weapon/gun/projectile/sec/wood, /obj/item/ammo_magazine/m45m/rubber, /obj/item/ammo_magazine/m45m/rubber)
	options["FAC 1911"] = list(/obj/item/weapon/gun/projectile/colt/fac, /obj/item/ammo_magazine/m45m/rubber, /obj/item/ammo_magazine/m45m/rubber)
	options["AE6 Protector"] = list(/obj/item/weapon/gun/energy/gun/small)
	var/choice = input(user,"Please choose a weapon.") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn) // Spawn all the things, the gun and the ammo.
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun))
				to_chat(user, "You have chosen \the [AM]. Say hello to your new friend.")
		qdel(src)

/obj/item/gunbox/security
	name = "security gun box"
	desc = "A secure box containing a sidearm for TIGER and ISEC contractors."

/obj/item/gunbox/security/attack_self(mob/living/user)
	var/list/options = list()
	options["MK58 Custom"] = list(/obj/item/weapon/gun/projectile/sec/wood, /obj/item/ammo_magazine/m45m/rubber, /obj/item/ammo_magazine/m45m/rubber)
	options["FAC 1911"] = list(/obj/item/weapon/gun/projectile/colt/fac, /obj/item/ammo_magazine/m45m/rubber, /obj/item/ammo_magazine/m45m/rubber)
	options["AE6 Protector"] = list(/obj/item/weapon/gun/energy/gun/small)
	options["M30 Police Special"] = list(/obj/item/weapon/gun/projectile/revolver/m30/police, /obj/item/ammo_magazine/s44/rubber, /obj/item/ammo_magazine/s44/rubber)
	options["P226XR"] = list(/obj/item/weapon/gun/projectile/p226xr, /obj/item/ammo_magazine/mc9mmds/rubber, /obj/item/ammo_magazine/mc9mmds/rubber)
	options["M92X"] = list(/obj/item/weapon/gun/projectile/beretta, /obj/item/ammo_magazine/mc9mmds/rubber, /obj/item/ammo_magazine/mc9mmds/rubber)
	var/choice = input(user,"Please choose a weapon.") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn) // Spawn all the things, the gun and the ammo.
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun))
				to_chat(user, "You have chosen \the [AM]. Say hello to your new friend.")
		qdel(src)

/obj/item/gunbox/patrol
	name = "security patrol gun box"
	desc = "A secure box containing a sidearm for TIGER and ISEC contractors."

/obj/item/gunbox/patrol/attack_self(mob/living/user)
	var/list/options = list()
	options["Ward Takashi R870"] = list(/obj/item/weapon/gun/projectile/shotgun/pump, /obj/item/weapon/storage/box/beanbags, /obj/item/weapon/storage/box/beanbags)
	options["SRX-9 Hurricane"] = list(/obj/item/weapon/gun/projectile/automatic/srx9, /obj/item/ammo_magazine/m57/rubber, /obj/item/ammo_magazine/m57/rubber)
	options["AE10 Energy Carbine"] = list(/obj/item/weapon/gun/energy/gun)
	var/choice = input(user,"Please choose a weapon.") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn) // Spawn all the things, the gun and the ammo.
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun))
				to_chat(user, "You have chosen \the [AM]. Say hello to your new friend.")
		qdel(src)

/obj/item/gunbox/cos
	name = "chief of security's gun box"
	desc = "A secure box containing a sidearm for the Chief of Security."

/obj/item/gunbox/cos/attack_self(mob/living/user)
	var/list/options = list()
	options["KDI Inspector"] = list(/obj/item/weapon/gun/projectile/revolver/inspector, /obj/item/ammo_magazine/s357, /obj/item/ammo_magazine/s357)
	options["KDI 1911"] = list(/obj/item/weapon/gun/projectile/colt/kdi, /obj/item/ammo_magazine/m45m, /obj/item/ammo_magazine/m45m)
	options["AE10 Energy Carbine"] = list(/obj/item/weapon/gun/energy/gun)
	options["KDI Lamia MKI"] = list(/obj/item/weapon/gun/projectile/deagle/lamia, /obj/item/ammo_magazine/m50, /obj/item/ammo_magazine/m50)
	var/choice = input(user,"Please choose a weapon.") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn) // Spawn all the things, the gun and the ammo.
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun))
				to_chat(user, "You have chosen \the [AM]. Say hello to your new friend.")
		qdel(src)

/obj/item/gunbox/pathfinder
	name = "pathfinder's gun box"
	desc = "A secure box containing a sidearm for the Pathfinders."

/obj/item/gunbox/pathfinder/attack_self(mob/living/user)
	var/list/options = list()
	options["MK58"] = list(/obj/item/weapon/gun/projectile/sec, /obj/item/ammo_magazine/m45m, /obj/item/ammo_magazine/m45m)
	options["AE6 Protector"] = list(/obj/item/weapon/gun/energy/gun/small)
	var/choice = input(user,"Please choose a weapon.") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn) // Spawn all the things, the gun and the ammo.
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun))
				to_chat(user, "You have chosen \the [AM]. Say hello to your new friend.")
		qdel(src)

/obj/item/gunbox/pathfinder_commander
	name = "pathfinder commander's gun box"
	desc = "A secure box containing a sidearm for the Pathfinder Commander."

/obj/item/gunbox/pathfinder_commander/attack_self(mob/living/user)
	var/list/options = list()
	options["KDI Infiltrator"] = list(/obj/item/weapon/gun/projectile/colt/kdi/infiltrator, /obj/item/ammo_magazine/m45m, /obj/item/ammo_magazine/m45m, /obj/item/ammo_magazine/m45m)
	options["FAC M-30"] = list(/obj/item/weapon/gun/projectile/revolver/m30, /obj/item/ammo_magazine/s44, /obj/item/ammo_magazine/s44, /obj/item/ammo_magazine/s44)
	var/choice = input(user,"Please choose a weapon.") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn) // Spawn all the things, the gun and the ammo.
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun))
				to_chat(user, "You have chosen \the [AM]. Say hello to your new friend.")
		qdel(src)