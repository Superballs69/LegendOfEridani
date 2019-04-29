/obj/item/weapon/gun/projectile/grenade
	name = "M79 Thumper"
	desc = "A robust 40mm grenade launcher seen in service throughout humanity. Has a signature 'thump' noise when fired."
	icon = 'icons/obj/gun_2.dmi'
	icon_state = "thumper"
	item_state = "dshotgun"
	caliber = "40mm"
	force = 10
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	load_method = SINGLE_CASING|SPEEDLOADER
	handle_casings = CYCLE_CASINGS
	w_class = ITEM_SIZE_LARGE
	max_shells = 1
	ammo_type = /obj/item/ammo_casing/a40mm
	mag_insert_sound = 'sound/weapons/guns/interaction/rev_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/rev_magout.ogg'
	fire_sound = 'sound/weapons/gunshot/thumper.ogg'

/obj/item/weapon/gun/projectile/grenade/pistol
    name = "grenade pistol"
    icon_state = "grenadelauncher"
    item_state = "revolver"
    force = 5
    ammo_type = /obj/item/ammo_casing/a40mm/baton
    w_class = ITEM_SIZE_NORMAL
    accuracy = -0.8

/obj/item/weapon/gun/projectile/shotgun/pump/grenade
    name = "China Lake"
    desc = "A robust 40mm pump action shotgun with a 3 round tubular magazine. Uses 40mm rounds."
    icon = 'icons/obj/gun_2.dmi'
    icon_state = "chinalake"
    item_state = "shotgun"
    caliber = "40mm"
    ammo_type = /obj/item/ammo_casing/a40mm
    max_shells = 3
    fire_sound = 'sound/weapons/gunshot/thumper.ogg'

/obj/item/weapon/gun/projectile/revolver/grenade
    name = "Milkor Grenade Launcher"
    desc = "A robust 40mm revolving grenade launcher. Uses 40mm rounds."
    icon = 'icons/obj/gun_2.dmi'
    icon_state = "milkor"
    w_class = ITEM_SIZE_HUGE
    caliber = "40mm"
    force = 10
    ammo_type = /obj/item/ammo_casing/a40mm
    max_shells = 6
    fire_sound = 'sound/weapons/gunshot/thumper.ogg'

/obj/item/weapon/gun/projectile/revolver/grenade/proc/update_charge()
    var/ratio = (loaded.len + (chambered? 1 : 0)) / max_shells
    if(ratio < 0.33 && ratio != 0)
        ratio = 0.33
    ratio = round(ratio, 0.33) * 100
    overlays += "grenade_[ratio]"
